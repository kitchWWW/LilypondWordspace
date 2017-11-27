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
      \hide Stem

	r4^"0" e^"1" s^"20"\< s^"25"\> r\!^"29"
	\break
\mark \default
	r^"0"
	gis^"3" s^"12"\< fis^"17"\> s\!^"25"
		a^"47" r^"67" a'^"73" r^"87" gis,^"105"
	\break
\mark \default
	<gis cis,>^"0" cis,^"6" r^"8" e'^"14" <dis e>^"36" dis^"52" <dis e,>^"61"
		e,^"65" r^"84"
	\break
	e'^"89" e,^"95" <e a>^"121" <e a e'>^"125" <a e'>^"129" r^"150" e'^"153" r^"160"
	




\revert Score.BarLine.stencil
	\bar "|."
}	
}