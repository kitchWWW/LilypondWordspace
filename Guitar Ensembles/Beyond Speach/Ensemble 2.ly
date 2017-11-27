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

	r4^"0" b^"7" s\<^"20" s\>^"25" s\!^"29" <b b,>^"34" b,^"39"
	\break
\mark \default
	b^"47/0" s\<^"12" a\>^"17" s\!^"25" r^"45" cis'^"54" r^"94" b,^"101" r^"109" b^"114"
	\break
\mark \default
	b^"120/0" r^"8" cis'^"21" dis^"36" cis^"44" a,^"54" <a e'>^"59"
		r^"74" fis'^"76" r^"84"
	\break
	b^"89" a^"99" cis,^"111" b^"134" r^"150" e^"153" r^"160"

\revert Score.BarLine.stencil
	\bar "|."
}	
}