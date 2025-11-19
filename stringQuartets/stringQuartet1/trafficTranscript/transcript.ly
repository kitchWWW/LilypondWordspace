global= {
  \time 4/4
  \key c \major
  \tempo 4 = 60
}

violinOne = \new Voice \relative c'' {
  c1 r1
  \bar "|."
}

violinTwo = \new Voice \relative c'' {
  c1 r1
  \bar "|."
}

viola = \new Voice \relative c' {
  \clef alto
  c1 r1
  \bar "|."
}

cello = \new Voice \relative c {
  \clef bass
  <g\4 g\3>1\f\<^\markup{\italic"sul pont + overpressure"} ~ <g g>~ <g g>~ <g g>\ff
  \bar "|."
}

phone = \new Voice \relative c' {
  \clef treble
  c1 r1
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
    \new Staff \with { instrumentName = "Phone" }
    << \global \phone >>
  >>
  \layout { }
  \midi { }
}