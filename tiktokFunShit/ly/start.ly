\version "2.18.2"
#(set-global-staff-size 20)

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
  ragged-last-bottom = ##f
  ragged-last = ##f
  indent = 1.0\cm
}

\header{
title ="that American Life"
subtitle=" "
tagline=""
composer = "Brian Ellis"
}

\score{
	\header{
		piece="intro loop"
	}
\layout{}

\new Staff  \with {
  instrumentName = "melodica"
}
\relative c''{
	\time 4/4
	\tempo 4 = 70
	\key c \major
	<c e>1 ~ <c e> ~ _\markup{\italic"breathe as needed"}
	<a c>1 ~ <a c> ~
	<c e>1 ~ <c e> \breathe
	<a c>1 ~ <a c> ~
	<c e>1 ~ <c e> ~
	<a c>1 ~ <a c> \breathe
	<c e>1 ~ <c e> ~
	<g c>1 ~ <g b>2 r2
	\bar "||"
}
}

