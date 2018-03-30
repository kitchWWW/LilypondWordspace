


\version "2.18.0"
#(set-global-staff-size 25)
%\setlength{\topmargin}{-2in}

\header {
      % The following fields are centered
    dedication = "For someone to play at the piano"
    title = "Non-Imitative Two-Voice Writing"
    subtitle = "For Piano"
    subsubtitle = ""
    composer = "Brian Ellis"
	arranger = "  "
    tagline = ""
    copyright = ""
  }


lower = \relative c {
  \clef bass
  \key ees \major
  \time 3/4
	ees2^"I" bes4^"V"
	c2^"vi" aes4^"IV"
	g^"I6" f^"viid6" ees^"i"
	bes'2^"V" d4^"V65" ees^"I" f^"viid6" g^"I6"
	aes2^"IV" f4^"ii" bes2^"V64" bes,4^"V53" ees2.^"I"
	\bar "|."

}

upper = \relative c''{
	\key ees \major
	\time 3/4
	g8 f ees f d bes
	ees d c d ees c
	ees d16 ees f8 ees16 f g8 f16 ees
	d8 ees16 f g aes bes c bes8 aes
	g8 g16 f f8 f16 ees ees8 ees16 d
	c8 d16 ees f g aes bes aes8 g
	g4.\trill aes16 g f8 g
	ees2.
	\bar "|."
}

\score {
  \new PianoStaff \with { instrumentName = #"Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
