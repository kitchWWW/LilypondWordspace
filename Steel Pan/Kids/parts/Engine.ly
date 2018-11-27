\header{
title =""
subtitle="Tenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Engine = {
\set Score.markFormatter = #format-mark-box-alphabet

	\time 4/4
	\tempo 4 = 122
	\key e \minor

	\xNotesOn
	r1^"DRUMS: nothing yet" b4_"5!" r
	b4_"4!" r
	b4_"3!" r
	b4_"2!" r
	b4_"1!" r
	b2_\markup{\italic{"scream"}}
	\xNotesOff
\break
	\mark \default
	g4\mf^"DRUMS: simple/light rock beat" a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1
\break
	\mark \default
\bar ".|:"
	g4^"DRUMS: do your normal do here, strong rock shenanagans" a b d e fis8 e ~e d4 b8~b1:32 a1:
	g4 a b d e fis8 e ~e d4 b8~b1: r1
\bar ":|."
\break
	\mark \default
	r2^"DRUMS: a bit quieter here, less going on" b8\mp b b g
	r2 b8 b b b d2:
	b16 a8 g16 r4
	r1
	r4 b8 b b b b4 g4 r4 r2
	r4 b8 b b b b4 d,4 r4 r2
\break	
	\mark \default
	r1^"DRUMS: back to your normal monkey business"
	r4 r8 b'8\mp b b b4 d2: b16 a8 g16 r4
	r1
	r8 b b b b b b4 b8 e, r4 r2
	r8 b' b b b b b b b4 d, r2
	

	r4 r8 b'8\mf b b b4
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r1 
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r8 g d'4: b16 a8 g16 r4
	r1
\break
	\mark \default

	r2^"DRUMS: felt in 2/2" b8\mf b b g
	r2 b8 b b b d2:
	b16 a8 g16 r4
	r1
	r4 b8 b b b b4 g4 r4 r2
	r4 b8 b b b b4 d,4 r4 r2
\break	
	\mark \default
	r1^"DRUMS: back to normal"
	r4 r8 b'8\mf b b b4 d2: b16 a8 g16 r4
	r1
	r8 b b b b b b4 b8 e, r4 r2
	r8 b' b b b b b b b4 d, r2
	

	r4 r8 b'8\mp b b b4
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r1 
	r4 r8 b b b b b d2: b16 a8 g16 r4
	r8 g d'4: b16 a8 g16 r4
	r1
\break
	\mark \default
	c,4^"DRUMS: lead has a solo here, so softer" c c c
	d d d d
	e e e e
	fis fis fis fis
	g\< g g g
	a a a a 
	c c c c^"DRUMS: match this rhythm"
	fis,8\f fis16 fis fis8 fis fis2:32
\break
	\mark \default

r1 ^"DRUMS: 2 measure fill!"
 r1
	g4\p a b d e fis8 e ~e d4 b8~b1:32 a1:
	r4 r8 b'\f b b b b d2: b16 a8 g16 r4
	r8 g d'4: b16 a8 g16 r4
	r2.. 
	<<{
	<fis, d>8~\p
	<fis d>1:32 ^"DRUMS: end with suspended cymbal roll"
	<g e>1:
	}\\{
	s8
	s1\<
	s4\> s s s\!
	}>>

\bar "|."

}



