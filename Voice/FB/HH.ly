\version "2.18.2"
\header{
title ="FB"
subtitle="SATB"
composer = "Brian Ellis"
tagline =""
}

#(set-global-staff-size 22)

\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  ragged-last-bottom = ##t
}

\score{
\midi {}
\layout {}
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"S"
  shortInstrumentName = #"s"
  midiInstrument = "Choir Aahs"
}{
	\relative c'' {
	\clef "treble"
	\tempo 4 = 67
	\key g \major
	\time 4/4
	d2 b b a
	g4. c8 b2 b a
	
	}
\addlyrics {
	race ing wat er
	trick a ling beau ty}
}

\new Staff \with {
  instrumentName = #"A"
  shortInstrumentName = #"a"
  midiInstrument = "Choir Aahs"
}{
	\relative c'' {
	\key g \major

	}
}

\new Staff \with {
  instrumentName = #"NB"
  shortInstrumentName = #"t"
  midiInstrument = "Choir Aahs"
}{
	\relative c {
	
	}	
}

\new Staff \with {
  instrumentName = #"T"
  shortInstrumentName = #"t"
  midiInstrument = "Choir Aahs"
}{
	\relative c' {
		\key g \major
	\clef bass

	}	
}
\new Staff \with {
  instrumentName = #"B"
  shortInstrumentName = #"b"
  midiInstrument = "Choir Aahs"
}{
	\relative c {
	\key g \major
	\clef bass	
	
	}	
}

>>
}