\version "4.216.4"
\header{
title ="Guitar Thorn"
subtitle="for me"
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
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gtr."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c' {
	\tempo 4 = 100
	\clef "treble_8"
\time 6/8
	<c e,>4 g e'
\time 5/8
	<d f,> 8 g,4 e'
	<c e,>4 a8 e'4
	<c e,>4 g4 g'8
\time 4/8
	<c, e,>4 a8 g'
	<d f,>8 g,4 g'8
	<d f,>8 a e'4
\time 3/8
	<d f,>8 a g'
\time 4/8
	<c, e,>4 a8 g'
	<d f,>8 g,4 g'8
	<d f,>8 a e'4
\time 5/8
	<d f,>8 g,4 e'
	<c e,>4 a8 e'4
	<c e,>4 g4 f'8
\time 6/8
	<e, e'>4 g c
\time 5/8
	<f, g'>8 g4 c	
	<e, e'>4 a8 c4
	<e, e'>4 g d'8
\time 4/8
	<e, e'>4 a8 d8
	<f, g'>8 g4 d'8
	<f, g'>8 a8 c4
\time 3/8
	<f, g'>8 a d
\time 4/8
	<e, e'>4 a8 d8
	<f, g'>8 g4 d'8
	<f, g'>8 a8 c4
\time 5/8
	<f, g'>8 g4 c
	<e, e'>4 a8 c4
	<e, e'>4 g b8
\time 6/8
	<e, g>4 e' c
\time 5/8
	<f, a>8 e'4 c
	<e, g>4 g'8 c,4
	

	
	}
}
>>
%}


}