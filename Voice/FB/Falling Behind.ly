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
	\tempo 4. = 67
	\key g \major
	\time 3/4
	d4 a4. g8 g8. a16 c4 b
	\time 1/4
	d4
	\time 3/4
	d a4. g8 g4 c8. b16 a4
	
	}
\addlyrics {
	Fall ing be- hind a- gai- n.
	Fall
	Fall ing be- hind a _ gain.}
}

\new Staff \with {
  instrumentName = #"A"
  shortInstrumentName = #"a"
  midiInstrument = "Choir Aahs"
}{
	\relative c'' {
	\key g \major
	r2. r2. r4 
	g4 fis e d e2
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
	r2. r2. r4
	b4 fis2
	
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
	r2. r2. r4
	g4 a2 b4 c2
	
	}	
}

>>
}