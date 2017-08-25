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

	\new Staff \relative c'{
	\clef "treble_8"
	\key bes \major
	\time 4/4
	bes8 bes' a bes

	\bar ":|."

}	
}