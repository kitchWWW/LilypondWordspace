\version "2.18.2"
\header{
title ="Sarabande"
subtitle="for String Quartet"
composer = "Brian Ellis"
tagline =""
}

%#(set-global-staff-size 12)

\paper{
  left-margin = 1.5\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  print-page-number = ##f
%	#(set-paper-size "letter" 'landscape)
}


\score{
\midi {}
\layout{}
%\unfoldRepeats {
\new StaffGroup

<<
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #"Vn.1"
  midiInstrument = "Violin"
}{
	
	\relative c'' {
	\repeat volta 2 {
	\time 3/2
	\tempo 4 = 100
	\key d \minor
	<f d>2 <g bes,> r
	<a c,> <bes d,> r


	}
	
	
	
		
	}	
}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "Violin"
}{
	\relative c'' {
	\repeat volta 2 {
	
	}
	
	
	}
}

\new Staff \with {
  instrumentName = #"Viola "
  shortInstrumentName = #"Vla. "
  midiInstrument = "viola"
}{
	\relative c' {
	\clef "alto"
	\repeat volta 2{
	

	}
	
	
	}	
}

\new Staff \with {
  instrumentName = #"Cello "
  shortInstrumentName = #"Cel. "
  midiInstrument = "Violin"
}{
	\relative c {
	\clef "bass"
	\repeat volta 2 {



	}
	
	
	}	
}
>>
%}


}