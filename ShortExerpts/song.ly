\header{
title ="Song 1."
subtitle ="from You Can Lose Your Ballance"
tagline=""
arranger = "Brian Ellis"
composer = ""
}
\score{
\midi {}

\relative c'{
  \numericTimeSignature
\tempo 4 = 56
\time 4/4
	\key d \major
  \partial 8 d8\( |
  	\bar ".|:"
  fis2.\) r8 d8\(
  \time 6/4
  g2 fis2.\) r8 d8\(
  \time 8/4
  a'2 g2 fis2.\) r8 d8\(
  \time 6/4
  e1\) r4 r8 d8
  	\bar ":|."

}
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 16)
    }
}
}



