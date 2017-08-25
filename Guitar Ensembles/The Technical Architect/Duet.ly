\version "2.18.2"
	
#(set-global-staff-size 10)


largeSectionA = \relative c {
	f,16 [a f' g]
	f,16 [a f' g]
	f,16 [a f' g]
	f,16 [a d]
	f,16 [a f' g]
	f,16 [a f' g]
	c, [d g b]
	c, [d g b]
	e [d gis,]
	c, [d g b]
	c, [d g b]
	c, [d g b]

	f,16 [a f' g]
	f,16 [a f' g]
	f,16 [a f' g]
	f,16 [a d]
	f,16 [a f' g]
	f,16 [a f' g]
	c, [d g b]
	c, [d g b]
	e [d gis,]
	c, [d g b]
	c, [d g b]
	c, [d c' b]
}

thinSectionA = \relative c {
	f,8 [a] f [a] f [a] f [d'16] f,8 [a] f [a]
	c [g'] c, [g'] e [gis16] c,8 [g'] c,8 [g'] c,8 [g'] 
}

largeSectionB = \relative c' {
	a16 [c e]
	f, [a c]
	a [c e]
	f, [a c]
	e [d e]
	a,16 [c e]
	f, [a c]
	a [c]

	e [c g]
	c [g f]
	e' [c]
	e, [gis b]
	c [g d]
	e' [c g]
	c [g e]	
	e' [c g]
}

thinSectionB = \relative c {
	a'8 [e'16]
	f,8 [c'16]
	a8 [e'16]
	f,8 [c'16]
	e [d e]
	a,8 [e'16]
	f,8 [c'16]
	a8 e' [g,16]
	c8 [f,16]
	e'8 [e,16 gis b]
	c8 [d,16]
	e'8 [g,16]
	c8 [e,16]
	e'8 [g,16]
	
}

one = \relative c' { e4 c }


\header{
title ="The Technical Architect"
composer = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout{}
\unfoldRepeats {  

<<
\new Staff \with {
  instrumentName = #"1"
  shortInstrumentName = #"1"
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c' {
	\clef "treble_8"
	\tempo 4 = 90
	\repeat volta 23 {r4}
	\repeat volta 11 { \one} g'
	\repeat volta 7 { a, c d } c g'
	\repeat volta 3 { a, e' c f a, c d } c g'
	\repeat volta 2 { f c d f d a c d e g c, } g'
	\repeat volta 22 {f} g
	
	\repeat volta 11 { c, e } g
	\repeat volta 7 { d c a } c g'
	\repeat volta 3 { d c a f' c e a, } c g'
	\repeat volta 2 { f c d f d a c d e g c, } g'
	
	\repeat volta 3 { a, e' c f a, c d } c g'
	\repeat volta 3 { a, e' c f a, c d } c g'
	\repeat volta 3 { a8 [a] e' [e] c [c] f [f] a, [a] c [c] d [d] } c4 g'

	\repeat volta 11 { e8 [e] c [c] } g'4
	\repeat volta 7 { a,8 [f] c' [g] d' [e,] } c'4 g'
	\repeat volta 3 { a,8 [f] e' [g,] c [e,] f [d'] a [e] c' [f,] d' [g,] }
		c4 g'
	\repeat volta 2 { f8 [f] c [c] d [d] f [f] d [d] a [a]
		c [c] d [d] e [e] g [g] c, [c] } g'4

	\repeat volta 22 {f} g
	\repeat volta 11 { e8 [e] c [c] } g'4
	\repeat volta 3 { a,8 [f] e' [g,] c [e,] f [d'] a [e] c' [f,] d' [g,] }
		c4 g'
	\repeat volta 3 { a,8 [f] e' [g,] c [e,] f [d'] a [e] c' [f,] d' [g,] }
		c4 g'

	\largeSectionA
	\thinSectionA
	\thinSectionA
	<f,,, a>1


	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"2"
  shortInstrumentName = #"2"
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	
	\relative c {
	\clef "treble_8"
	\time 23/16	

\repeat volta 5 { \largeSectionA } 
\repeat volta 2 { \thinSectionA }
\repeat volta 4 { \largeSectionA }
\repeat volta 2 { \thinSectionA }

\repeat volta 2 { \thinSectionB }
\repeat volta 2 { \thinSectionB }

\repeat volta 8 { \largeSectionB }
\repeat volta 2 { \thinSectionB }
\repeat volta 8 { \largeSectionB }

\repeat volta 2 { \thinSectionB }
	<f a>1

}
}
>>
}
}