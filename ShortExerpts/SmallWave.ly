global= {
  \time 4/4
  \key g \major
}

guitarOne = \new Voice \relative c''' {
  \set Staff.instrumentName = #"Guitar 9 "

  <g b d>8
  <g b d>
  <g b d>
  <g b d>
  <g b d>
  <g b d>
  <g b d>
  <g b d>
}
guitarTwo = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 10 "
	<fis a>
	<fis a>
	<fis a>
	<fis a>
	<fis a>
	<fis a>
	<fis a>
	<fis a>
}
guitarBass = \new Voice \relative c, {
  \set Staff.instrumentName = #"B. Gt. 1+2 "
	\clef bass
  <e e'>8
  <e e'>8
  <e e'>8
  <e e'>8
  <e e'>8
  <e e'>8
  <e e'>8
  <e e'>8
}


\score {
<<
  \new StaffGroup <<
    \new Staff << \global \guitarOne >>
    \new Staff << \global \guitarTwo >>
>>
	\new StaffGroup <<
    \new Staff << \global \guitarBass >>
>>

>>
  \layout { }
  \midi { }
}
