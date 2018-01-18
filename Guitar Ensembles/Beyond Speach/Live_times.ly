\version "2.18.0"

\header {
	title = "Beyond Speach"
	subtitle = \markup{\normal-text\italic"Live"}
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
      \hide Stem

	\key e \major
	\time 1/4
\mark \default
	r4^"0:00" gis'^"0:11" a^"0:17" s\<^"0:20"
	gis\>^"0:25" s\!^"0:29" e^"0:31" r^"0:42"
	\break
\mark \default
	r^"0:45" e^"0:54" s^"0:57"\< s^"1:02"\> <e dis>^"1:07"\! dis^"1:12"
	r^"1:18" dis^"1:22" cis^"1:26" r^"1:36"
	<e fis>^"1:48" <dis e>^"2:05" <cis e>^"2:36"
	\break
\mark \default
	r^"2:45" <cis gis>^"2:49" <cis a>^"2:56"
	<b a>^"3:03" cis^"3:06" b'^"3:11"\<
	s^"3:14"\> s\!^"3:16" fis^"3:23" <fis e>^"3:27"
	r^"3:46" \break
	dis'^"3:47" cis^"3:56" <a cis>^"4:04" r^"4:20"
	e^"4:22" r^"4:28"
	a^"4:42" b^"4:57" cis^"5:04" e^"5:12" r^"5:27" s
\revert Score.BarLine.stencil
	\bar "|." \mark \markup{\normalsize"5:35"}

}	
}