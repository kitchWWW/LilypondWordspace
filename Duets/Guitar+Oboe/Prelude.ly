\version "2.18.2"
\header{
title ="Prelude"
subtitle="for Oboe and Guitar"
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
%\unfoldRepeats {
\new StaffGroup

<<
\new Staff \with {
  instrumentName = #"Oboe"
  shortInstrumentName = #"ob."
  midiInstrument = "Oboe"
}{
	
	\relative c'' {
	\tempo 4 = 80
	\time 2/4
	r2
	f4 e c16 g c8 ~c8 f,8 e2
	r2 g4. d'8 c16 b c8 e,4 f2
	r2
	r r2 
	\override Beam.grow-direction = #RIGHT
	\featherDurations #(ly:make-moment 2/3)
	{ c'16[ b c b c b c b] }
	
	 a4 r4
	r2 g'4. f8 e16 f e8 ~e4 \time 1/4 a,4
	\time 4/4
	c2 r2 r1
	}	
}

\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gtr."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c, {
	\clef "treble_8"
	\time 2/4
	e8 <g''\harmonic b\harmonic e\harmonic>4.^"XII"
	<a,, e' g c>2 ~ <a e' g c> ~<a e' g c>
	
	e8 <g''\harmonic b\harmonic e\harmonic>4.^"XII"
	<a,, f' b c>2 ~ <a f' b c> ~<a f' b c>
	
	e8 <g''\harmonic b\harmonic e\harmonic>4.^"XII"
	a,,4 c e16 f e8 e4 <f a b c>2 ~<f a b c>

	e,8 <g''\harmonic b\harmonic e\harmonic>4.^"XII"
	<f, a c e>2 ~<f a c e>
	r4
	\time 4/4
	\tempo 4 = 100
	c8 <g' c> <g c> <g c> e <g c> <g c> <g c> 
	c,8 <g' c> <g c> <g c> e <g c> <g c> <g c> 
	\bar "||"
	
	}
}
>>
%}


}