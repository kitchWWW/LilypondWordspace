\version "2.18.2"
	
#(set-global-staff-size 12)

\include "parts/Tenor.ly"
\include "parts/DoubleTenor.ly"
\include "parts/DoubleSecond.ly"
\include "parts/Cello.ly"
\include "parts/Guitar.ly"
\include "parts/FourBass.ly"
\include "parts/SixBass.ly"

\header{
title ="Jive"
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
  instrumentName = #"Double Ten."
  shortInstrumentName = #"DT"
  midiInstrument = "Steel Drums"
}{	\relative c'' {\DoubleTenor}	}
\new Staff \with {
  instrumentName = #"Dobule Sec."
  shortInstrumentName = #"DS"
  midiInstrument = "Steel Drums"
}{	\relative c'' {\DoubleSecond}	}
\new Staff \with {
  instrumentName = #"Cello"
  shortInstrumentName = #"Cel."
  midiInstrument = "Steel Drums"
}{	\relative c'' {\Cello}	}
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gui"
  midiInstrument = "Steel Drums"
}{	\relative c'' {\Guitar}	}
\new Staff \with {
  instrumentName = #"Four Bass"
  shortInstrumentName = #"4b"
  midiInstrument = "Steel Drums"
}{	\relative c'' {\FourBass}	}
\new Staff \with {
  instrumentName = #"Six Bass"
  shortInstrumentName = #"6B"
  midiInstrument = "Steel Drums"
}{	\relative c'' {\SixBass}	}
>>
}
