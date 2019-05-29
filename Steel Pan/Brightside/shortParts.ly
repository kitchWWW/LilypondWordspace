\version "2.18.2"
	
%#(set-global-staff-size 13)


\include "parts/Tenor.ly"
\include "parts/Double.ly"
\include "parts/Guitar.ly"
\include "parts/BassFour.ly"

\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  print-all-headers = ##t
  print-page-number = ##f
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  % #(set-paper-size "letter" 'landscape)
}

\header{
title ="Mr. Brightside"
subtitle = "Steel Pan Band"
composer = "The Killers"
arranger = "Brian Ellis"
tagline =" "
}


%=================================================================

\pageBreak
\score{

\layout{}
<<
\new Staff \with {
  instrumentName = #"Tenor"
  shortInstrumentName = #""
  midiInstrument = "Steel Drums"
}{ \relative c'' {\Tenor}	}
>>
}
%=================================================================


\pageBreak
\score{

\layout{}
\new Staff \with {
  instrumentName = #"Doubles"
  shortInstrumentName = #""
  midiInstrument = "Steel Drums"
}{	\relative c' {\Double}	}
}


%=================================================================

\pageBreak
\score{

\layout{}
\new Staff \with {
  instrumentName = #"Gtr/Cel"
  shortInstrumentName = #""
  midiInstrument = "Steel Drums"
}{	\relative c {\Guitar}	}}



%=================================================================

\pageBreak
\score{

\layout{}
\new Staff \with {
  instrumentName = #"Bass"
  shortInstrumentName = #""
  midiInstrument = "Steel Drums"
}{	\relative c {\BassFour}	}
}

