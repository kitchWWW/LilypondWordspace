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
	\time 6/8
	r2.
	r4. r8 bes c
	d (c bes) d (c bes)
	e4. r4.
	r4. r8 aes, bes
	c (bes aes) bes (aes ges)
	e'4. d4.
	ges4. r
	r
	
	
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

\new Staff \with {
  instrumentName = #"Bassoon"
  shortInstrumentName = #"Bn."
  midiInstrument = "Bassoon"
}{
	\relative c {
	\clef bass
	d8 (c d) d (c d)
	d8 (c d) d (c d)
	d2. ~d4.
	~d8 (c bes aes2.)
	
	}	
}
>>
}