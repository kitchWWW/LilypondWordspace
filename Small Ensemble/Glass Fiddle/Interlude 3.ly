\version "2.18.2"

\score{
	
\header{
piece ="Interlude 3"
tagline =""
}
\new StaffGroup <<
%=========================================================================
\new Staff \with {
  instrumentName = #"Flute"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\relative c' {
\compressFullBarRests
	\key c \major
	\time 1/1
	\tempo \markup
	{\concat{ \smaller \general-align #Y #DOWN \note #"1" #1 " ≈ " "4 seconds"}}
	r1 r1
	c''1
	
	
	
	~c 

^\markup{\column {"  " 
	"Fade all notes in and out"
	"Tremolo pulse is taken from Violin 1 and Cello"
	"Enter at you leasure"
	"For shift at m.7, follow Violin 2"
	"  "
	}}

	~ c r
	r b ~ b2 b,2 ~ b1 r
	\bar "||"
	
	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\relative c' {
\compressFullBarRests
	\key e \major
	e:32 e: e: e: e: e: 
\bar "||"
	e r r r r1
	}	
}
%=========================================================================

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	
	\relative c' {
	r1 r1 r1 a':32 a:32 a:32
	gis ~ gis ~ gis ~ gis ~ gis

	}	
}

%=========================================================================

\new Staff \with {
  instrumentName = #"Viola"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	
	\relative c' {
\compressFullBarRests
	\clef "alto"
	r1 r1 r1 r1 r1 c1:32 b~b r1 r1 r1

	}	
}

%=========================================================================

\new Staff \with {
  instrumentName = #"Cello"
  shortInstrumentName = #""
  midiInstrument = "Cello"
}{
	
	\relative c {
	\clef "bass"
	\key e \major
	e:32 e: e2: e, e1: e: e: 
	e r r r r1
	}	
}

%=========================================================================
\new Staff \with {
  instrumentName = #"Vibes"
  shortInstrumentName = #""
  midiInstrument = "vibraphone"
}{
	\relative c {
	\key c \major
	\clef "treble_8"
	r1 r1 r1 <e e'>:32 <<{e'1:32}\\{e,2:32 e,:32}>> 
	<e e''>1:32<e e''>1 <<{e''2 e,}\\{e,1}>>  <e e'>
	r1 r1

	}	
}%=========================================================================
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #""
  midiInstrument = "vibraphone"
}{
	\relative c {
	\key c \major
	\clef "treble_8"
		r1 <e c' e>1:32 <e c' e>1:
	<e a c e>1: <e a c e>1: <e a c e>1:
	<e gis b e>1 <e gis b e>1 <e gis b e>1 
	<e gis b e>1 
	<e gis b e>1 
}	
}
>>
\midi {}
\layout{}
}



