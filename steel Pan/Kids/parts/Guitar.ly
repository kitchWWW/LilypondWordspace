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
	d4^"5!" r
	d4^"4!" r
	d4^"3!" r
	d4^"2!" r
	d4^"1!" r
	d2^\markup{\italic{"scream"}}
	\xNotesOff
	\mark \default
	r1
	r1^\markup{\italic{"indiscriminate playground noises"}}
	R1*6
	\mark \default
	e4 e r8 g4 g8~g8 e4 e8 g e a b ~b2.: r8 fis ~ fis g fis4 a8 g fis d
	e4 e r8 g4 g8~g8 e4 e8 g e a b ~b1:32 c8 b a g ~ g a g fis  
	e4 e r8 g4 g8~g8 e4 e8 g e a b ~b2.: r8 fis ~ fis g fis4 a8 g fis d
	e4 e r8 g4 g8~g8 e4 e8 g e a g ~g1:32 c8 b a g ~ g a g fis  

	\mark \default
	R1*8
	\mark \default

	e4 e r8 g4 g8~g8 e4 e8 g e a b ~b2.: r8 fis ~ fis g fis4 a8 g fis d
	e4 e r8 g4 g8~g8 e4 e8 g e a g ~g1: c8 b a g ~ g a g fis 
	g4 a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1

	\mark \default
	\bar "||"

	
	<g e>1:32
	<g e>1:32
	<g d>1:32
	<fis d>1:32
	<g e>1:32
	<g e>1:32
	<g d>1:32
	<fis d>1:32
	

	\mark \default

	g4 a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1

	e,1:
	c:
	g':
	fis:
	e4 e r8 g4 g8~g8 e4 e8 g e a g ~g1:32 c8 b a g ~ g a g fis  
	


	\mark \default
	\bar "||"










	c4 c c c	
	d d d d
	e e e e
	fis fis fis fis
	g g g g
	a a a a 
	c c c c
	fis, fis fis2

	\mark \default
%	R1*16
%	\mark \default

	e4 e r8 g4 g8~g8 e4 e8 g e a b ~b2.: r8 fis ~ fis g fis4 a8 g fis d
	e4 e r8 g4 g8~g8 e4 e8 g e a g ~g1: c8 b a g ~ g a g fis 
	g4 a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1

}
