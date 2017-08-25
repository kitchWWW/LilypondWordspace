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
	f2 g4 a g8 f e d
	d1.
	bes2 c4 d~d2
	a,4 g'' a bes ~bes2
	c,1.
	f,4 g8 f e2 d'4 f
	d2 g4 f d2
	dis4 fis e g8 a e2
	}
	\key d \minor
	a,2 g4 a8 bes ~bes2 
	
		
	}	
}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "Violin"
}{
	\relative c'' {
	\repeat volta 2 {
	d1 a2
	a1 f2
	e1 a8 b ~ b4
	a1. ~
	a1 e'2
	d,4 e8 d c2 f2
	g1.
	ais2 b2 b8 e c d
	}
	\key d \minor
	
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
	\relative c' {
	\clef "alto"
	\repeat volta 2{
	a1 f2
	bes1 a2
	bes1~ bes4 r8 a16 g
	f1 bes'8 a f4
	e4. f8 e d e f g16 a b cis e c bes c
	a1.
	b4 b, ~b2 d8 b ~b4
	fis2 g1
	}
	
	
	}	
}

\new Staff \with {
  instrumentName = #"Cello "
  shortInstrumentName = #"Cel. "
  midiInstrument = "Cello"
}{
	\relative c {
	\clef "bass"
	\repeat volta 2 {
	d1.
	f2 bes4 a g8 f e d'
	c1 ~c4 d16 e ~e8
	c1 ~c4 f,,16 g c bes
	a1.
	d4 e8 d c8 bes a16 g f e d2
	d2 g ~g4 a8 b
	b2 c1
	}
	
	
	}	
}
>>
%}


}