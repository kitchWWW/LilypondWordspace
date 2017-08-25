\version "2.18.2"
	
#(set-global-staff-size 12)

\include "parts/Tenor.ly"
\include "parts/Double.ly"
\include "parts/Guitar.ly"
\include "parts/Bass.ly"

\header{
title ="Danza"
subtitle = "Steel Pan Band"
composer = "Brian Ellis"
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
  instrumentName = #"Double"
  shortInstrumentName = #"Dbl."
  midiInstrument = "Steel Drums"
}{	\relative c' {\Double}	}
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gui"
  midiInstrument = "Steel Drums"
}{	\relative c {\Guitar}	}
\new Staff \with {
  instrumentName = #"Bass"
  shortInstrumentName = #"B"
  midiInstrument = "Steel Drums"
}{	\relative c {\Bass}	}
>>
}
