\version "2.18.2"
%#(set-global-staff-size 19)
\header{
title ="String Quartet"
subtitle="   "
composer = "Brian Ellis"
tagline=""
}

\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  ragged-last-bottom = ##t
}

scale = \relative c' { c d e f g a b}

lineA = {
\partial 4 c4
	c8 c d16 c c b, c8 d e e f16 e e d e8 d c r a g16 f e8 r f a
	g16 a b8 r e f g c b,16 a, b,8 c d16 c c b, c8 c d e f g a b16 c' c'4
	
}

lineB = {
	e4 e16 f g8 a g16 f e g g f e d c b, a,8 a a16 g g f e8 r c'16 d' d' b
		b c' a g f e e d
	f e d d' c' b a8 a r r e d16 e e f f8 f e e'
		d'16 c' c' b a8 g16 f e8 e e4

}

ViolinA = \absolute {
	\time 2/4
	\transpose c c'' \lineA
	\bar "|."
}

ViolinB = \absolute {
	\time 2/4
	\transpose c c' \lineB

}

viola = \absolute {
	\clef alto
	\retrograde \modalInversion c' c\scale \lineB

}

cello = \absolute {
	\clef bass
	\retrograde \modalInversion c' c, \scale \lineA
}


\score {
\new StaffGroup
	<<
	\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #"Vn.1"
  midiInstrument = "violin"
	} \ViolinA
	\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "violin"
} \ViolinB
	\new Staff \with {
  instrumentName = #"Viola"
  shortInstrumentName = #"Vla."
  midiInstrument = "Viola"
} \viola
	\new Staff \with {
  instrumentName = #"Cello"
  shortInstrumentName = #"Cel."
  midiInstrument = "Cello"
} \cello
	>>
  	
  \layout { }
  \midi { }
}
