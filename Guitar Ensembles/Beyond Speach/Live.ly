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
	r4^"0" gis'^"11" a^"17" s\<^"20" gis\>^"25" s\!^"29" e^"31" r^"42"
	\break
\mark \default
	r^"0" e^"9" s^"12"\< s^"17"\> <e dis>^"22"\! dis^"27" r^"33" dis^"37" cis^"41" r^"51"
	<e fis>^"63" <dis e>^"80" <cis e>^"111" r^"120"
	\break
\mark \default
	r^"0" <cis gis>^"4" <cis a>^"11"
	<b a>^"18" cis^"21" b'^"26"\< s^"29"\> s\!^"31" fis^"38" <fis e>^"42"
	r^"61" \break
	dis'^"62" cis^"71" <a cis>^"79" r^"95"
	e^"97" r^"103"
	a^"117" b^"132" cis^"139" e^"147" r^"162"
\revert Score.BarLine.stencil
	\bar "|."
}	
}