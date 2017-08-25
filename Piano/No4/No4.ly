\version "2.18.0"

%#(set-global-staff-size 18)

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Surfaces" }
subtitle = "  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5
         "For Solo Piano" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}

\paper{
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 1\cm
  bottom-margin = 2\cm
}


top = {e8 g b c b g}
tope = {e fis b c b fis}

topAA = {
	e8^\markup { \italic "[x5]" } g b c b g
	\top \top \tope \tope \top \top
}
topA = {
	\top \top \top \tope \tope \top \top
}
topBB = {c^\markup { \italic "[x5]" } b g \top \top \top \tope \tope \top \top e g b
}
topB = {c b g \top \top \top \tope \tope \top \top e g b
}

patA = {c8 g e c e g}
patB = {b g e c e g}
patC = {a g e c e g}
patD = {a fis e c e fis}
patE = {a fis ees c ees fis}
patF = {a g e c e g}

botA = {
	\patA \patB \patC \patD \patE \patF \patA
}

botB = {
	c e g \patA \patB \patC \patD \patE \patF \patA c g e
}

upper = \relative c' {
  \clef treble
	\time 3/4
	
	\topAA
	\time 6/8
	\topA
	\time 3/8
	e^\markup { \italic "[x1]" } g b
	\time 3/4
	\topBB
	\time 6/8
	\topB
	\time 3/8
	c^\markup { \italic "[x1]" } b g
	\time 3/4
	\topAA
	\bar "|."
}

%===========================================================================

lower = \relative c' {
  \clef bass
  \time 3/4
	\set Staff.pedalSustainStyle = #'bracket
	\revert NoteHead.style
	\time 3/4
	\botA
	\time 6/8
	\botA
	\time 3/8
	c g e
	\time 3/4
	\botB
	\time 6/8
	\botB
	\time 3/8
	c e g
	\time 3/4
	\botA
}

\score {
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 5)
                            (padding . 5))
  }<<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { indent = 0 }
  \midi { }
}