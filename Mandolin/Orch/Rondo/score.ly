\version "2.18.2"
	
#(set-global-staff-size 13)

\include "parts/Mando1.ly"
\include "parts/Mando2.ly"
\include "parts/Mandola.ly"
\include "parts/Cello.ly"
\include "parts/Guitar.ly"
\include "parts/FourBass.ly"

\paper{
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-all-headers = ##t
  print-page-number = ##f
   #(set-paper-size "letter" 'portrait)
}

\header { tagline = ""}

\score{
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Rondo" }
subtitle = "  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "For Mandolin Orchestra" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
tagline = ""
}

%\midi {}
\layout {}
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"Mandolin 1"
  shortInstrumentName = #"M1"
  midiInstrument = "Acoustic Guitar (steel)"
}{ \relative c'' {\MandoA}	}
\new Staff \with {
  instrumentName = #"Mandolin 2"
  shortInstrumentName = #"M2"
  midiInstrument = "Acoustic Guitar (steel)"
}{	\relative c'' {\MandoB}	}
\new Staff \with {
  instrumentName = #"Mandola"
  shortInstrumentName = #"Ma."
  midiInstrument = "Acoustic Guitar (steel)"
}{	\relative c {\Mandola}	}
\new Staff \with {
  instrumentName = #"Mando-Cello"
  shortInstrumentName = #"Mc."
  midiInstrument = "Acoustic Guitar (steel)"
}{	\relative c {\Cello}	}
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gtr."
  midiInstrument = "Acoustic Guitar (nylon)"
}{	\relative c {\Guitar}	}
\new Staff \with {
  instrumentName = #"Double Bass"
  shortInstrumentName = #"D.B."
  midiInstrument = "Contrabass"
}{	\relative c, {\FourBass}	}
>>
}
