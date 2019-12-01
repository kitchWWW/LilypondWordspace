\version "2.18.2"
	
#(set-global-staff-size 22)
	
\header{
title ="Trio"
composer = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout{}

<<

\new Staff \with {
  instrumentName = #"1"
  shortInstrumentName = #"1"
  midiInstrument = "Voice Oohs"
}{
	
	\relative c'' {
	\time 3/4
	
	r2. r r r r r r r r r r r r r r r r r r
	r4 b2~b4 e2~e4
	b2~b4 e2~e4
	b2~b4 e2~e4
	b2~b4 e2~e4
	b2~b4 e2~e4
	b2~b4 e2~e4
	b2~b4 e2~e4
	b2~b4 e2~e4
	b2~b4 e2~e4 
	b2~b4 c2~c4 e2~e4
	b2~b4 c2~c4 e2~e4
	b2~b4 c2~c4 d2~d4 e2~e4
	r2	
	

	}	
}


\new Staff \with {
  instrumentName = #"2"
  shortInstrumentName = #"2"
  midiInstrument = "Voice Oohs"
}{
	
	\relative c'' {
	\time 3/4
	
	r2. r r r
	r
	
	r2  g4~g2( g4~g2 a4~a2)
g4~g2( g4~g2 a4~a2)
g4~g2( g4~g2 a4~a2)
g4~g2( g4~g2 a4~a2)
g4~g2( g4~g2 a4~a2)
g4~g2( g4~g2 a4~a2)
g4~g2( f4~f2 a4~a2)
g4~g2( f4~f2 a4~a2)
g4~g2( f4~f2 g4~g2 a4~a2)
g4~g2( f4~f2 g4~g2 a4~a2)
g4~g2( f4~f2 g4~g2 a4~a2)
g4~g2( f4~f2 e4~e2 g4~g2 a4~a2.)
	r2 c4
	}	
}


%=========================================================================
\new Staff \with {
  instrumentName = #"3"
  shortInstrumentName = #"vc."
  midiInstrument = "Voice Oohs"
}{
	\relative c' {
	\time 3/4
	c2. (e f f)
	c2. (e f f)
	c2. (e f f)
	c2. (e f f)
	c2. (e f f)
	c2. (e f f)
	c2. (a g g)
	c2. (a g g)
	c2. (a g g f4. g4.)
	c2. (a g g f4. g4.)
	c2. (a g g f4. g4.)
	r2 c4	
	}	
}
>>
}