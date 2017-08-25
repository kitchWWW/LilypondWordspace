\version "2.18.2"
	


\include "parts/flute.ly"
\include "parts/horn.ly"
\include "parts/viola.ly"
%\include "parts/guitar.ly"

#(set-global-staff-size 9)

\paper{
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  print-all-headers = ##t
  print-page-number = ##f
}

\header { tagline = ""}

\score{
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Perspective" }
subtitle = "  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "for Flute, Horn, and Viola" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
tagline = ""
}

\layout{}
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"Flute"
  shortInstrumentName = #"Fl."
  midiInstrument = "flute"
}{ \relative c'' {\flute}	}
\new Staff \with {
  instrumentName = #"Horn"
  shortInstrumentName = #"Hn."
  midiInstrument = "French Horn"
}{

\transpose f c' { \relative c'{\horn} } }

\new Staff \with {
  instrumentName = #"Viola"
  shortInstrumentName = #"Vla."
  midiInstrument = "Viola"
}{	\relative c {\viola}	}
%{\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gtr."
  midiInstrument = "Acoustic Guitar (nylon)"
}{	\relative c' {\guitar}	} %}

>>
}
