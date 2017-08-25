\version "2.18.2"
	


date = \markup { "Engraved on " #(strftime "%m-%d-%Y" (localtime (current-time)))}

\header{
tagline = " "
}

\paper{
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  print-all-headers = ##t
  print-page-number = ##f
  % #(set-paper-size "letter" 'landscape)
}

\include "parts/Tenor.ly"
\include "parts/Double.ly"
\include "parts/Guitar.ly"
\include "parts/FourBass.ly"
\include "parts/SixBass.ly"

#(set-global-staff-size 10)

\score{
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Catalina Mark 1" }
subtitle = "  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5
         "For Steel Pan Ensemble" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}

%\midi {}
\layout{}
%\unfoldRepeats {
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"Leads"
  shortInstrumentName = #"Ld."
  midiInstrument = "Steel Drums"
}{ \relative c'' {\Tenor}	}

\new Staff \with {
  instrumentName = #"Doubles"
  shortInstrumentName = #"Dbl."
  midiInstrument = "Steel Drums"
}{	\relative c' {\Double}	}

\new Staff \with {
  instrumentName = #"Gtr. / Cl."
  shortInstrumentName = #"G/C"
  midiInstrument = "Steel Drums"
}{	\relative c {\Guitar}	}

\new Staff \with {
  instrumentName = #"Four Bass"
  shortInstrumentName = #"4B"
  midiInstrument = "Steel Drums"
}{	\relative c{\FourBass}	}
\new Staff \with {
  instrumentName = #"Six Bass"
  shortInstrumentName = #"6B"
  midiInstrument = "Steel Drums"
}{	\relative c{\SixBass}	}
>>
%  }
}
