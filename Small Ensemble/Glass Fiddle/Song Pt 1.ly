\version "2.18.2"
	
#(set-global-staff-size 22)
	
\header{
piece ="Song, Pt. 1"
composer = "Brian Ellis"
tagline =""
}
\score{

\new StaffGroup <<
%=========================================================================
\new Staff \with {
  instrumentName = #"Flute"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\relative c'' {
\compressFullBarRests
	\key c \major
	\clef "treble"
\mark \default
	\time 5/4
	R1*5/4*6
	R1*5/4*6

\mark \default
	\time 7/8
	c8 [g e] r c'[ a g]
	d' [aes f] r d'[ bes aes]
	c [g e] r c' [a g]
	b[ gis e] r d'[ c b]
	a[ g f] r a [g f]
	aes[ g f] r aes[ g f]

\mark \default
	r2 c'8[ a g]
	r2 d'8[ bes aes]
	r2 c8 [a g]
	b8[ gis e gis] r4.
	a8[ g f g] r4.
	aes8[ g f] g r4.

\mark \default
	\time 5/4
	R1*5/4*6
	R1*5/4*6

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
\mark \default
	\key c \major
	\time 5/4

	c4 g e g c
	d aes f aes d
	c g e g c
	b gis e gis b
	a g f g a
	aes g f g aes

	c g e g c
	d aes f aes d
	c g e g c
	b gis e gis b
	a g f g a
	aes g f g aes


\mark \default

	\time 7/8
	c8 [g e g] c[ a g]
	d' [aes f aes] d[ bes aes]
	c [g e g] c [a g]
	b[ gis e gis] d'[ c b]
	a[ g f g] a [g f]
	aes[ g f g] aes[  g f]
\mark \default


	c'8 [g e g] c[ a g]
	d' [aes f aes] d[ bes aes]
	c [g e g] c [a g]
	b[ gis e gis] d'[ c b]
	a[ g f g] a [g f]
	aes[ g f g] aes[ g f]

\mark \default

\time 5/4
	e8 r8 r1
	f8 r8 r1
	g8 r8 r1
	gis8 r8 r1
	a8 r8 r1
	aes8 r8 r1

	R1*5/4*6

	}	
}
%=========================================================================

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	
	\relative c' {
\compressFullBarRests
\mark \default

	\time 5/4
	g'1 c,4
	f1 d4
	e1 c4
	d1 ~d4
	c1 c4
	c1 f4
	
	g1 c,4
	f1 d4
	e1 c4
	d1 ~d4
	c1 c4
	c1 f4
	\mark \default
\time 7/8
	c8 r c r c r e
	d r d r d r f
	e r e r e r g
	e r e r e r gis
	f r f r f r e
	f r f r f r d
	\mark \default

	c8 r c r c r e
	d r d r d r f
	e r e r e r g
	e r e r e r gis
	f r f r f r e
	f r f r f r b'

	\mark \default

\time 5/4
	c4 g e g c
	d aes f aes d
	c g e g c
	b gis e gis b
	a g f g a
	aes b g aes f

	e1 ~e4
	d1 b4
	c1 ~c4
	b1 ~b4
	a1 ~a4
	aes1 ~aes4


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
\mark \default

	\time 5/4
	R1*5/4*6
	R1*5/4*6
\mark \default
\time 7/8
	g8 r g r g r c,
	f r f r f r d
	e r e r e r c
	d r d r d r d
	c r c r c r d
	c r c r c r f

	g8 r g r g r c,
	f r f r f r d
	e r e r e r c
	d r d r d r d
	c r c r c r d
	c r c r c r f
\mark \default
\time 5/4
	R1*5/4*6
	c'4 g e g c
	d aes f aes d
	e c g c e
	e d b d e
	f c a c f
	f c aes c f	
	}	
}

%=========================================================================

\new Staff \with {
  instrumentName = #"Cello"
  shortInstrumentName = #""
  midiInstrument = "Cello"
}{
	
	\relative c {
\compressFullBarRests
	\clef "bass"
\mark \default

	\time 5/4
	R1*5/4*6
	R1*5/4*6
\mark \default
\time 7/8
	e8 [(d)] e [(d)] e [(d)] e
	d [(c)] d [(c)] d [(c)] d
	c [(b)] c [(b)] c [(b)] c
	b [(a)] b [(a)] b [(a)] b
	c [(a)] c [(a)] c [(a)] c
	c [(aes)] c [(aes)] c [(aes)] c 
\mark \default

	e8 r e r e [(d)] e
	d r d r d [(c)] d
	c r c r c [(b)] c
	b [(a)] b [(a)] b r b
	c [(a)] c [(a)] c r c
	c [(aes)] c [(aes)] c r c 
\mark \default
\time 5/4
	R1*5/4*6
	R1*5/4*6

	}	
}

%=========================================================================

\new Staff \with {
  instrumentName = #"Vibes"
  shortInstrumentName = #""
  midiInstrument = "Vibraphone"
}{
	\relative c'' {
\compressFullBarRests

	\key c \major
	\clef "treble"
\mark \default

	\time 5/4
	R1*5/4*6
	R1*5/4*6
\mark \default

	\time 7/8
	c8 [g e] r c'[ a g]
	d' [aes f] r d'[ bes aes]
	c [g e] r c' [a g]
	b[ gis e] r d'[ c b]
	a[ g f] r a [g f]
	aes[ g f] r aes[ g f]

\mark \default

	r2 c'8[ a g]
	r2 d'8[ bes aes]
	r2 c8 [a g]
	b8[ gis e gis] r4.
	a8[ g f g] r4.
	aes8[ g f] g r4.
\mark \default
\time 5/4
	R1*5/4*6
	R1*5/4*6

	}	
}


%=========================================================================

\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #""
  midiInstrument = "Vibraphone"
}{
	\relative c' {
\compressFullBarRests

	\key c \major
	\clef "treble"
\mark \default
\time 5/4
	R1*5/4*6
	R1*5/4*6


\mark \default
	\time 7/8
	<c e g c e>4 <c e g c e>4 <c e g c e>4.
	<bes f' aes d>4 <bes f' aes d>4 <bes f' aes d>4.
	<c e g c e>4 <c e g c e>4 <c e g c e>4.
	<e, b' e gis b e>4 <e b' e gis b e>4 <e b' e gis b e>4.
	<f c' f a c f>4 <f c' f a c f>4 <f c' f a c f>4.
	<f c' f aes c f>4 <f c' f aes c f>4 <f c' f aes c f>4.
\mark \default
	r2 <c' e g c e>4.
	r2 <bes f' aes d>4.
	r2 <c e g c e>4.
	<e, b' e gis b e>4 <e b' e gis b e>4 r4.
	<f c' f a c f>4 <f c' f a c f>4 r4.
	<f c' f aes c f>4 <f c' f aes c f>4 r4.


\mark \default
\time 5/4
	R1*5/4*6
	R1*5/4*6

	}	
}

>>
\midi {}
\layout{}
}