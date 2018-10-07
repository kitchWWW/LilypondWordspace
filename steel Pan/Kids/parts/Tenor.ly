\header{
title =""
subtitle="Tenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Tenor = {
\set Score.markFormatter = #format-mark-box-alphabet

	\time 4/4
	\tempo 4 = 122
	\key e \minor

	\xNotesOn
	b4^"5!" r
	b4^"4!" r
	b4^"3!" r
	b4^"2!" r
	b4^"1!" r
	b2^\markup{\italic{"scream"}}
	\xNotesOff

	\mark \default
	g4 a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1

	\mark \default
	g4 a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1
	g4 a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b a g a8 g ~ g e4 g8~g1:32 r1

	\mark \default
	r2 b8 b b g
	r2 b8 b b b d2:
	b16 a8 g16 r4
	r1
	r4 b8 b b b b4 g4 r4 r2
	r4 b8 b b b b4 d,4 r4 r2
	
	\mark \default
	r1
	r4 r8 b'8 b b b4 d2: b16 a8 g16 r4
	r1
	r8 b b b b b b4 b8 e, r4 r2
	r8 b' b b b b b b b4 d, r2
	

	r4 r8 b'8 b b b4
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r1 
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r8 g d'4: b16 a8 g16 r4
	r1

	\mark \default
	\bar "||"





r2 b8 b b g
	r2 b8 b b b d2:
	b16 a8 g16 r4
	r1
	r4 b8 b b b b4 g4 r4 r2
	r4 b8 b b b b4 d,4 r4 r2
	
	\mark \default
	r1
	r4 r8 b'8 b b b4 d2: b16 a8 g16 r4
	r1
	r8 b b b b b b4 b8 e, r4 r2
	r8 b' b b b b b b b4 d, r2
	

	r4 r8 b'8 b b b4
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r1 
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r8 g d'4: b16 a8 g16 r4
	r1

	\mark \default
	\bar "||"










<<
    {
	e16^\markup{\italic{solo}} g c d e d c b 
	a b a g fis g fis e
	fis e d e fis d' c b
	a a32 b a16 g fis e d a'
	g16 e g b e d c b a b a g fis g fis e
	fis g a b fis g a c
	fis, g a cis
	fis, g a d
	b c d c b c b a g a g fis e fis e d 
	c e fis g a b c d e d c b a g fis e
	g b a c b d c b a b a g fis g fis e
	d'8 d16 d d8 d d2:
}
    
\new Staff {
	\key e \minor
	c,4^\markup{\italic{"'erybody else"}} c c c	
	d d d d
	e e e e
	fis fis fis fis
	g g g g
	a a a a 
	c c c c
	fis, fis fis2

 }
>>

	\mark \default
%	R1*16
%	\mark \default


	r4 r8 b'8 b b b4
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r1 
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r8 g d'4: b16 a8 g16 r4
	r1
	
	r4 r8 b8 b b b4
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r1 
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r8 g d'4: b16 a8 g16 r4
	r1

	
}


