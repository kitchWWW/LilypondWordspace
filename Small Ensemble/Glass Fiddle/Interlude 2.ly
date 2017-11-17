\version "2.18.2"
		

\score{
\header{
piece ="Interlude 2"
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
	aes''1
	
	^\markup{\column {"  " 
	"Fade all notes in and out"
	"Tremolo pulse is taken from Viola"
	"Enter at you leasure"
	"For shift at m.7, follow Violin 2"
	"  "
	}}
	
	~aes ~ aes r
	r g ~ g ~ g r^\markup{\italic{\teeny "attacca"}}
	\bar "||"
	
	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\relative c'' {
\compressFullBarRests
	\key c \major
	r1 r1 r1 c1 ~ c ~ c c:32 c: c: r r^\markup{\italic{\teeny "attacca"}}
	}	
}
%=========================================================================

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	
	\relative c' {
	aes'1 ~ aes~ aes~ aes~ aes~ aes \bar"||" g ~ g ~ g ~ g ~ g^\markup{\italic{\teeny "attacca"}}

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
	c:32 c: c: c: c: c: 
	c: r r r r1^\markup{\italic{\teeny "attacca"}}

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
	r1 r1 r1 r1 r1 <c, aes'>
	<c g'>:32 <c g'>:32 r r r^\markup{\italic{\teeny "attacca"}}
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
	r1 <c aes'>^\markup{\italic{"bow"}}
	 ~ <c aes'> ~ <c aes'> ~ <c aes'> ~ <c aes'>
	<c g'>:32_\markup{\italic{"nat."}}
	 <c g'>:32 <c g'>:32 <c g'>:32 r1^\markup{\italic{\teeny "attacca"}}
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
	r1 r1 r1 r1 <c aes'> <c aes'> <c g'>:32 <c g'>: <c g'>: r r^\markup{\italic{\teeny "attacca"}}
	}	
}
>>
\midi {}
\layout{}
}



