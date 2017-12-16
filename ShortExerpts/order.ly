\header{
title ="Order of Notes"
tagline=""
arranger = "Glass"
composer = ""
}
\score{
\midi {}

\relative c'{

	\time 8/4
	\key c \major
	<e g c d e>4
	<c' d e>4

	<b c d e>4

	<a b c d e>4

	<g a b c d e>4
	
}
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 16)
    }
}
}



