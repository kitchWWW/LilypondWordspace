#!/usr/bin/env python3
"""
Collage with graph connections on an 11x8.5" (300 dpi) canvas.

Dependencies:
  pip install pillow networkx numpy

Usage:
  python collage_graph.py --max-nodes 30 --seed 42 --out collage.png
"""

import argparse, glob, math, os, random, time
from datetime import datetime
from PIL import Image, ImageDraw
import numpy as np
import networkx as nx

# === GLOBAL SETTINGS ===
IMAGE_SCALE =3.0  # increase this (e.g., 1.5 or 2.0) to make all images larger

def pick_images(pattern="all/cat*/*.jpg", max_nodes=30, seed=None):
    if seed is not None:
        random.seed(seed)
    paths = sorted(glob.glob(pattern))
    if not paths:
        raise SystemExit(f"No images found for pattern: {pattern}")
    if len(paths) > max_nodes:
        paths = random.sample(paths, max_nodes)
    return paths

def rects_intersect(a, b):
    # a, b are (x0, y0, x1, y1)
    return not (a[2] <= b[0] or b[2] <= a[0] or a[3] <= b[1] or b[3] <= a[1])

def compute_bboxes(positions, images, padding=0):
    """Return list of bboxes (x0,y0,x1,y1) for each image centered at positions[i]."""
    boxes = []
    for i, im in enumerate(images):
        cx, cy = positions[i]
        w, h = im.size
        x0 = cx - w // 2 - padding
        y0 = cy - h // 2 - padding
        x1 = cx + (w - w // 2) + padding
        y1 = cy + (h - h // 2) + padding
        boxes.append((x0, y0, x1, y1))
    return boxes

def has_overlaps(positions, images, padding=0):
    boxes = compute_bboxes(positions, images, padding=padding)
    # O(n^2) is fine for tens of nodes
    n = len(boxes)
    for i in range(n):
        for j in range(i+1, n):
            if rects_intersect(boxes[i], boxes[j]):
                return True
    return False

def load_images_rgba(paths):
    out = []
    for p in paths:
        im = Image.open(p).convert("RGBA")
        out.append(im)
    return out

def fit_images(images_rgba, max_side):
    thumbs = []
    for im in images_rgba:
        w, h = im.size
        scale = min(max_side / w, max_side / h, 1.0)
        if scale < 1.0:
            im2 = im.resize((int(w*scale), int(h*scale)), Image.LANCZOS)
        else:
            im2 = im.copy()
        thumbs.append(im2)
    return thumbs


def build_graph(n, extra_edges=0, seed=None):
    """Create a connected random graph: start with a random tree, then add extra edges."""
    import networkx as nx
    rng = random.Random(seed)

    # Create a random spanning tree manually
    G = nx.Graph()
    G.add_nodes_from(range(n))
    for i in range(1, n):
        j = rng.randrange(0, i)
        G.add_edge(i, j)

    # Add a few random extra edges if desired
    possible = [(i, j) for i in range(n) for j in range(i + 1, n) if not G.has_edge(i, j)]
    rng.shuffle(possible)
    for (u, v) in possible[:extra_edges]:
        G.add_edge(u, v)

    return G


def layout_positions(G, width, height, margin=120, seed=None):
    # Spring layout in [0,1], then scale to canvas with margins.
    pos01 = nx.spring_layout(G, seed=seed, dim=2)  # dict: node -> np.array([x,y])
    xs = np.array([p[0] for p in pos01.values()])
    ys = np.array([p[1] for p in pos01.values()])
    # Normalize explicitly (spring_layout is already ~0..1-ish; normalize anyway).
    xs = (xs - xs.min()) / (np.ptp(xs) + 1e-9)
    ys = (ys - ys.min()) / (np.ptp(ys) + 1e-9)


    W = width - 2*margin
    H = height - 2*margin
    pos_px = {}
    for i, (x, y) in enumerate(zip(xs, ys)):
        pos_px[i] = (int(margin + x * W), int(margin + y * H))
    return pos_px

def thumb_size_guess(n, width, height, fill_factor=0.7, min_side=120, max_side=2480):
    # Roughly share canvas area across n images, then clamp.
    area = width * height * fill_factor / max(n,1)
    side = int(math.sqrt(area) * 0.6)  # 0.6 to keep things airy
    return max(min_side, min(max_side, side))

def load_and_fit(img_path, max_side):
    im = Image.open(img_path).convert("RGBA")
    w, h = im.size
    scale = min(max_side / w, max_side / h, 1.0)
    if scale < 1.0:
        im = im.resize((int(w*scale), int(h*scale)), Image.LANCZOS)
    return im

def draw_edges(draw, positions, edges, line_width=8, color=(50,50,50,255)):
    for u, v in edges:
        (x1, y1) = positions[u]
        (x2, y2) = positions[v]
        draw.line((x1, y1, x2, y2), fill=color, width=line_width)

def paste_images(canvas, positions, images, shadow=True):
    for i, im in enumerate(images):
        cx, cy = positions[i]
        w, h = im.size
        x0 = cx - w // 2
        y0 = cy - h // 2

        if shadow:
            # Simple soft shadow
            sh = Image.new("RGBA", (w+12, h+12), (0,0,0,0))
            sh_draw = Image.new("RGBA", (w, h), (0,0,0,0))
            # Put a translucent black rect as "shadow"
            shp = Image.new("RGBA", (w, h), (0,0,0,60))
            sh.paste(shp, (6,6))
            canvas.alpha_composite(sh, (x0-6, y0-6))

        canvas.alpha_composite(im, (x0, y0))

import pathlib, glob, random

def group_by_cat(pattern="all/cat*/*.jpg"):
    paths = sorted(glob.glob(pattern))
    if not paths:
        raise SystemExit(f"No images found for pattern: {pattern}")

    groups = {}
    for p in paths:
        folder = pathlib.Path(p).parent.name  # e.g., 'cat3'
        if folder.startswith("cat"):
            groups.setdefault(folder, []).append(p)
    if not groups:
        raise SystemExit(f"No 'cat*' subfolders found under pattern: {pattern}")
    return groups

def split_two_players(groups, seed=None, allow_reuse=False):
    rng = random.Random(seed)
    cats = sorted(groups.keys())

    p1, p2 = [], []
    offenders = []
    for cat in cats:
        items = groups[cat][:]
        if len(items) < 2 and not allow_reuse:
            offenders.append((cat, len(items)))
            continue
        rng.shuffle(items)
        if len(items) >= 2:
            p1.append(items[0])
            p2.append(items[1])
        else:
            p1.append(items[0])
            p2.append(items[0])

    if offenders:
        msg = "Folders with fewer than 2 images:\n" + "\n".join(
            f"  - {cat} ({count} image)" for cat, count in offenders
        )
        raise ValueError(msg + "\nTip: add more images or run with --allow-reuse")
    return p1, p2
def compose_collage(
    image_paths,
    outname,
    dpi=300,
    graph_seed=1,
    layout_seed=2,
    assign_seed=3,
    extra_edges=0,
    bg="white",
    line_width=3,
    max_attempts=200,
    padding=12,                # pixel padding around each thumb for overlap test
    shrink_factor=0.98         # gently shrink thumbs each attempt (e.g., 2% smaller per retry)
):
    WIDTH  = 11 * dpi
    HEIGHT = int(8.5 * dpi)

    n = len(image_paths)
    if n == 0:
        raise ValueError("compose_collage received 0 images")

    # 1) Graph
    G = build_graph(n, extra_edges=extra_edges, seed=graph_seed)

    # 2) Image order (assignment)
    rng = random.Random(assign_seed)
    order = list(range(n))
    rng.shuffle(order)
    ordered_paths = [image_paths[i] for i in order]

    # Preload originals once (RGBA), then we can refit per attempt
    originals = load_images_rgba(ordered_paths)

    # Base thumb size guess
    base_tsize = thumb_size_guess(n, WIDTH, HEIGHT, fill_factor=0.7 * IMAGE_SCALE)

    success = False
    chosen_pos = None
    chosen_thumbs = None
    chosen_attempt = None

    # Try multiple layouts / sizes until no overlaps
    for attempt in range(1, max_attempts + 1):
        # Gradually shrink to help tough packings
        tsize = int(base_tsize * (shrink_factor ** (attempt - 1)))
        thumbs = fit_images(originals, tsize)

        # Nudge the layout seed per attempt so spring_layout changes
        this_layout_seed = layout_seed + attempt * 7919
        pos = layout_positions(G, WIDTH, HEIGHT, margin=620, seed=this_layout_seed)

        # Check overlaps before drawing
        if not has_overlaps(pos, thumbs, padding=padding):
            success = True
            chosen_pos = pos
            chosen_thumbs = thumbs
            chosen_attempt = attempt
            break

    # Proceed with the best we found (even if overlapping after all attempts)
    if not success:
        # Last attempt’s values
        chosen_pos = pos
        chosen_thumbs = thumbs
        chosen_attempt = max_attempts
        print(f"[WARN] Could not find a non-overlapping layout in {max_attempts} attempts. Saving best effort.")

    # Draw final canvas
    canvas = Image.new("RGBA", (WIDTH, HEIGHT), bg)
    draw = ImageDraw.Draw(canvas, "RGBA")
    draw_edges(draw, chosen_pos, G.edges(), line_width=line_width, color=(50,50,50,255))
    paste_images(canvas, chosen_pos, chosen_thumbs, shadow=True)

    canvas.convert("RGB").save(outname, dpi=(dpi, dpi))
    if success:
        print(f"[OK] Saved {outname} (no overlaps, attempt {chosen_attempt}, tsize={chosen_thumbs[0].size})")
    else:
        print(f"[OK*] Saved {outname} (may contain overlaps; attempt {chosen_attempt}, tsize={chosen_thumbs[0].size})")
    return outname






def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--pattern", default="all/cat*/*.jpg")
    parser.add_argument("--player1-out", default="player1.png")
    parser.add_argument("--player2-out", default="player2.png")
    parser.add_argument("--seed", type=int, default=random.randint(0,10000000))
    parser.add_argument("--extra-edges", type=int, default=4)
    parser.add_argument("--bg", default="white")
    parser.add_argument("--line-width", type=int, default=8)
    parser.add_argument("--dpi", type=int, default=400)
    parser.add_argument("--allow-reuse", action="store_true")
    args = parser.parse_args()

    groups = group_by_cat(args.pattern)
    try:
        p1_paths, p2_paths = split_two_players(groups, seed=args.seed, allow_reuse=args.allow_reuse)
    except ValueError as e:
        raise SystemExit(str(e))

    # Derive distinct seeds so graphs, layouts, and assignments all differ
    base = args.seed
    seeds_p1 = dict(graph_seed=base + 11, layout_seed=base + 23, assign_seed=base + 37)
    seeds_p2 = dict(graph_seed=base + 101, layout_seed=base + 211, assign_seed=base + 307)

    out1 = compose_collage(
        p1_paths, outname=args.player1_out, dpi=args.dpi,
        extra_edges=args.extra_edges, bg=args.bg, line_width=args.line_width,
        **seeds_p1
    )
    out2 = compose_collage(
        p2_paths, outname=args.player2_out, dpi=args.dpi,
        extra_edges=args.extra_edges, bg=args.bg, line_width=args.line_width,
        **seeds_p2
    )

    print(f"Saved player1: {out1}  ({len(p1_paths)} images, one per cat folder)")
    print(f"Saved player2: {out2}  ({len(p2_paths)} images, one per cat folder)")

    import os
    os.system("open *.png")





if __name__ == "__main__":
    main()
