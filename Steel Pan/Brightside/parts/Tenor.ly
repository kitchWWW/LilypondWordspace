\header{
title =""
subtitle="Tenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Tenor = {
\set Score.markFormatter = #format-mark-box-alphabet
\override MultiMeasureRest.expand-limit = #1
\compressFullBarRests

	\time 4/4
	\tempo 4 = 150
	\key d \major
\mark \default
	R1 * 4
\mark \default
	r4\mf d8 d d d cis d~
	d8 d d d d d e4
	d4 d8 d d d cis d~
	d8 d d d d d d4

	r4 d8 d d d cis d~
	d8 d d d d d e4
	d4 d8 d d d cis d~
	d8 d d d d d d4

	r4 d8 d d d cis d~
	d8 d d d d d e4
	d4 d8 d d d cis d~
	d8 d d d d d d4

	r4 d8\f d d d cis d~
	d8 d d d d d e4
	d4 d8 d d d cis d~
	d8 d d d d d d4
\mark \markup { \musicglyph #"scripts.segno" }

	d2 d
	d4 d d cis
	cis2 d
	d d
	d1:32 ~ d: ~ d: ~ d:

\mark \default


	r4 fis fis fis  
	d2 e
	e4 d fis2:32
	~fis2:32 r4 a,4
	e'4.: d8:~d4: e4:~
	e8 d2..:32 ~ d1: ~ d1:

\mark \default

	cis4.\mf d8 d2
	cis4 d cis d
	cis4. d8 d2
	cis4 d cis d
	cis4. d8 d2
	cis4 d cis d
	cis4. d8 d2
	cis4 d d e

	g4. fis8 fis2
	g4 fis d a
	e'4. d8 d2
	d4 d d e
	g4.: fis8:~fis4: fis4:~
	fis2.: r4
	r8 a,8\f fis'4 e d
	e2 d

\mark \markup { \musicglyph #"scripts.coda" }

	fis1:\f^"You are still the melody" a: d,: d:
	fis1: a: ~ a4: g2: fis4: ~ fis: e2: d4

\mark \default

	r4\mf d8 d d d cis d~
	d8 d d d d d e4
	d4 d8 d d d cis d~
	d8 d d d d d d4

	r4 d8 d d d cis d~
	d8 d d d d d e4
	d4 d8\f d d d cis d
	R1

	r4 d8 d d d cis d~
	d8 d d d d d e4
	d4 d8 d d d cis d~
	d8 d d d d d d4

	r4 d8 d d d cis d~
	d8 d d d d d e4
	d4 d8 d d d cis d~
	d8 d d d d d^"D.S. al Coda" d4


\mark \markup { \musicglyph #"scripts.coda" }
\bar "||"

	<d, fis>1:32\mp^"Not the melody any more, sorry"
	<d g>:
	<d fis>:
	<e cis>:
	<d fis>1:32
	<d g>:
	<d fis>:
	<e cis>2.: d'4\mp

\mark \default

	cis4.: d8~d2: ~ d1: ~d1: ~d2: r4 d\mf
	cis4.: d8~d2: ~ d1: ~d1: ~d2: r4 a'\f

	g4.: fis8 ~ fis2: ~ fis2.: e8 d ~ d1:
	~d2: r4 g4
	g4.: fis8 ~ fis2: ~ fis2.: e8 d ~ d1:
	e,4 d cis2\fermata

\bar "|."

}



