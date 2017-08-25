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
	\time 2/4
	


	
	}	
}

\new Staff \with {
  instrumentName = #""
  shortInstrumentName = #""
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c' {
	\clef "treble_8"
	\time 2/4
	<c e,>8 g <c e,> g 
	<d' f,> g, <d' f,> g,
	<e' e,> g, c g c, g' e g 
	<g' c, e,> g, <g' c, e,> g, 
	<e' c f,> g, <e' c f,> g, 
	<g' c, e,> g, c g c, g' e g
	<c e,>8 g <c e,> g 
	<d' f,> g, <d' f,> g,
	<e' c a f> a, c e
	f,, a f' a	
	fis, c' e a
	d, a' c fis
	g,, a b c d e f g
	
	}
}
>>


}