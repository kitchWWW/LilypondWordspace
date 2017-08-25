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
	\tempo 4 = 110


\repeat volta 2 {	

	c4.\f d8:32 ~ d2: | % 3
        d4. e4.: g16 [ f16 e8 ] | % 4
		c4. d8: ~ d2:

	}
    \alternative { {
        r2 r8 g,16 [ g16 ] a16 [ c8 c16 ] 
	}{
	b8 [ c8 ] c4 r4 c4 
	}
    } | % 6
	
	\bar ".|:"
    
        | % 7
        r4 \mark \default a8\mf [ b8 ] c8 [ c8 d8 b8 ~ ] | % 8
        b16 [ a16 g8 ~ ] g2 r4 | % 9
        r8 a8 [ a8 b8 ] c8 a4 g8 | 
        g'8 r8 g8 d2 ~ d8 | % 11
        r8   a8 [ a8 b8 ] c8 [ a8 c8 d8   ] | % 12
        r8 b8 [ a8 g8 ~ ] g4 r4 | % 13
        r8  a8 \<[ a8 b8 ] c8 [ a8 ] g4  | % 14
        d'8\f->  [ d8-> d8-> e8-> ] d4-> r4 | % 15
        c2\mp:  ~ c8 [ d8 e8 c8 ] | % 16
        d8  [ d8 d8 e8 ] d4 g,4 | % 17
        r2 a8  [ b8 c8 a8 ] | % 18
        r8 d8  [ e8 ] d4. g,16\f [ a16 c16 a16 ^"To Coda"]  
	
		\mark \default  | % 19
		
	    
	
        e'8. e8.  d4. g,16 [ a16 c16 a16 ]  | 
        d8. [ d8. ] c4. g16 [ a16 c16 a16 ] | % 21
        c4 d8 b8 ~b16 a16 g8 ~ g g8 | % 22
        d'4: c2: g16 [ a16 c16 a16 ] | % 23
        e'8.  [ e8. ] d4. g,16 [ a16 c16 a16 ] | % 24
        g'4  b,8 c8 ~c16 b a8  g16 [ a16 c16 a16 ]  | % 25
        c4  d8 b8 ~b16 a16 g8~ g g8 | % 26
        d'4  c2. 

	\bar ":|." 

	    \once \override Score.RehearsalMark #'font-size = #4
    \mark \markup { \musicglyph #"scripts.coda" }
	
		

        <<{b2\rest b8\rest e16 e d4}\\{s8 \mark \default}>>
        r2 r8 d16 d c4
       	r2 r8 c16 c b4
        r2 d4 c
        
		r2 r8 e16 e d4
        r2 r8 d16 d c4
       	r2 r8 c16 c b4
        r1 r2 d4 c: ~ c1:^"Drum Solo" ~ c1:

	\bar "|."
    }


