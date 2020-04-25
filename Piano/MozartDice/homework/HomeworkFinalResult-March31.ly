\version "2.18.0"

#(set-global-staff-size 18)

\header {
	title = "Dice Music"
	subtitle = ""
	composer = "Name: Brian Ellis"
	tagline = ""
}

\paper{
  paper-width = 8.5\in
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
  indent = 0.0\cm
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \relative c' {
  \clef treble
\override Score.BarNumber.break-visibility = ##(#f #f #f)
  \key c \major
  e4 c'4 b8 a g4

  f8 c g' c, f c a' c, 

  b'8 g d' g, g' g, f' g,

	  e'4 f8 d c2


}
    \new Staff = "lower" \relative c {
  \clef bass
  \key c \major
	c4 s s s % <---------- this is all the left hand, you don't need to edit this
	f4 s s s % <---------- but if you want, replace this with measure for M2 bass
	g4 s s s % <---------- M3, and so on
	r2 c4 c,

\bar "|."

}
  >>
  \layout {}
  \midi { }
}


