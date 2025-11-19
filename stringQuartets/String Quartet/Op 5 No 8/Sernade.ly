\version "2.18.2"
\header{
title ="Serinade"
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
	\time 12/8
	\tempo 4. = 100
	c8\pp\< c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 
	c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8\mp
	c8( c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 
	c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 
	c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 
	c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8)
	}
}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "Violin"
}{
	\relative c'' {
	\time 12/8
	a8\pp\< a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 
	a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8\mp
	a8->( a8 a8 a a16 a a8 a8 a8 a8 a8 a8 a8 
	a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 
	a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 
	a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8 a8)
	}
}

\new Staff \with {
  instrumentName = #"Not brush "
  shortInstrumentName = #"Vla. "
  midiInstrument = "Viola"
}{
	\relative c' {
	r1.
	}	
}


\new Staff \with {
  instrumentName = #"Viola "
  shortInstrumentName = #"Vla. "
  midiInstrument = "Viola"
}{
	\relative c {
	\clef "alto"
	r1. r1. r4. r4 c8 e2.
	}	
}

\new Staff \with {
  instrumentName = #"Cello "
  shortInstrumentName = #"Cel. "
  midiInstrument = "Cello"
}{
	\relative c {
	\clef "bass"
	r1. r2. r4. r4 e,8 (
	a2.) r4. r4 
	}	
}
>>
%}


}