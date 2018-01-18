\version "2.18.2"
	
%#(set-global-staff-size 22)
	
\header{
title ="Spiegel im Spiegel"
subtitle = "For Vibraphone and Guitar"
composer = "Arvo Part"
arranger = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout{}

<<
\new Staff \with {
  instrumentName = #"Vibraphone"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	
	\relative c'' {
	\time 6/4
	\tempo 4 = 80
	\key d \major
	e1. fis1. ~ fis ~ fis2. r2.
	g1. fis1. ~ fis ~ fis2. r2.
	d1. e fis1. ~ fis ~ fis2. r2.
	a1. g fis1. ~ fis ~ fis2. r2.
	e1. d cis fis1. ~ fis ~ fis2. r2.
	g1. a b fis1. ~ fis ~ fis2. r2.
	b,1. cis d e fis1. ~ fis ~ fis2. r2.
	cis'1. b a g fis1. ~ fis ~ fis2. r2.
	e1. d cis b a fis'1. ~ fis ~ fis2. r2.
	g1. a b cis d fis,1. ~ fis ~ fis2. r2.
	g,1. a b cis d e fis1. ~ fis ~ fis2. r2.
	e'1. d cis b a g fis1. ~ fis ~ fis2. r2.
	e1. d cis b a g fis fis'1. ~ fis ~ fis2. r2.
	g1. a b cis d e fis fis,1. ~ fis ~ fis2. r2.
	e,1. fis g a b cis d e fis1. ~ fis ~ fis2. r2.
	g'1. fis e d cis b a g fis1. ~ fis ~ fis2. r2.

	
	
	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #""
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c'' {
	\time 6/4
	\tempo 4 = 80
	\key d \major


}	
}
>>
}