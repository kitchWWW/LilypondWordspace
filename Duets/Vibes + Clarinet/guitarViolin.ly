\version "2.18.2"
	
%#(set-global-staff-size 22)
	
\header{
title ="Duet"
composer = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout{}

<<
\new Staff \with {
  instrumentName = #"Violin"
  shortInstrumentName = #"Vl."
  midiInstrument = "Violin"
}{
	
	\relative c'' {
	\time 6/4
	\tempo 4 =100
	\key cis \minor
	r1. r r r
	cis1 ~cis4. b8
	cis1 ~cis4. b8
	cis4. dis cis \times 2/3{e8 [dis cis]} b 
	cis2. ~cis4. \times 2/3{cis8 [b a]} gis
	gis1 ~gis4. fis8
	gis1 ~gis4. fis8
	gis4. a gis \times 2/3{b8 [cis dis]} e8
	e2. ~e4. \times 2/3 {e8 [dis cis]} b8
	cis1 ~cis2
	r1.
	
	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"G."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c' {
	\key cis \minor
	cis8-1\5^"dolce" gis'-2\4 cis-3\3 e-0\1 cis gis cis, gis' cis e cis gis
	b, gis' cis e cis gis b, gis' cis e cis gis
	a, gis' cis e cis gis a, gis' cis e cis gis
	gis, gis' cis e cis gis gis, gis' cis e cis gis
	cis, gis' cis e cis gis cis, gis' cis e cis gis
	b, gis' cis e cis gis b, gis' cis e cis gis
	a, gis' cis e cis gis a, gis' cis e cis gis
	gis, gis' cis e cis gis gis, gis' cis e cis gis
	fis, gis' cis e cis gis fis, gis' cis e cis gis
	e, gis' cis e cis gis e, gis' cis e cis gis
	a, gis' cis e cis gis a, gis' cis e cis gis
	a, gis' cis e cis gis b, gis' cis cis, gis' cis
	cis, gis' cis e cis gis cis, gis' cis e cis gis
	cis, gis' cis e cis gis cis, gis' cis e cis gis
	}	
}
>>
}