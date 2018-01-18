
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


global= {
  \time 3/2
  \key g \major
}

guitarOne = \new Voice \relative c''' {
  \set Staff.instrumentName = #"Guitar 5 "
  <<{
	<g, c e>2 ~ <g c e>4 <fis b d>4 ~ <fis b d>2 <e b'>1.}\\{
	s8 s s s s s s s s s s s s
	}>>
}
guitarTwo = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 6 "
	r4 <g c e>4 ~ <g c e>2 <a d fis>2 ~ \noBreak
	<a d fis>4 <b e g>4 ~ <b e g>2 ~<b e g>2 

}
guitarThree = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Guitar 7 "
	r2 <g c e>2 ~<g c e>4 <a d fis>4 ~
	<a d fis>2 <fis b d>2 ~<fis b d>

}


\score {
  \new StaffGroup <<
    \new Staff << \global \guitarOne >>
    \new Staff << \global \guitarTwo >>
    \new Staff << \global \guitarThree >>
>>
  \layout { }
  \midi { }
}
