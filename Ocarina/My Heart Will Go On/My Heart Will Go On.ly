\header{
title ="My Heart Will Go On"
subtitle="For Ocarina"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

intro = {
	
	\partial4 f8 g
	a2. g8 f g c4. (c4) bes8 a f4 e2 e4 c2 r4 f8 g

}
lyric = {
	a2. bes16 a g f g8 c4. (c4) a8 c d2 c4. g16 a g2. r4
	\bar "||" f4. f8 f4 f e f2 f4 e f2 g4 a2 g
	f4. f8 f4 f e f2 f4 c1 (c1)
	\bar "||"
}
chorus = {
	f1 g2. c,4 c'2 bes4 a g2 a4 bes a2 g4 f e f2 f4 d1 c1
	f1 g2. c,4 c'2 bes4 a g2 a4 bes a2 g4 f e f2 f4 e f2 g4 

}
endOne = {
	a1 g (g2.) f8 g
}
endTwo ={

}

\score{
\midi {}

\relative c'{

	\time 4/4
	\key f \major
	\intro

\repeat volta 2 {
	\lyric
	\chorus}
\alternative {
  { \endOne}
  { \endTwo}
}
	
}
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 16)
    }
}
}



