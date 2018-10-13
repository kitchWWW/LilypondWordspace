\version "2.18.2"
	
%#(set-global-staff-size 13)

\include "parts/Tenor.ly"
\include "parts/Double.ly"
\include "parts/Guitar.ly"
\include "parts/Bass.ly"

\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  print-all-headers = ##t
  print-page-number = ##f
  % #(set-paper-size "letter" 'landscape)
}

\header{
title ="Never Gunna Give You Up"
subtitle = "Steel Pan Band"
composer = "Rick Astley"
arranger = "Brian Ellis, Christian Clark"
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
}{	\relative c {\Bass}	}
}



