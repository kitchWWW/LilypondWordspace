\version "4.216.4"
\header{
title ="Theme and Variations"
subtitle=""
composer = "Brian Ellis"
tagline =""
}

%#(set-global-staff-size 24)

\paper{
  left-margin = 2.5\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-page-number = ##f
%	#(set-paper-size "letter" 'landscape)
}


\score{
\midi {}
\layout{}
\new StaffGroup

<<
\new Staff \with {
  instrumentName = #""
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	
	\relative c'' {
	\key c \major
	\tempo 4 = 80
	\time 3/8
	
	c4(\p c8
	d4 d8
	e4 f8
	e4.)
	g4( g8
	f4 f8
	e4) d8
	(g4) b,8 (
	
	e4)( e8
	d4 d8
	e8 f16 g a8 
	c4) f,8(
	e8 c16 d e8 a8 d,16 e fis8
	g4.) ~g8 a b
	c4 c8
	b4 b8
	a8 g f
	g4 r8
	f4 f8	
	f4 f8
	e4 d8
	c4. ~c



	
	}	
}

\new Staff \with {
  instrumentName = #""
  shortInstrumentName = #""
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c {
	\clef "treble_8"
	\time 3/8
	
<<{
	c'8\mf g c d g, d' e4. r8 c r
	g' g, c e g, c g'4. r8 <f d> r
	<c e>8 g c  d g, d' e4. r8 c r
	e8\2 c e a c, d g4. r
}\\{
	e,4. f <e g c> s
	e f <e g c> s
	e f <f a c> s
	fis fis <g g b> 
}>>

<<{
	c'8 e, a
	b b, g'
	a c, e
	g g, b
	e a, c
	e c d
	e c b
	c8 g e c4.
}\\{
	 a4. g' f  g f f g
}>>

	\bar "||"

	}
}
>>


}