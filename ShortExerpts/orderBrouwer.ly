\header{
title ="Order of Notes"
tagline=""
arranger = "Brouwer"
composer = ""
}
\score{
\midi {}

\relative c'{

	\time 8/4
	\key c \major
	<d e>
	<d e g>
	<d e g b>
	<d e g a b> 
	<e g>
	<e g b>
	<e g b d,>
	<e fis g b d,>
	
}
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 16)
    }
}
}



