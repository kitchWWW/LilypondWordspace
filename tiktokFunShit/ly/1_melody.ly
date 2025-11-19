
\score{
	\header{
	}
\layout{}

\new Staff  \with {
  instrumentName = \markup{\center-column {"toy piano" "or" "ukulele"}} %
}
\relative c' {
	\omit  Staff.TimeSignature
	\time 13/4
	\hide Stem
	s1
	c4^\markup{\column{"improvise with pitchs" "in any octave"}} d e g a s1
}
}


