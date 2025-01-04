\score{
	\header{
	}
\layout{}

\new Staff  \with {
  instrumentName = \markup{\center-column {"melodica" "or" "harmonica"}} %
}
\relative c' {
	\omit  Staff.TimeSignature
	\time 16/4
	\hide Stem
	r2 g1 (f1 g) r2
}
}

