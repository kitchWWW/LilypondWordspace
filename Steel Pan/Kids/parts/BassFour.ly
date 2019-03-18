\header{
title =""
subtitle="Four Bass"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

BassFour = {
\set Score.markFormatter = #format-mark-box-alphabet

	\time 4/4
	\tempo 4 = 122
	\key e \minor
	\clef bass
	\xNotesOn
r1^"(shout!)"
	d4^"5!" r
	d4^"4!" r
	d4^"3!" r
	d4^"2!" r
	d4^"1!" r
	d2^\markup{\italic{"scream"}}
	\xNotesOff
	\mark \default
	r1
	r1
\break
	r1
	r1
	r1^\markup{\italic{"indiscriminate playground noises"}}
	r1
	r1
	r1
	\mark \default
\bar ".|:"
	e4\mf e e e
	c c c c
	g' g g g
	fis fis fis fis
	e e e e
	c c c c
	g' g g g
	fis fis fis fis
\bar ":|."

\break
	\mark \default
	e1:32\p
	c1:
	g':
	fis:
	e1:32
	c1:
	g':
	fis:\<	
\break
	\mark \default
	e4\mp e e e
	c c c c
	g' g g g
	fis fis fis fis
	e e e e
	c c c c
	g' g g g
	fis fis fis fis

	e\mf e e e
	c c c c
	g' g g g
	fis fis fis fis
	e e e e
	c c c c
	g' g g g
	fis fis fis fis

	\mark \default
	\break


	e1\f
	c
	g'
	fis
	e1
	c
	g'
	fis
\break			
	\mark \default
	e4\mf e e e
	c c c c
	g' g g g
	fis fis fis fis
	e e e e
	c c c c
	g' g g g
	fis fis fis fis

	g,4\f a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1

	\mark \default
\break
	c4\p c c c	
	d d d d
	e e e e
	fis fis fis fis
	g\< g g g
	a a a a 
	c c c c
	fis,8\f fis16 fis fis8 fis fis2:

	\mark \default
\break
	fis4 fis fis fis
	fis fis fis2
	g,4\mp a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4\f a b d e fis8 e ~e d4 b8~b1:
	<<{
	s1 s1\p\< s4\> s4 s s\!
}\\{r2.. fis'8~ fis1:32
	e:
}>>

\bar "|."

}

