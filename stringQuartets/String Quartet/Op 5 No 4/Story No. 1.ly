\version "2.18.2"
\header{
title ="Story No. 1"
subtitle="for String Quartet"
composer = "Brian Ellis"
tagline =""
}

#(set-global-staff-size 10)

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
	\time 2/4
	\tempo 4 = 90
	fis8 cis fis16 gis8.
	fis8 d fis16 gis8.
	e8 c a'16 g fis8
	e8 d16 c d8 e 
	fis8 g fis16 g a8
	fis8 g16 fis g8 a
	g b a g e d e g
	}	
}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "Violin"
}{
	\relative c'' {
	\key g \major
	cis8 a16 b cis8 a
	d8 a16 b d8 b
	b8 g' e d
	c a' g e
	d8 a b16 d8.
	c8 a b16 c8. 
	d8 b a16 b d8
	d8 e g16 e d8
	
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