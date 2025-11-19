global= {
  \time 4/4
  \key c \major
}

violinOne = \new Voice \relative c'' {
%1
}

violinTwo = \new Voice \relative c'' {
  %2
}

viola = \new Voice \relative c'' {
  %3
}

cello = \new Voice \relative c'' {
  %4

}

phone = \new Voice \relative c'' {
  %5
}

\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "key clicks" }
    << \global \violinOne >>
    \new Staff \with { instrumentName = "breath noise" }
    << \global \violinTwo >>
    \new Staff \with { instrumentName = "timber trill drone" }
    << \global \viola >>
    \new Staff \with { instrumentName = "Some sort of Jam" }
    << \global \cello >>
    \new Staff \with { instrumentName = "Melodic playing" }
    << \global \phone >>
  >>
  \layout { }
  \midi { }
}