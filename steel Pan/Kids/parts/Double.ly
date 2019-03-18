\header{
title =""
subtitle="DoubleTenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Double = {
\set Score.markFormatter = #format-mark-box-alphabet

	\time 4/4
	\tempo 4 = 122
	\key e \minor

	\xNotesOn
r1^"(shout!)"
	b'4^"5!" r
	b4^"4!" r
	b4^"3!" r
	b4^"2!" r
	b4^"1!" r
	b2^\markup{\italic{"scream"}}
	\xNotesOff
\break
	\mark \default
	g4\mf a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1
\break
	\mark \default
\bar ".|:"
	e,4 e r8 g4 g8~g8 e4 e8 g e a b ~b2.:32 r8 fis ~ fis g fis4 a8 g fis d
	e4 e r8 g4 g8~g8 e4 e8 g e a b ~b1: c8 b a g ~ g a g fis  
\bar ":|."
\break
	\mark \default
	
	<e g>1:32\p
	<e g>:
	<d g>:
	<d fis>:
	<e g>1:
	<e g>:
	<d g>:
	<d fis>:\<
	\break
	\mark \default
	e4\mp e r8 g4 g8~g8 e4 e8 g e a b ~b2.:32 r8 fis ~ fis g fis4 a8 g fis d
	e4 e r8 g4 g8~g8 e4 e8 g e a b ~b1: c8 b a g ~ g a g fis  
	e4\mf e r8 g4 g8~g8 e4 e8 g e a b ~b2.: r8 fis ~ fis g fis4 a8 g fis d
	e4 e r8 g4 g8~g8 e4 e8 g e a g ~g1: c8 b a g ~ g a g fis 
\break	
	\mark \default

	r4. <e g>8\mf <e g>4 r
	r4. <e g>8 <e g>4 r
	r4. <d g>8 <d g>4 r
	r4. <d fis>8 <d fis>4 r
	r4. <e g>8 <e g>4 r
	r4. <e g>8 <e g>4 r
	r4. <d g>8 <d g>4 r
	r4. <d fis>8 <d fis>4 r


	\mark \default
	e4\mf e r8 g4 g8~g8 e4 e8 g e a b ~b2.:32 r8 fis ~ fis g fis4 a8 g fis d
	e4 e r8 g4 g8~g8 e4 e8 g e a b ~b1: c8\f b a g ~ g a g fis  
	<e b>1:\mp
	<e c>1:
	<d b>1:
	<d a>1:
	r4 r8 b\mf b b b b d2: b16 a8 g16 r4
	r8 g d'4: b16 a8 g16 r4
	r1
	
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
	c8\> b a g ~ g a g
	<fis a,>8\p
	~<fis a,>1:32
	<g b,>1:
}\\{
	s1 s1\< s4\> s4 s4 s4\!
}>>
\bar "|."
}

