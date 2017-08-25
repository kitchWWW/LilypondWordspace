\version "2.18.2"
	
#(set-global-staff-size 17)
	
\header{
title ="Music"
composer = "Brian Ellis"
tagline =""
}
\score{

\new StaffGroup <<
\new Staff \with {
  instrumentName = #"Violin"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\relative c' {
	\key c \major

\bar ".|:"
	g'4 g g g
	g g g g
	r1 r

	r1
	g4 g g g	
	g4 g g g	
	r1
	
	r1
	g4 g g g	
	g4 g g g	
	r1
	
	r r
	g4 g g g	
	g4 g g g8 g	

\bar ":|.|:"
	
	g4 g g g	
	g4 g g g	
	g4 g g g	
	g4 g g g	
	r1
	a1~ a
	r
\bar ":|.|:"
	a4 a a a
	a4 a a a
	a4 a a a
	a4 a a a

	r1 r r r
	r1
	a4 a a a
	a4 a a a
	r1
	r1
	a4 a a a
	a4 a a a
	r2.. a8
\bar ":|.|:"

	a4 a a a
	a a a a
	a a a a
	r1
	r1
	a8 c a c a c a c
	a c a c a c a c
	a c a c a c a c
	
\bar ":|.|:"
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c

\bar ":|."
	
	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Vibes"
  shortInstrumentName = #""
  midiInstrument = "vibraphone"
}{
	
	\relative c' {
	\time 2/2
	
	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e
	r1 r r r
	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e
	r1 r r r	

	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e
	r1 r1
	c4 c c c
	c c c c8 e

	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e

	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e

	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e

	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e
	c8 e c e c e c e

	c8 e c e c e c e
	c8 e c e c e c e
	r1 r1 r1 r1
	f1 r
	r1
	f~ f r
	f, ~ f ~ f ~ f
	r r r
	f''4 f f f
	f f f f
	r1
	f4 f f f
	f f f f

	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #""
  midiInstrument = "vibraphone"
}{
	\relative c {
	\key c \major
	\clef "treble_8"
	e8 g e g e g e g
	e8 g e g e g e g
	e8 g e g e g e g
	e8 g e g e g e g

	e8 g e g e g e g
	e8 g e g e g e g
	e8 g e g e g e g
	e8 g e g e g e g

	e8 g e g e g e g
	e8 g e g e g e g
	e8 g e g e g e g
	e8 g e g e g e g
	
	e8 g e g e g e g
	e8 g e g e g e g
	e8 g e g e g e g
	e8 g e g e g e g


	e8 g e g e g e g
	r1 r1
	e8 g e g e g e g
	e8 g e g e g e g
	e8 g e g e g e g
	e8 g e g e g e g
	r1
	
	<a e>	
	<a e>	
	r1
	r
	r <e, a>
	<e a>
	r
	e'8 a e a e a e a
	e a e a e a e a
	e a e a e a e a
	e a e a e a e a
	e,1 ~ e
	e ~e
	
	a'8 c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c
	a c a c a c a c

	r1
	r1
	f8 a f a f a f a
	f a f a f a f a
	f a f a f a f a
	f a f a f a f a
	r1 r1 
	f,8 a f a f a f a
	f a f a f a f a
	r1 r1 
	f,8 a f a f a f a
	f a f a f a f a
	f a f a f a f a
	f a f a f a f a

	}	
}
>>
\midi {}
\layout{}
}