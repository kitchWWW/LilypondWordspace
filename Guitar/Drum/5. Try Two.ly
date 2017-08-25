\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"Straight Dance Song"}}
	subtitle = "Solo Guitar"
	subsubtitle = \markup {\bold{\italic "Native American Drum Songs"}}
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
	\key d \major
	\time 4/4
	\clef "treble_8"
	\tempo 4 = 140
	
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	<<{
	
	a'8 a4 a8 fis4 e4 d4 fis8 b4. a4 b8 a4 a2 ~a2
	}\\{
	d,,4 d d d d d d d d d d d d d
	}>>
	
	
	\bar "|."
}
}


