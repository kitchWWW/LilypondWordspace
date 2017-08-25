\version "2.18.2"
	
#(set-global-staff-size 11)

\include "parts/Tenor.ly"
\include "parts/Double.ly"
\include "parts/Guitar.ly"
\include "parts/Bass.ly"

\header{
title ="Phantom of the Opera"
subtitle = "Steel Pan Band"
composer = "ALW"
arranger = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout{}


<<
\new Staff \with {
  instrumentName = #"Tenor"
  shortInstrumentName = #"Ten."
  midiInstrument = "Steel Drums"
}{ \relative c'' {\Tenor}	}
\new Staff \with {
  instrumentName = #"Doubles"
  shortInstrumentName = #"Dbl."
  midiInstrument = "Steel Drums"
}{	\relative c' {\Double}	}
\new Staff \with {
  instrumentName = #"Gtr/Cel"
  shortInstrumentName = #"G/C."
  midiInstrument = "Steel Drums"
}{	\relative c {\Guitar}	}
\new Staff \with {
  instrumentName = #"Bass"
  shortInstrumentName = #"Bass"
  midiInstrument = "Steel Drums"
}{	\relative c {\Bass}	}
>>
}
