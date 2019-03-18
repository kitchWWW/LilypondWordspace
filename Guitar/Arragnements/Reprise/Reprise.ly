\header{
title ="Reprise"
subtitle="from Spirited Away"
tagline=""
arranger = "edd. Brian Ellis"
composer = "Joe Hisaishi"
}


theme = {
	<<{
	c4 g'4. c,8 b4 g'4. g8 a4 g f g2 a8 b
	}\\{
	c,,8 g'4 g8 e4 e,8 g'4 g8 e4 f8 c'4 c c8 e,, e' g c r4
	}>>
}

themeTwo = {
	<<{
	c'4 g'4. c,8 b4 g'4. g8 a4 g f g2 a8 b
	}\\{
	c,,8 g'4 g8 e4 e,8 g'4 g8 e4 f8 c'4 c c8 e,, e' g c r4
	}>>
}

endOne = {
	<<{
	c'4 b a g c4 c,8 d e4. a8 e c d4 c b 
	}\\{
	a,8 c'e c4 c8 e,,8 g' s2 d8 a' c s4. g,8 d'4 d d8
	}>>
}

endTwo = {
	<<{
	c'4 b a g c4 e f2 e8 d c4.
	}\\{
	a,,8 c'e c4 c8 e,,8 g'4 g4. d8 g' a g s4 <g e c,>4.
	}>>
}

two = {
<<{
	g,8 c e d4 d d e e e f f e8 f
	g2 (g8) g g fis fis4 g8 a a4 g g8 a
}\\{
	s4. g,,8 d' g d4. <c c'>8 e c' g c4 f,,8 a' c, a'4.
	c,8 e g c g4 b,4. a'8 dis4 e,,8 b''4 b4.
}>>

<<{
	ais'4 a g f e f8 g a4 g f
	e dis d
}\\{
	g,8 cis4 cis4. d,8 a'4 a4. d,8 a'4 a4.
	g,8 <f' b>4 <f b>4.
}>>
}

three = {
<<{
	c'4 g'4. c,8 b4 g'4. g8 a4 g f g2 a8 b
	c4 c b8 d c4 c d e f e8 d c2.
}\\{
	c,,8 g'4 g8 e4 e,8 g'4 g8 e4 f8 c'4 c c8 e,, e' g c r4
	f,8 c'4 c4. e,8 c'4 c4. <f a d,,>4. f4. <f g c,,>2.
}>>
}

last = {

r2
<<{
	a,8 b c4 c b8 d c4 c d e f e8 d c2.
}\\{
	s4 f,8 a4 a4. e8 g4 g4. <a d,>4. a8 <b g,>4 <c g e c>2.
}>>

}

\score{
\midi {}

\relative c''{
	\tempo 4 = 100
	\time 3/4
	\theme
	\endOne
	\themeTwo
	\endTwo
	\two
	\three
	\last
	
}
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 16)
    }
}
}



