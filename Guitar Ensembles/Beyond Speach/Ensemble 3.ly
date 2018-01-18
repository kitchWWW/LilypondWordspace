\version "2.18.0"

\header {
	title = "Beyond Speach"
	subtitle = \markup{\normal-text\italic"Ensemble 3"}
	composer = "Brian Ellis"
	arranger = ""
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c'{
	\clef "treble"

\override Score.BarLine.stencil = ##f
\override Staff.TimeSignature.stencil = ##f
	\key e \major
	\time 1/4
\mark \default
      \hide Stem

	r^"0" cis^"4" s\<^"20" s\>^"25" s\!^"29"
	\break
\mark \default
	cis^"47/0" s\<^"12" dis^"17"\> r\!^"25" e^"30" fis^"49" r^"67" e^"107"

	\break
\mark \default
	e^"120/0" r^"8" a,^"23" fis^"49" r^"74" a'^"76" r^"84"
	cis,^"93" <cis b'>^"119" r^"150" e,^"153" r^"160"


\revert Score.BarLine.stencil
	\bar "|."
	
}	
}