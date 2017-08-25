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
	\time 12/8
	d,16 (fis gis c gis fis)
	d16 (fis gis c gis fis)
	d16 (fis gis c gis fis)
	d16 (fis gis c gis fis)
		
	
	}	
}

\new Staff \with {
  instrumentName = #"Oboe"
  shortInstrumentName = #"Oca."
  midiInstrument = "Oboe"
}{
	\relative c'' {
	
	}
}

\new Staff \with {
  instrumentName = #"Bassoon"
  shortInstrumentName = #"Bn."
  midiInstrument = "Bassoon"
}{
	\relative c {
	\clef bass
	e2. 
	
	}	
}
>>
}