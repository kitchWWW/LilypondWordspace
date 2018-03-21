
\paper{
  indent = 0\cm
  left-margin = 5\cm
  right-margin = 5\cm
  top-margin = 2\cm
  bottom-margin = 10\cm
  ragged-last-bottom = ##t
  print-all-headers = ##f
  print-page-number = ##f
  ragged-last-bottom = ##t
}

\score {
  \new Staff \relative c'' {
  \override Staff.StaffSymbol.line-count = #1
  \override Staff.TimeSignature.stencil = ##f
	
	b4 b b4 r \bar "|."
}

  \layout { }
  \midi { }
}
