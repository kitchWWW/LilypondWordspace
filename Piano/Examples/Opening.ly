
\score {


  \new PianoStaff <<
    \new Staff = "upper" \relative c''{
	g4 f e d c2 r 
}
    \new Staff = "lower" \relative c {
	\clef bass
	e8 c' f, c' g c g b r4 g c, r
}
  >>
 }