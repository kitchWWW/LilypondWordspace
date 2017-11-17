\version "2.18.2"
	
#(set-global-staff-size 22)
	
\header{
piece ="Song, Pt. 2"
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
\time 2/2
	R1*6
	R1*6
\mark \default
\time 5/4
	R1*5/4*7
	R1*5/4*8
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
\time 2/2
	R1*6
	R1*6
\mark \default
\time 5/4
	c'4 g e g c
	d aes f aes d
	e c g c e
	e d b d e
	f c a c f
	f c a c f
	f c a c f

	c,2 c2 c4
	c2 c2 c4
	d2 d2 d4
	d2 d2 d4
	e2 e2 e4
	e2 e2 e4
	e2 e2 e4
	e2 e2 e4

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

\mark \default
\time 2/2
	R1*6
	R1*6
\mark \default
\time 5/4
	c1 ~ c4
	d1 ~ d4
	e1 ~ e4
	e1 ~ e4
	f1 ~ f4
	f1 ~ f4
	f1 ~ f4

	c,,2 c2 c4
	c2 c2 c4
	d2 d2 d4
	d2 d2 d4
	c2 c2 c4
	c2 c2 c4
	b2 b2 b4
	b2 b2 b4

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
\time 2/2
	R1*6
	R1*6
\mark \default
\time 5/4
	g2 g g4
	aes2 aes aes4
	g2 g g4
	gis2 gis gis4
	a2 a2 a4
	a2 a2 a4
	a2 a2 a4

	g2 g g4
	g2 g g4
	aes2 aes aes4
	aes2 aes aes4
	g2 g g4
	g2 g g4
	gis2 gis2 gis4
	gis2 gis2 gis4
	
	
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
\time 2/2
	e2 e f f e e b b c1 ~ c
	e2 e f f e e b b c1 ~ c
\mark \default
\time 5/4
	e2 e2 e4
	f2 f2 f4
	e2 e2 e4
	e2 e2 e4
	f2 f2 f4
	f2 f2 f4
	f2 f2 f4

	e2 e2 e4
	e2 e2 e4
	f2 f2 f4
	f2 f2 f4
	e2 e2 e4
	e2 e2 e4
	e2 e2 e4
	e2 e2 e4
	
	
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
\time 2/2
	R1*6
	c1 d e e f aes
\mark \default
\time 5/4
	c1 r4
	R1*5/4*6
	R1*5/4*8

	}	
}
%=========================================================================

\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\relative c' {
\compressFullBarRests

	\key c \major
	\clef "treble"
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
	\time 2/2
	e'8 g c e e, g c e
	f, aes d e f, aes d e 
	g, c e g g, c e g 
	e, gis b e e, gis b e 
	f, a c f f, a c f 
	f, aes c f f, aes c f 
\mark \default
	e,8 g c e e, g c e
	f, aes d e f, aes d e 
	g, c e g g, c e g 
	e, gis b e e, gis b e 
	f, a c f f, a c f 
	f, aes c f f, aes c f 
\mark \default
\time 5/4
	R1*5/4*7
	R1*5/4*8
	}	
}



>>
\midi {}
\layout{}
}