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
	c4 d e g c, d e g c, d e g c, d e g c, d e g c, d e g c, d e g c, d e g
	}
}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "Violin"
}{
	\relative c' {
	r1 r1 c4 g b d c g b d c g b d c g b d c g b d c g b d 
	
	}
}

\new Staff \with {
  instrumentName = #"Not brush "
  shortInstrumentName = #"Vla. "
  midiInstrument = "Viola"
}{
	\relative c' {
	r1
	}	
}


\new Staff \with {
  instrumentName = #"Viola "
  shortInstrumentName = #"Vla. "
  midiInstrument = "Viola"
}{
	\relative c {
	\clef "alto"
	r1 r r r e4 d e g e d e g e d e g e d e g 
	}	
}

\new Staff \with {
  instrumentName = #"Cello "
  shortInstrumentName = #"Cel. "
  midiInstrument = "Cello"
}{
	\relative c {
	\clef "bass"
	r1 r r r r r c4 g e g c4 g e g 
	
	}	
}
>>
%}


}