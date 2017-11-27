\version "2.18.0"

\header {
	title = "Beyond Speach"
	subtitle = \markup{\normal-text\italic"Ensemble 1"}
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
      \hide stems

	r4^"0:00" e^"0:11" s^"0:30"\< s^"0:35"\> r\!^"0:39"
	\break
\mark \default
	r^\markup{\column{"0:45"}}
	gis^\markup{\column{"0:48"}}
	s\<^\markup{\column{"0:57"}}
	fis^\markup{\column{"1:02"}}\>
	s\!^\markup{\column{"1:10"}}
	a^\markup{\column{"1:32"}}
	r^\markup{\column{"1:52"}}
	a'^\markup{\column{"1:58"}}
	r^\markup{\column{"2:12"}}
	gis,^\markup{\column{"2:30"}}
	\break
\mark \default
	<gis cis,>^"2:45" cis,^"2:51" r^"2:53" e'^"2:59"
	<dis e>^"3:21" dis^"3:37" <dis e,>^"3:46"
	e,^"3:50" r^"4:09"
	\break
	e'^"4:15" e,^"4:20" <e a>^"4:46" <e a e'>^"4:50" <a e'>^"4:59"
	r^"5:15" e'^"5:18" r^"5:25"

\revert Score.BarLine.stencil
	\bar "|." \mark \markup{\normalsize"5:35"}
}	
}