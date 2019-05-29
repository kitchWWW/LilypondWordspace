\header{
title =""
subtitle="Four Bass"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

BassFour = {
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
	R1 * 8
	d1:32\f
	cis1:
	g:
	g:
	d'4 d d d
	cis cis cis cis 
	g g g g
	g g g g

\mark \markup { \musicglyph #"scripts.segno" }
	b2 b
	r4 d4 cis b
	fis'2 b,
	a a
	g1:32
	e'4. d4. cis4
	g4 r2.
	b4. cis4. d4


\mark \default
	r4 b'4 b b
	b2 b
	a4 a a2:32~	
	a2: r4 a4
	g4.: g8 ~ g4: g4:~
	g8 g2..:~
	g1: ~ g1:
	
\mark \default
	d4 d d d
	g, g g g
	b b b b
	a a a a

	d4 d d d
	g, g g g
	b b b b
	a a a a

	d4 d d d
	g, g g g
	b b b b
	a a a a

	d4 d d d
	g, g g g
	r8 a8\f fis'4 e d
	e2 d


\mark \markup { \musicglyph #"scripts.coda" }

	d1:\mp g,1: b: a:
	d1: g,1: b: a:

\mark \default
	d1:32
	cis1:
	g:
	g:

	d'1:32\mf
	cis1:
	g4 r2.	
	r8 d'8\f d e d cis d4

	d4 d d d
	cis cis cis cis 
	g' g g g
	g g g g
	d4 d d d
	cis cis cis cis 
	g' g g g
	g g g^"D.S. al Coda" g


\mark \markup { \musicglyph #"scripts.coda" }
\bar "||"

	d1:\mp g,1: b: a:
	d1: g,1: b: a:

\mark \default

	d4 d d d
	g, g g g
	b b b b
	a a a a 

	d4\mf d d d
	g, g g g
	b b b b
	a a a a 

	d4\f d d d
	g, g g g
	b b b b
	a a a a 

	d4 d d d
	g, g g g
	b b b b
	a a a2\fermata

\bar "|."

}

