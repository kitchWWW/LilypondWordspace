\version "2.18.0"

\header {
	title = "Music with Similar Motion"
	subtitle = "    "
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

\transpose c e{

	\new Staff \relative c''{
	\clef "treble_8"
	\key aes \major
	\time 4/4
<<{
	c1 aes g ees des aes f aes
}\\{
	f ees bes aes f ees des aes
}\\{
	ees''' des aes f ees des aes aes
}\\{
	aes' f des bes aes f ees aes

}>>

}

}	
}
