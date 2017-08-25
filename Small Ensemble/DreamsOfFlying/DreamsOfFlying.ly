\version "2.18.2"
\header{
title ="Dreams of Flying"
subtitle="From \"The Wind Rises\""
composer = "Joe Hisaishi"
arranger = "arr. Brian Ellis"
}
\score{
\midi {}
\layout{}

<<
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gui."
  midiInstrument = "guitar"
}{
	\relative c''' {
	\tempo 4 = 80
	\time 4/4
	\key d \major
		\partial 4 {b8. a16}
		g4 d4. g8 b  e
		cis4 d2 e8 fis 
		g4. b,8 cis4 \times 2/3 {d16 (cis b} cis8)
		e4 d2 d8. dis16
		dis8 e2 (e8) a,8. ais16 ais8 b2 (b8) d4 g2 (g8)
		fis8 e dis dis8 e2 dis8 d c b a a b c2 a8 g4 a8 g2
	}	
}

\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #"Vin.1"
  midiInstrument = "violin"
}{
	\relative c {

	}	
}

\new Staff \with {
  instrumentName = #"Violin 2 "
  shortInstrumentName = #"Vln.2"
  midiInstrument = "violin"
}{
	\relative c {

	}	
}

\new Staff \with {
  instrumentName = #"Cello"
  shortInstrumentName = #"Cel."
  midiInstrument = "Cello"
}{
	\relative c {
	\key d \major
		
	}
}
>>
}