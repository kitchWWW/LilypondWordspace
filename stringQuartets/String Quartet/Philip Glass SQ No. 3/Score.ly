\version "2.18.2"

\include "parts/vln1.ly"
\include "parts/viola.ly"
\include "parts/vln2.ly"
\include "parts/cello.ly"


%#(set-global-staff-size 10)


upper = {
  <<{
    \vlnO
  }\\{
    \vlnT
  }>>
}
lower = {
  <<{
    \viola
  }\\{
    \cello
  }>>
}

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
title ="Babble"
subtitle = "For String Quartet"
composer = "Brian Ellis"
tagline =""
}
\midi {}
\layout{}
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #"Vn. 1"
  midiInstrument = "Violin"
}{	\relative c'' {\vlnO}	}
\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn. 2"
  midiInstrument = "Violin"
}{	\relative c' {\vlnT}	}
\new Staff \with {
  instrumentName = #"Viola"
  shortInstrumentName = #"Va."
  midiInstrument = "Viola"
}{	\relative c'' {\viola}	}
\new Staff \with {
  instrumentName = #"Cello"
  shortInstrumentName = #"Vc."
  midiInstrument = "Viola"
}{	\relative c' {\cello}	}
>>

% \new PianoStaff <<
%   \set PianoStaff.instrumentName = #"Piano  "
%   \new Staff = "upper" \upper
%   \new Staff = "lower" \lower
% >>


}
