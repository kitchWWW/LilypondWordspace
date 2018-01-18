\version "2.18.0"

\header {
	title = "Beyond Speach"
	subtitle = \markup{\normal-text\italic"Ensemble 2"}
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

	\new Staff \relative c''{
	\clef "treble"

\override Score.BarLine.stencil = ##f
\override Staff.TimeSignature.stencil = ##f
	\key e \major
	\time 1/4
\mark \default
      \hide Stem

	r4^"0:00" b^"0:07" s\<^"0:20" s\>^"0:25" s\!^"0:29" <b b,>^"0:34" b,^"0:39"
	\break
\mark \default
	b^"0:45" s\<^"0:57" a\>^"1:02" s\!^"1:10" r^"1:30"
	cis'^"1:39" r^"2:19" b,^"2:26" r^"2:34" b^"2:39"
	\break
\mark \default
	b^"2:45" r^"2:53" cis'^"3:06" dis^"3:21" cis^"3:29" a,^"3:39"
	<a e'>^"3:44" r^"3:59" fis'^"4:01" r^"4:09"
	\break
	b^"4:14" a^"4:24" cis,^"4:36" b^"4:59" r^"5:15" e^"5:18" r^"5:25"

\revert Score.BarLine.stencil
	\bar "|." \mark \markup{\normalsize"5:35"}
}	
}