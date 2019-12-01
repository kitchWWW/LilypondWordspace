\header{
title =""
subtitle="Guitar"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Guitar = {
\set Score.markFormatter = #format-mark-box-alphabet
\override MultiMeasureRest.expand-limit = #1
\compressFullBarRests

	\time 4/4
	\tempo 4 = 150
	\key d \major
	\clef bass
\mark \default

	R1 * 4
\mark \default

	d'4\mf r2.
	cis4 r2.
	g4 r2.
	g4 r2.
	
	d'4\f d d d
	cis cis cis cis 
	g g g g
	g g g g

	d8 fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g fis d' fis, e e' d fis,
	g fis d' fis, e e' d fis,

	d8 fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g fis d' fis, e e' d fis,
	g fis d' fis, e e' d fis,

\mark \markup { \musicglyph #"scripts.segno" }

	<d' fis,>2 <d fis,>2
	<d fis,>4 <d fis,>4 <d fis,>4 <d fis,>
	<cis e,>2 <cis e,>2 
	<cis e,>2 <cis e,>2 
	<d fis,>1:32 ~ <d fis,>:
	<d g,>1:32 ~ <d g,>:
	
	\mark \default
	r4 <b d> 4 <b d> <b d>
	<b d>2 <b d>
	<a cis>4 <a cis> <a cis>2:~ <a cis>2:	
	r4 <a cis>4
	<g b>4.: <g b>8 ~ <g b>4: <g b>4:~
	<g b>8 <g b>2..:~
	<g b>1: ~ <g b>1:
	
\mark \default
	<d fis>8\mf <d fis>4 <d fis>4 <d fis>4 <d fis>8
	<d g>8 <d g>4 <d g>4 <d g>4 <d g>8
	<d fis>8 <d fis>4 <d fis>4 <d fis>4 <d fis>8
	<a' g>8 <a g>4 <a g>4 <a g>4 <a g>8
	
	<d, fis>8 <d fis>4 <d fis>4 <d fis>4 <d fis>8
	<d g>8 <d g>4 <d g>4 <d g>4 <d g>8
	<d fis>8 <d fis>4 <d fis>4 <d fis>4 <d fis>8
	<a' g>8 <a g>4 <a g>4 <a g>4 <a g>8
	
	<d, fis>8 <d fis>4 <d fis>4 <d fis>4 <d fis>8
	<d g>8 <d g>4 <d g>4 <d g>4 <d g>8
	<d fis>8 <d fis>4 <d fis>4 <d fis>4 <d fis>8
	<a' g>8 <a g>4 <a g>4 <a g>4 <a g>8

	<d, fis>8 <d fis>4 <d fis>4 <d fis>4 <d fis>8
	<d g>8 <d g>4 <d g>4 <d g>4 <d g>8
	r8 a'8\f fis'4 e d
	e2 d

\bar "||"
\mark \markup { "To Coda" }	

	fis8\mp d fis d fis d fis d
	g d g d g d g d
	a' d, a' d, a' d, a' d,
	e a, d a cis a d a

	fis'8 d fis d fis d fis d
	g d g d g d g d
	a' d, a' d, a' d, a' d,
	e a, d a cis a d a


\mark \default

	d4 r2.
	cis4 r2.
	g4 r2.
	g4 r2.
	
	d'4\mf d d d
	cis cis cis cis 
	g4 r2.	
	r8 d8\f d e d cis d4


	d8 fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g fis d' fis, e e' d fis,
	g fis d' fis, e e' d fis,

	d8 fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g fis d' fis, e e' d fis,
	g fis d' fis, e e' d^"D.S. al Coda" fis,


\mark \markup { \musicglyph #"scripts.coda" }
\bar "||"

	fis'8\mf d fis d g d a' d,
	g d a' d, g d fis d
	fis d fis d g d fis d 
	e a, d a cis a d a

	fis'8 d fis d g d a' d,
	g d a' d, g d fis d
	fis d fis d g d fis d 
	e a, d a cis a d a

\mark \default


	fis'8\mp d fis d g d a' d,
	g d a' d, g d fis d
	fis d fis d g d fis d 
	e a, d a cis a d a

	fis'8\mf d fis d g d a' d,
	g d a' d, g d fis d
	fis d fis d g d fis d 
	e a, d a cis a d a

	fis'8\f d fis d g d a' d,
	g d a' d, g d fis d
	fis d fis d g d fis d 
	e a, d a cis a d a

	fis'8 d fis d g d a' d,
	g d a' d, g d fis d
	fis d fis d g d fis d 
	<a d>4 <a d> <a cis>2\fermata

\bar "|."

}


