\version "2.18.2"
\header{
title ="January Rain"
subtitle="String Quartet"
composer = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout {}

<<
\new Staff \with {
  instrumentName = #"Piccolo"
  shortInstrumentName = #"Picc."
  midiInstrument = "Piccolo"
}{
	\relative c''' {
	\clef "treble^8"
	\tempo 4 = 100
	\time 3/8	
		
	}	
}

\new Staff \with {
  instrumentName = #"Oboe"
  shortInstrumentName = #"Oca."
  midiInstrument = "Oboe"
}{
	\relative c'' {
	ges2. ~ges
	~ges2. ~ges
	~ges8 (e d c4.) 
	}
}

>>
}