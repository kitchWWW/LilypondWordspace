\version "2.18.0"
#(set-global-staff-size 18)


\header {
	title = "A Part"
	subtitle = "For Guitar"
	subsubtitle = ""
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  print-all-headers = ##t
}

\score {
	\midi {}
	\layout {}
	\header {
	title = "   "
	subtitle = ""
	composer = ""
	tagline = ""
	piece = "          with purpose"}
	\new Staff \relative c{
	\numericTimeSignature
	\key c \major
	\time 4/8
	\clef "treble_8"
	\tempo 4 = 45

	c''32 e g c
	c, e g c
	c, e g c
	c, e g c

	c, e g c
	c, e g c
	c, e g c
	c, e g c

	c, e a c
	c, e a c
	c, e a c
	c, e a c
	c, e a c
	c, e a c
	c, e a c
	c, e a c


} 
}
