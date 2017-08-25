\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"Calling Song"}}
	subtitle = "Solo Guitar"
	subsubtitle = \markup {\bold{\italic "Native American Drum Songs"}}
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c{
	\arpeggioArrowUp
	\numericTimeSignature
	\key g \major
	\time 2/4
	\clef "treble_8"
	\tempo 4 = 90
	g16-> ees' (d->) b (a->) g b (a->)
	g16 ees' (d) b (a) g b (a)
	fis d'8 b16 (a) fis d'8
	fis,16 d'8 b16 (a) fis ees'8
	g,16 ees' (d) b (a) g b (a)
	g16 ees' (d) b (a) g b (a)
	fis d'8 b16 (a) fis e'8
	fis,16 d'8 b16 (a) fis f'8
	e,16 d' (e) g (a) a, b'8
	e,,16 dis' (e) g (a) a, d'8
\time 1/4
	<e,, e''>4
\time 2/4
	<c''' g a,,>16 [<b g> <a g>] <b fis d,> [<a fis> <g fis>] r8
	
	e,,16 g'' d, e' fis,, d'' ees, b'
	g, c' e, b' a, d' fis, e'
	e,, g'' d, e' fis,, d'' ees, b'
	g, c' e, b' a, d' d, fis'
	e,, e'' d, d' fis,, e'' e, d'
	b, a'' a, g' a,, a'' g, fis'
	e,, e'' d, d' fis,, e'' e, d'
\mark \markup { \musicglyph #"scripts.coda" }
	g,, e'' fis, d' ~d e f fis

	e,, <b' ees g b g'>8\arpeggio b16 (a) e <b' ees g b g'>8\arpeggio
	e,16 <b' d g b g'>8\arpeggio b16 (a) g b (a ~ )
	<a g'>16 g''(e) d (b) g c (b) 
	g16 g'(e) d (b) g c (b)
	d,16 d'8 a16 (g) d d'8
	d,16 d'8 a16 (g) d e'8
	g,16 g'(e) d (b) g c (b) 
	g16 g'(e) d (b) g c (b)
	d,16 d'8 a16 (g) d e'8
	d,16 d'8 a16 (g) d fis'8

	g,,16 g'' e, e' c, d' g, c b, d' d, e' a,, g'' d, fis'
	g,,16 g'' e, e' c, d' g, c b, d' d, e' a,, g'' d, fis'
	e,, e'' d, d' fis,, e'' e, d'
	b, a'' a, g' a,, a'' g, fis'
	e,, e'' d, d' fis,, e'' e, d'
	g,, e'' g, d' ~d e f fis
	e,, <b' ees g b g'>8\arpeggio b16 (a) e <b' ees g b g'>8\arpeggio
	e,16 <b' d g b g'>8\arpeggio b16 (a) g^\markup { \center-column { "D.S. al Coda" \line { \musicglyph #"scripts.coda" \musicglyph #"scripts.tenuto" \musicglyph #"scripts.coda"} } }
 b a
	\bar ":|." \break
	\mark \markup { \musicglyph #"scripts.coda"}
	
	g e'' fis, d' ~d b c cis
	c,16 <d a' d e>8\arpeggio e16 (d) c <d a' d e>8\arpeggio
	fis,16 <a e' a d e>8\arpeggio  e'16 (d) fis, <a d a' d e>8\arpeggio
	g16 <b d g b g'>8\arpeggio b16 (a) g b (a) r4 g8 r
	\bar "|."
	
} 
}


