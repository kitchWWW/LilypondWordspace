global= {
  \time 4/4
  \key c \major
}

violinOne = \new Voice \relative c'' {
%1


 b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b  b  b  r  r  r  r  b 

}

violinTwo = \new Voice \relative c'' {
  %2


 b  b  b  b  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  b  b  b 

}

viola = \new Voice \relative c'' {
  %3


 r  r  r  r  b  b  b  r  r  r  r  r  r  r  r  r  r  b  b  b  r  r  r  r  r  r  r  r  r  r  b  b  b  r  r  r  r  r  r  r  r  r  r  b  b  b  r  r  r  r  r  r  r  r  r  r  b  b  b  r  r  r  r  r  r  r  r  r  r  b  b  b  r  r  r  r  r  r  r  r  r  r  b  b  b  r  r  r  r  r 

}

cello = \new Voice \relative c'' {
  %4


 r  r  b  b  b  b  b  r  r  r  r  r  r  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  r  r  r  r  r  r  b  b  b  b  b  r  r  r  r  r  r  r  r  r  r  r  r  b  b  b 


}

phone = \new Voice \relative c'' {
  %5


 b  b  b  b  b  b  b  b  b  b  b  b  r  r  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  r  r  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  r  r  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  r  r  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  b  r  r 

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