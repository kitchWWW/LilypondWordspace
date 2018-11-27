\header{
title =""
subtitle="Six Bass"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

BassSix = {
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
	r1
\break
	r1^\markup{\italic{"indiscriminate playground noises"}}
	r1
	r1
	r1
	r1
	
	\mark \default
\bar ".|:"
	e,2\mf e
	c c
	g' g
	fis fis
	e2 e2
	c c
	g' g
	fis fis
\bar ":|."
	
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
	e2\mp e2
	c c
	g' g
	fis fis
	e2 e2
	c c
	g' g
	fis fis

	e2\mf e2
	c c
	g' g
	fis fis
	e2 e2
	c c
	g' g
	fis fis
\break
	\mark \default

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
	e2\mf e2
	c c
	g' g
	fis fis
	e2 e2
	c c
	g' g
	fis fis

	g4\f a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1
\break
	\mark \default


	c,4\p c c c	
	d d d d
	e e e e
	fis fis fis fis
	g\< g g g
	a a a a 
	c c c c
	fis,8\f fis16 fis fis8 fis fis2:
\break
	\mark \default
	fis fis
	fis fis
	g4\mp a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4\f a b d e fis8 e ~e d4 b8~b1:
	<<{
	s1 s1\p\< s4\> s4 s s\!
}\\{r2.. fis8~ fis1:32
	e:
}>>
	
\bar "|."

}

