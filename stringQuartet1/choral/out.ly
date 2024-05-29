global= {
  \time 4/4
  \key d \major
}

violinOne = \new Voice \absolute {
  %part1

d'4e'4fis'4fis'4g'4a'4a'4b'4g''4g''4fis''4fis''4fis''4e''4g'4a'4b'4fis'''4e'''4d'''4b''4a''4g''4fis''4e''4d''4b'4
  \bar "|."
}

violinTwo = \new Voice \absolute  {
  %part2

d'4d'4e'4fis'4fis'4fis'4g'4a'4e''4d''4d''4d''4b'4a'4fis'4g'4g'4a4a4b4b4d'4d'4d'4e'4e'4fis'4
  \bar "|."
}

viola = \new Voice \absolute {
  \clef alto

  %part3

d'4d'4b4a4a4a4g4fis4d''4b'4b'4a'4g'4g'4e'4e'4fis'4d4e4e4fis4fis4g4a4a4b4b4
  \bar "|."
}

cello = \new Voice \absolute {
  \clef bass
  %part4

d'4b4a4a4g4fis4fis4e4a'4g'4fis'4fis'4e'4d'4d'4d'4b4e,4fis,4g,4a,4b,4d4d4e4fis4g4
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