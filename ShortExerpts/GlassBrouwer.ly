\header{
title ="Order of Notes"
tagline=""
arranger = "Glass"
composer = ""
}
\score{
\midi {}

\relative c'{

	\time 3/4
<<{
	b'8 ^"Etude No. 19" ([d]) b ([d]) b ([d]) b8^"Solo Violin Music" [d] b [d] b [d ]
}\\{
<g,, d' a'>4
<g d' a'>
<g d' a'>
g' g g
}>>	
}
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 16)
    }
}
}



