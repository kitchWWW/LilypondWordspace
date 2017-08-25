\header{
title =""
subtitle="DoubleTenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Double = {
\set Score.markFormatter = #format-mark-box-alphabet

	\tempo 4 = 110
\repeat volta 2 {	
	<f a>4.\f <g b>8:32 ~ <g b>2:
	<g b> 4. <a c>8: ~ <a c>2:
	<f a>4. <g b>8: ~ <g b>2:
	
}
\alternative {
{
	
	<g b> 4. <a c>8: ~ <a c>8: g,16 g a c8 c16
}{
	g'8 g g4 r g
}
}

	\bar ".|:"

		r4 \mark \default f8\mf [ g8 ] a8 [ a8 a8 g8 ~ ] | % 8
        g16 [ f16 d8 ~ ] d2 r4 | % 9
        r8 f8 [ f8 g8 ] a8 f4 g8 | 
        g8 r8 g8 d2 ~ d8 | % 11
        r8   f8 [ f8 g8 ] a8 [ f8 a8 b8   ] | % 12
        r8 g8 [ f8 d8 ~ ] d4 r4 | % 13
        r8  f8\< [ f8 g8 ] a8 [ f8 ] g4  | % 14
        b,8\f->  [ b8-> b8-> c8-> ] b4-> r4 | % 15
        a'2:\mp  ~ a8 [ b8 c8 a8 ] | % 16
        b,8  [ b8 b8 c8 ] b4 d4 | % 17
        r2 f8  [ g8 a8 f8 ] | % 18
        r8  d8  [ e8 ] d4. g,16\f [ a16 c16 a16 ^"To Coda" ] 
		\mark \default
		
		
        e'8. [   e8. ] d4. g,16 [ a c8]  | 
        d8. [ d8. ] c4. g16 [ a c8] | % 21
        c4 d8 b8 ~b16 a16 g8 ~ g g8 | % 22
        d'4: c2: g16 [ a16 c16 a16 ] | % 23
        e'8.  [ e8. ] d4. g,16 [ a16 c16 a16 ] | % 24
        g'4  b,8 c8 ~c16 b a8  g16 [ a16 c16 a16 ]  | % 25
        c4  d8 b8 ~b16 a16 g8~ g g8 | % 26
        d'4 c2.

	\bar ":|."
	
	    \once \override Score.RehearsalMark #'font-size = #4
    \mark \markup { \musicglyph #"scripts.coda" }
        <<{b'2\rest b8\rest e,16 e d4}\\{s8 \mark \default}>>
        r2 r8 d16 d c4
       	r2 r8 c16 c b4
        r2 d4 c
        
		r2 r8 e16 e d4
        r2 r8 d16 d c4
       	r2 r8 c16 c b4
        r1 d4 c2.: ~ c1: ~ c1:

	\bar "|."
}



