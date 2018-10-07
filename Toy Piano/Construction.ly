
upper = \relative c'' {
  \key ees \major
  \time 4/4
	R1*10/4
}

lower = \relative c {
  \clef bass
  \key ees \major
  \time 10/4
	
}


\score {
  \new PianoStaff \with { instrumentName = #"Toy Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}