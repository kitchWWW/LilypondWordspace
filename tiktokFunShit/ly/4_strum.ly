
\score{
	\header{
	}
\layout{}

\new Staff  \with {
  instrumentName = "ukulele"
}
\relative c'' {
	\time 6/4
	\omit  Staff.TimeSignature
  \override Beam.grow-direction = #RIGHT
  r2 
  \featherDurations 2/3
  { <a c f a>32 [ <a c f a> <a c f a> <a c f a> <a c f a> <a c f a> <a c f a> <a c f a>] }
  \override Beam.grow-direction = #LEFT
  \featherDurations 2/3
  { <a c f a>32 [ <a c f a> <a c f a> <a c f a> <a c f a> <a c f a> <a c f a> <a c f a>] }
  r2
}
}

