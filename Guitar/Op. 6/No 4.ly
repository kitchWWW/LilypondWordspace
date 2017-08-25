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
	\tempo 4 = 120
	
	a16 a' c e e, a c e d, a' c e, a c e c
	a, a' c e f, a c e d, a' c f, a c e c
	a, a' d f f, a d f e, a d f, a d f d
	a, b' e g g, b e g f, b e g, b e g e
	a,, c' e a a, c e a gis, c e a, c e a e 
		
	\bar "|."
}
}