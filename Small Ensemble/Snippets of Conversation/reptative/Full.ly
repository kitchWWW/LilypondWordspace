\version "2.18.2"
	
%#(set-global-staff-size 22)

\include "parts/flute.ly"
\include "parts/viola.ly"
\include "parts/horn.ly"

\paper{
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-all-headers = ##t
}

\header { tagline = ""}

\score{
\header{
title ="Snippets of Conversation"
subtitle = "For Small Ensemble"
composer = "Brian Ellis"
tagline =""
}
\midi {}
\layout{}
%\unfoldRepeats {
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"Flute"
  shortInstrumentName = #"Fl."
  midiInstrument = "flute"
}{ \relative c''' {\flute}	}
\new Staff \with {
  instrumentName = #"Horn"
  shortInstrumentName = #"Hn."
  midiInstrument = "French Horn"
}{	\relative c' {\horn}	}
\new Staff \with {
  instrumentName = #"Steel Pan"
  shortInstrumentName = #"S.P."
  midiInstrument = "Steel Drums"
}{	\relative c' {r2.}	}
\new Staff \with {
  instrumentName = #"Viola"
  shortInstrumentName = #"Vla."
  midiInstrument = "Viola"
}{	\relative c' {\viola}	}

>>
%}
}