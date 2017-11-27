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

	r^"0:00" cis^"0:04" s\<^"0:20" s\>^"0:25" s\!^"0:29"
	\break
\mark \default
	cis^"0:45" s\<^"0:57" dis^"1:02"\> r\!^"1:10"
	e^"1:15" fis^"1:34" r^"1:52" e^"2:32"

	\break
\mark \default
	e^"2:45" r^"2:53" a,^"3:08" fis^"3:34" r^"3:59"
	a'^"4:01" r^"4:09"
	cis,^"4:18" <cis b'>^"4:44" r^"5:15" e,^"5:18" r^"5:25" s


\revert Score.BarLine.stencil
	\bar "|." \mark \markup{\normalsize"5:35"}

	
}	
}