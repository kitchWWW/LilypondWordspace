\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"In a small appartment"}}
	subtitle = "Solo Guitar"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c' {
	\time 8/8
	\key a \major
	\tempo 4 = 80
	a1 ^"some bastardization of bonnie won't you blow and the eyes of texas"	a ^"not to mention some good ole train horn"






} 
}


