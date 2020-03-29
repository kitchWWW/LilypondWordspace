\version "2.18.2"
	
%#(set-global-staff-size 22)
	
\header{
title ="Solo"
composer = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout{}

<<
\new Staff \with {
  instrumentName = #"Voice"
  shortInstrumentName = #"V."
  midiInstrument = "Voice Oohs"
}{
	
	\relative c' {
	\time 4/4
	\tempo 4 =120
	\key c \major

	r1 r1 r1 r1 r1 r1
	\bar ".|:"
	c1 ~c d ~d e ~e r r
	\bar ":|."	

	c1 ~c d ~d e ~e d~ d r r

	c~ c d ~d e ~e d~d c~c b~b a~a~a~a~a~a
	\bar "||"
	
	r1 r r r
	r r r r
	
	c1 ~c d ~d e ~e r r
	
	c1 ~c d ~d e ~e e ~e r r
	
	c1 ~c d ~d c~c b~b a~a r r
	c~c d~d e~e a,~a a~a a~a

	r r r r
	c1
	b2 e4 d
	d8 c4 c16 d c4. c16 c
	c4 d e r
	r1 r
	c~c d~d e~e d~d e~e r r

	c~c b2 e4 d
	d8 c4 c16 d c4. c16 c
	c4 d e r

	c1 b2 e4 d
	d8 c4 c16 d c4. c16 c
\time 3/4
	c4 d e
\time 4/4
	c1~c b1 e2 d2
	d4 c2 c8 d c2. c8 c \times 2/3{c2 d e}


	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"G."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c' {
	\key c \major
	\clef "treble_8"
	\times 4/5{<g g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }

<<{	\times 4/5{<g, g>2 <e' e>2. }
}\\{
c,1
}>>

	\times 4/5{<g' g>2 <e' e>2. }

\bar ".|:"
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
\bar ":|." \mark \markup{"x3"}


	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }

\break

	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }

\bar "||"

	e,32 g c e 	e, g c e e, g c e e, g c e
	e, g c e e, g c e e, g c e e, g c e
	e, gis b e e, gis b e e, gis b e e, gis b e 
	e, gis b e e, gis b e e, gis b e e, gis b e 
	f, a c f f, a c f f, a c f f, a c f 
	f, a c f f, a c f f, a c f f, a c f 
	f, aes c f f, aes c f f, aes c f f, aes c f
	f, aes c f f, aes c f f, aes c f f, aes c f

\bar "||"
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }



	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }

\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }


\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }


\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }

\bar "||"

	e,32 g c e 	e, g c e e, g c e e, g c e
	e, g c e e, g c e e, g c e e, g c e
	e, gis b e e, gis b e e, gis b e e, gis b e 
	e, gis b e e, gis b e e, gis b e e, gis b e 
	f, a c f f, a c f f, a c f f, a c f 
	f, a c f f, a c f f, a c f f, a c f 
	f, aes c f f, aes c f f, aes c f f, aes c f
	f, aes c f f, aes c f f, aes c f f, aes c f

\bar "||"

	e,32 g c e 	e, g c e e, g c e e, g c e
	e, g c e e, g c e e, g c e e, g c e
	e, gis b e e, gis b e e, gis b e e, gis b e 
	e, gis b e e, gis b e e, gis b e e, gis b e 
	f, a c f f, a c f f, a c f f, a c f 
	f, a c f f, a c f f, a c f f, a c f 
	f, aes c f f, aes c f f, aes c f f, aes c f
	f, aes c f f, aes c f f, aes c f f, aes c f

\bar "||"


	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }

	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }


	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	e,32 gis b e e, gis b e e, gis b e e, gis b e 
	e, gis b e e, gis b e e, gis b e e, gis b e 
	f, a c f f, a c f f, a c f f, a c f 
	f, a c f f, a c f f, a c f f, a c f 
	f, aes c f f, aes c f f, aes c f f, aes c f
	f, aes c f f, aes c f f, aes c f f, aes c f

	e,16 g c e 	e, g c e e, g c e e, g c e
	e, gis b e e, gis b e e, gis b e e, gis b e 
	f, a c f f, a c f f, a c f f, a c f 
	\time 3/4
	f, aes c f f, aes c f f, aes c f
	\time 4/4

	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }

	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }
	\times 4/5{<g, g>2 <e' e>2. }



	}	
}
>>
}