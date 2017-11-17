\version "2.18.2"
		

\score{
\header{
piece ="Interlude 1"
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
	{\concat{ \smaller \general-align #Y #DOWN \note #"1" #1 " ≈ " "8 seconds"}}
	r1
	c1 ~c 

	^\markup{\column {"  " 
	"Fade all notes in and out"
	"Tremolo pulse is taken from guitar"
	"Enter at you leasure"
	"  "
	}}

	r1 r1
	c'1~ c1 r1 r1 r1
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
	r1 r1 r1 r1 r1 r1 r1 c:32^\markup{\italic{arco}}
	 c: c: ^\markup{\italic{attacca}}

	}	
}
%=========================================================================

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	
	\relative c' {
	r1 r1 r1 c1^\markup{\italic{arco}} ~c r r r c1~
	c2 ^\markup{\italic{attacca}} 
	g' 

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
	r1 r1 r1 r1 r1 r1 c1:32^\markup{\italic{pizz.}} c: r1 r1
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
	r1 r1 c,1^\markup{\italic{arco}} ~ c ~ c2 c' ~ c1 ~ c1 r1 r1 r1
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
	c1^\markup{\italic{bow}} ~ c1 ~  c ~ c2 c' ~ c1 ~ c 
	c':32^\markup{\italic{nat.}} c: c: r1
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
	r1 r1 r1 r1 c1:32 c2:32 c'2: c1:32 c2: c'2: r1 r1

	}	
}
>>
\midi {}
  \layout {
  }
}



