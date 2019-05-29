\version "2.18.2"
	
#(set-global-staff-size 10)

\include "parts/Tenor.ly"
\include "parts/Double.ly"
\include "parts/Guitar.ly"
\include "parts/BassFour.ly"

\header{
title ="Mr. BrightSide"
subtitle = "UT Steel Pan Band"
composer = "The Killers"
arranger = "arr. Brian Ellis"
tagline =""
}
\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  print-all-headers = ##f
  print-page-number = ##f
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  #(set-paper-size "letter" 'landscape)
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
  instrumentName = #"Four Bass"
  shortInstrumentName = #"4B"
  midiInstrument = "Steel Drums"
}{	\relative c {\BassFour}	}

>>
}
