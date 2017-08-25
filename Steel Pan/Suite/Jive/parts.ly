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
title ="Canon"
subtitle = "Steel Pan Band"
composer = "Brian Ellis"
tagline =" "
}

\pageBreak

\score{
\midi {}
\layout{}


<<
\new Staff \with {
  instrumentName = #"Tenor"
  midiInstrument = "Steel Drums"
}{ \relative c'' {\Tenor}	}
>>
}

\pageBreak

\score{
\midi {}
\layout{}


\new Staff \with {
  instrumentName = #"Double"
  midiInstrument = "Steel Drums"
}{	\relative c' {\Double}	}
}

\pageBreak

\score{
\midi {}
\layout{}

\new Staff \with {
  instrumentName = #"Guitar"
  midiInstrument = "Steel Drums"
}{	\relative c {\Guitar}	}

}

\pageBreak

\score{
\midi {}
\layout{}
\new Staff \with {
  instrumentName = #"Bass"
  midiInstrument = "Steel Drums"
}{	\relative c {\Bass}	}
}
