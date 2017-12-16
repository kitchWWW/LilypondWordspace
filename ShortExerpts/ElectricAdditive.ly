\header{
tagline=""
}
\paper{
  indent = 0\cm
  left-margin = 5\cm
  right-margin = 5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
  print-all-headers = ##f
  print-page-number = ##f
  ragged-last-bottom = ##t
}

\score{
\midi {}



\relative c''' {
  \set Score.currentBarNumber = #146
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \bar ""

	\time 4/4
	\key g \major
	r4 r g8 [e] r4
	r4 r g8[ g] a [g] \break
	r4 d8 [d] g8 r r4
	r4 r g8[ g] a [g] \break
	r4 d8 [d] g[ e] r4
	r4 d8 [d] g[ g] a[g]
	
	
	
}
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 16)
    }
}
}



