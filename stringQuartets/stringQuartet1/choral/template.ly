global= {
  \time 4/4
  \key d \major
}

violinOne = \new Voice \absolute {
  %part1
  \bar "|."
}

violinTwo = \new Voice \absolute  {
  %part2
  \bar "|."
}

viola = \new Voice \absolute {
  \clef alto

  %part3
  \bar "|."
}

cello = \new Voice \absolute {
  \clef bass
  %part4
  \bar "|."
}


\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Violin 1" }
    << \global \violinOne >>
    \new Staff \with { instrumentName = "Violin 2" }
    << \global \violinTwo >>
    \new Staff \with { instrumentName = "Viola" }
    << \global \viola >>
    \new Staff \with { instrumentName = "Cello" }
    << \global \cello >>
  >>
  \layout { }
  \midi { }
}