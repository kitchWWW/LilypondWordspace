\version "2.18.2"
\header{
title ="Sketch"
subtitle="for String Quartet"
composer = "Brian Ellis"
tagline =""
}

#(set-global-staff-size 15)

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
	\partial 4 e4( c'4 b4. g8 a4~a) r
	e4 (c' b4. g8 a2)
	e4 (c' b4. g8 a2) r4
	e4 (c' b4. g8 a4 ~ a2.) r4
	r2 r8 c4.~c1
}
}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "Violin"
}{
	\relative c' {
	\partial 4 e4( c'4 b4. g8 a4~a) r
	e4 (c' b4. g8 a2)
	e4 (c' b4. g8 a2) r4
	e4 (c' b4. g8 a4 ~ a2.) r4	
	e4 (c' b4. g8 a4)
	e4 (c' b4. g8 a4)
	e4 (c' b4. g8 a4)

	

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
	\partial 4 r4
	r1 r1 r1 r1 r1 r1 r1  r8 e4 fis8~fis4. g8 f2

}	
}

\new Staff \with {
  instrumentName = #"Cello "
  shortInstrumentName = #"Cel. "
  midiInstrument = "Cello"
}{
	\relative c {
	\clef "bass"
	
	}	
}
>>
%}


}