\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"Living Room Music"}}
	subtitle = "Guitar and Flute"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

<<

  \new Staff \with {
    instrumentName = #"Guitar"
	midiInstrument = "Acoustic Guitar (nylon)"
  }
  { 
\relative c {
	\time 5/4
	\tempo 4 = 120
	\clef "treble_8"
	e'16 a, c a e' a, c a d g, c8-- (b4) r
	\time 6/4
	e16 a, c a e' a, c a e'-- [g, d' a c8 ais] (b4) r
	d16 f, a f c' f, a f c' e, gis e \times 2/3 {c'8 g-- b} <c b g gis>2
	<c b g fis>2 <c b g fis d> <c b g d b>
	
}
}
>>
}


