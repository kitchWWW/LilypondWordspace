


\version "2.18.0"
#(set-global-staff-size 25)
%\setlength{\topmargin}{-2in}

\header {
      % The following fields are centered
    dedication = "For someone to play at the piano"
    title = "Invertable Counterpoint"
    subsubtitle = ""
    composer = "Brian Ellis"
	arranger = "  "
    tagline = ""
    copyright = ""
  }


theme = \relative c'' {
  \key g \major
  \time 4/4
	\tempo 4 = 180
	g2 b ~ b a b e ~ e d ~ d c ~ c  b a g ~ g fis g \bar "|."

}

upper = {
	\key g \major
	\time 4/4
	r4 d g2 fis1 g fis e d c2 e d c b
}

\score {
  \new StaffGroup
  <<
    \new Staff = "upper" \relative c'' {\upper}
    \new Staff = "mid" \theme
    \new Staff = "lower" \relative c' {\upper}
  >>
  \layout { }
  \midi { }
}
