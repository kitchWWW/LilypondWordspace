\version "2.18.0"

\header {
	title = "Prelude"
	composer = "Brian Ellis"
	tagline = ""
}

music = \relative c' {
	\set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
	\repeat volta 2 {
	\key e \major
	e,8 e''' dis cis b a gis fis
	a,, a'' gis fis e dis cis b
	e, fis' e d \grace d16 (cis8) b a gis
	a, cis' b a gis b fis a
	e, e' g gis a b c b
	a, a' b c cis e fis e
	e,, e' gis a b cis e fis
	a,, e'' fis gis
	<a e,,>4\turn  b8 cis
	
	}
	\alternative {
	{
	e,,,\harmonic ^"12" e'''4 dis8 dis cis \grace ais16 (b4)
	%Time for the minor
	\key e \minor
	<<{
	<b, g e>4. c8 b a g e\glissando (g4.) a8 a b a b
	r8 <e b>4 fis8 g a g\mordent a
	r8<b b,>2. r8
		}\\{
	e,,,1 a e a2 e8 e4.
	}>>
	<<{
	<b'' g e>4. c8 b a g e\glissando (g4.) a8 a c a c
	r8 <e b>4 fis8 g a g\mordent a
	r8 <b b,>4 b8 a b cis dis
		}\\{
	e,,,1 a e a2 
	}>>
	
	}
	{
		\key e \major
		<<{
			r8
			\harmonicsOn
			e''4^"12" a,,8^"9" b'^"12" d,^"7" b'4^"12"
			\harmonicsOff
		}\\{
			e,,1\harmonic^"12"
		}>>
		<e'' b gis e b e,>2 r2
	}
	}
}

\score {
	\new Staff \music
	\layout {\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 32)
    }
	}
	\midi {}
}
