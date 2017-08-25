\header{
title ="Flatland ideas"
tagline=""
composer = "Brian Ellis"
}

main = {
	

}

\score{
\midi {}
\relative c''{
	\tempo 4 = 170
	\time 4/4
	\key d \major
	\main
	
}
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 16)
    }
}
}
