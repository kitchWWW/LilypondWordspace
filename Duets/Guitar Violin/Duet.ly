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
	\time 6/8
	\tempo 4 = 130
	\key a \major
	e4.\mp d8 cis d b2.
	e,4. d8 cis d b2.~b2. a'4. gis

	a4 fis8 e8 fis cis d4. r
	cis'4 b8 a b a fis4. r
	a4 e8 a b cis
	e4. d8 cis d b4 e,8 fis gis b cis4. b
	a4 fis8 e8 fis cis d4. r
	cis'4 b8 a b a fis4. r
	
	e4. e8 d e
	d4. fis8 e d
	d4. b4.
	gis'4. b	
	r8 a16 gis a8 r cis16 b cis8
	r8 fis16 e fis8 d, e fis
	r8 a16 gis a8 r cis16 b cis8
	r8 b16 a b8
	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"G."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c' {
	\clef "treble_8"
	\key a \major
	r2. e4.\f d8 cis d b2.
	e,4. d8 cis d b4. e, cis' b

	a8 <e' gis cis> <e gis cis> a,8 <e' gis cis> <e gis cis>
	a,8 <f' a d>4 a8 d gis
	a,,8 <e' a cis> <e a cis> a,8 <e' g cis> <e g cis>
	b <fis' b d>4 cis8 (d cis)
	cis <e a cis> <e a cis> cis <e a cis> <e a cis>
	d <fis a cis> <fis a cis> d <fis a d> <fis a d> 
	b, <fis' b d> <fis b d> b, <fis' a d> <fis a d> 
	e, <d' gis b> <d gis b> fis, <d' gis b> gis,
	
	a8 <e' a cis> <e a cis> a,8 <e' gis cis> <e gis cis>
	a,8 <f' a d>4 a8 d gis
	a,,8 <e' a cis> <e a cis> a,8 <e' g cis> <e g cis>
	b <fis' b d>4
	fis'8 gis a
	a,, <e''' b> <d a> <cis a>4.
	d,,8 <a'' fis>8 <b gis> <c a>4.
	d,,8 <b'' fis> <a e> d,, <fis' d> <e cis>
	e, <fis' d> <e cis> e,, <d'' b> <b gis>
	
	a,8 <e' a cis> <e a cis> a,8 <e' gis cis> <e gis cis>
	a,8 <f' a d>4 r4.
	a,8 <e' a cis> <e a cis> a,8 <e' g cis> <e g cis>
	b <fis' b d>4


	
	}	
}
>>
}