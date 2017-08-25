\version "2.18.2"

\include "parts/guitar1.ly"
\include "parts/guitar2.ly"
\include "parts/guitar3.ly"
\include "parts/guitar4.ly"


%#(set-global-staff-size 10)


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
title ="Danza"
subtitle = "For Guitar Quartet"
composer = "Brian Ellis"
tagline =""
}
\midi {}
\layout{}
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"Guitar 1"
  shortInstrumentName = #"1"
  midiInstrument = "Acoustic Guitar (nylon)"
}{	\relative c' {\guitarA}	}
\new Staff \with {
  instrumentName = #"Guitar 2"
  shortInstrumentName = #"2"
  midiInstrument = "Acoustic Guitar (nylon)"
}{	\relative c' {\guitarB}	}
\new Staff \with {
  instrumentName = #"Guitar 3"
  shortInstrumentName = #"3"
  midiInstrument = "Acoustic Guitar (nylon)"
}{	\relative c' {\guitarC}	}
\new Staff \with {
  instrumentName = #"Guitar 3"
  shortInstrumentName = #"3"
  midiInstrument = "Acoustic Guitar (nylon)"
}{	\relative c' {\guitarD}	}
>>



}
