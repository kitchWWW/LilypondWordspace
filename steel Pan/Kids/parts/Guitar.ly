\header{
title =""
subtitle="Guitar"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Guitar = {
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
	r1^\markup{\italic{"indiscriminate playground noises"}}
	r1
	r1
	r1
	r1
	
	\mark \default
\bar ".|:"
	e4\mf e r8 g4 g8~g8 e4 e8 g e a b ~b2.: r8 fis ~ fis g fis4 a8 g fis d
	e4 e r8 g4 g8~g8 e4 e8 g e a b ~b1:32 c8 b a g ~ g a g fis  
\bar ":|."
\break
	\mark \default
	<e b'>1:32\p
	<e c'>:
	<g b>:
	<fis a>:
	<e b'>:32
	<e c'>:
	<g b>:
	<fis a>:\<
\break
	\mark \default
	e4\mp e r8 g4 g8~g8 e4 e8 g e a b ~b2.: r8 fis ~ fis g fis4 a8 g fis d
	e4 e r8 g4 g8~g8 e4 e8 g e a g ~g1: c8 b a g ~ g a g fis 
	g4\mf a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1
\break
	\mark \default

	\pageBreak
	<e, b'>1:32\p
	<e c'>:
	<g b>:
	<fis a>:
	<e b'>:32
	<e c'>:
	<g b>:
	<fis a>:
	

	\mark \default

	g4\mf a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1

	e,1:\mp
	c:
	g':
	fis:
	e4\f e r8 g4 g8~g8 e4 e8 g e a g ~g1:32 c8 b a g ~ g a g fis  
	
	\mark \default

	c4\p c c c	
	d d d d
	e e e e
	fis fis fis fis
	g\< g g g
	a a a a 
	c c c c
	fis,8\f fis16 fis fis8 fis fis2:
\break
	\mark \default
R1*2
	e4\mp e r8 g4 g8~g8 e4 e8 g e a b d2: b16 a8 g16
		 r8 fis ~ fis g fis4 a8 g fis d
	e4\f e r8 g4 g8~g8 e4 e8 g e a g ~g1: 
	<<{
	s1\> s1\p\< s4\> s4 s4 s4\!
	}\\{
	c8 b a g ~ g a g <fis d>~
	<fis d>1:32
	<g e>1:
}>>
\bar "|."

}
