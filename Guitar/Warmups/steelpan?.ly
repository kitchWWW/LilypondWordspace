\version "2.18.0"

\header {
	title = "Prelude No. Four"
	subtitle = "Op. 6"
	subsubtitle = "For Guitar"
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

	\new Staff \relative c{
	\time 2/2
	\clef "treble_8"
	\tempo 2 = 120
	
	c4 c8 c8 c4 c8 c8~c8 c8 c4 d g	
	\bar "|."
}
}