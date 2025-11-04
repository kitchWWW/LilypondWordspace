\version "2.18.2"
\header{
title ="Story No. 1"
subtitle="for String Quartet"
composer = "Brian Ellis"
tagline =""
}

#(set-global-staff-size 15)

\paper{
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  print-page-number = ##f
	#(set-paper-size "letter" 'landscape)
}


\score{
\midi {}
\layout{}

<<
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #"Vn.1"
  midiInstrument = "Violin"
}{
	
	\relative c'' {
	\key g \major
	\time 3/4
	\tempo 4 = 130
	\partial 4 d4
	\grace fis8 a2 a4 a fis a b a4. b8 \grace a8
	fis2 d4
	\grace fis8 a2 a4 a fis a e d e fis2 d4
	\grace fis8 a2 a4 a fis a b d e cis2 d4
	\grace e8 b4 d b a b a fis a e d2
	}	
}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "Violin"
}{
	\relative c'' {
	\key g \major
	r8 d r e r fis r fis
	}
}

\new Staff \with {
  instrumentName = #"Viola "
  shortInstrumentName = #"Vla. "
  midiInstrument = "viola"
}{
	\relative c' {
	\clef "alto"
	\key g \major
	
	
	}	
}

\new Staff \with {
  instrumentName = #"Cello "
  shortInstrumentName = #"Cel. "
  midiInstrument = "Violin"
}{
	\relative c {
	\clef "bass"
	\key g \major
		
	}	
}
>>
}