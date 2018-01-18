global= {
  \time 4/4
  \key g \major
}

live = \new Voice \relative c''' {
  \set Staff.instrumentName = #"Violin 1 "

  g'8 g g g g g g g
}

guitarOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 1 "

  r1
}
guitarTwo = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 2 "

  r1
}
guitarThree = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 3 "

  b'8 b b b b b b b
}
guitarFour = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 4 "

  g' g g g g g g g
}
guitarFive = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 5 "

  e e e e e e e e
}
guitarSix = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 6 "

  d d d d d d d d
}
guitarSeven = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 7 "

  c8 c c c c c c c
}
guitarEight = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 8 "

  b8 b b b b b b b
}
guitarBass = \new Voice \relative c {
  \set Staff.instrumentName = #"B. Gt. 1+2 "
	\clef bass
  <a a'>8 <a a'><a a'><a a'><a a'><a a'><a a'><a a'>
}


\score {
<<
    \new Staff << \global \live >>
  \new StaffGroup <<
    \new Staff << \global \guitarOne >>
    \new Staff << \global \guitarTwo >>
    \new Staff << \global \guitarThree >>
    \new Staff << \global \guitarFour >>
    \new Staff << \global \guitarFive >>
    \new Staff << \global \guitarSix >>
    \new Staff << \global \guitarSeven >>
    \new Staff << \global \guitarEight >>
>>
	\new StaffGroup <<
    \new Staff << \global \guitarBass >>
>>

>>
  \layout { }
  \midi { }
}
