\version "2.18.2"
\header{
title ="Down In The Valley"
subtitle="For Three Guitars"
composer = "Brian Ellis"
}
\score{
\midi {}
\layout{}

<<
\new Staff \with {
  instrumentName = #"One"
  shortInstrumentName = #"1"
  midiInstrument = "violin"
}{
	\relative c'' {
	\time 3/4
	\key d \major
		a'2. fis2 d4 e2\3 e4 f2. r r r r
		\repeat volta 2 {
		a2. fis2 d4 e2\3 e4 fis (e) d
		b\3 a, d' a d, d'
		b a, d' a d, d'
}	\alternative {
		{d e fis}
  		{fis, <a d> fis d <a' d> d, fis <a d> fis d <a' d> d, }}

	}	
}

\new Staff \with {
  instrumentName = #"Two"
  shortInstrumentName = #"2"
  midiInstrument = "cello"
}{
	\relative c {
	\key d \major
		r2. r r r
		e'8 fis4. fis4 fis2. e8 fis4. fis4 fis2.
		e2. d2 a8 b d8 d e d d4 d b a	}	
}
\new Staff \with {
  instrumentName = #"Three"
  shortInstrumentName = #"3"
  midiInstrument = "Contrabass"
}{
	\relative c {
	\key d \major
		r2. r r r
		e8 fis4. fis4 fis2. e8 fis4. fis4 fis2.
		d4 a' d d, a' d d cis b a2.
		b4 a b fis' d e d a b d, fis8 e d4 d a' d
	}
}
>>
}