\version "2.18.2"
	
%#(set-global-staff-size 22)
	
\header{
title ="Song No. 1"
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
	
	\relative c' {
	\time 6/8
	\tempo 4 = 100
	\key f \major
	\partial 4. {f8\( a c}
	d4. f8 d c a4. f8 a c 
	d4. f8 g a a4.\) f,8\( a c
	d4. f8 d c a2 f4 g2. a2 aes4
	g2.\)
	
	r4. r4 g8
	c4. e4 d16 c e4. g4 fis16 e
	gis8. e16 b gis' gis4 e8
	dis8 b dis dis4 ~ dis16 b
	c8 aes c c4 ~ c16 b
	c8 aes c d4 dis8
	e4. c
	a bes
	a f r
	f8\( a c
	d4. f8 d c a4. f8 a c 
	d4. f8 g a a4.\) r4. r4. f,8\( a c
	d4. f8 d c a2 f4 g2.\) a2 aes4
	g2.
	a2 aes4
	g2.
	
	r4. r4 g8
	c4. e4 d16 c e4. g4 fis16 e
	gis8. e16 b gis' gis4 e8
	dis8 b dis dis4 ~ dis16 b
	c8 aes c c4 ~ c16 b
	c8 aes c d4 dis8
	e4. c
	a bes
	a f r


	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"G."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c {
	\clef "treble_8"
	\key f \major
	\partial 4. {r4.}
	<f bes d>2.	\sustainOn
	<f a c>
	<f bes d>
	<f a c>
	<f bes d>
	<f a c>
	<c e g c>
	<f a c>
c16 <e g c> <e g c> <e g c> <e g c> <e g c> 
	<e g c> <e g c> <e g c> <e g c> <e g c> <e g c> 
c16 <e g c> <e g c> <e g c> <e g c> <e g c> 
	<e g c> <e g c> <e g c> <e g c> <e g c> <e g c> 
c16 <e g c> <e g c> <e g c> <e g c> <e g c> 
	<e g c> <e g c> <e g c> <e g c> <e g c> <e g c> 
b16 <e g b> <e g b> <e g b> <e g b> <e g b> 
	<e g b> <e g b> <e g b> <e g b> <e g b> <e g b> 
b16 <e gis b> <e gis b> <e gis b> <e gis b> <e gis b> 
	<e gis b> <e gis b> <e gis b> <e gis b> <e gis b> <e gis b> 
b16 <dis gis b> <dis gis b> <dis gis b> <dis gis b> <dis gis b> 
	<dis gis b> <dis gis b> <dis gis b> <dis gis b> <dis gis b> <dis gis b> 
c16 <ees aes c> <ees aes c> <ees aes c> <ees aes c> <ees aes c> 
	<ees aes c> <ees aes c> <ees aes c> <ees aes c> <ees aes c> <ees aes c> 
c16 <e aes c> <e aes c> <e aes c> <e aes c> <e aes c> 
	<e aes c> <e aes c> <e aes c> <e aes c> <e aes c> <e aes c> 
c16 <e g c> <e g c> <e g c> <e g c> <e g c> 
	<e g c> <e g c> <e g c> <e g c> <e g c> <e g c> 
c16 <e g c> <e g c> <e g c> <e g c> <e g c> 
	<e g c> <e g c> <e g c> <e g c> <e g c> <e g c> 
<f a c>8 <f a c> <f a c> <f a c> <f a c> <f a c> 
	<f a c> <f a c> <f a c> <f a c> <f a c> <f a c> 
	<f a d> <f bes d> <f b d> <f b d> <f b d> <f b d>
	<f a c>8 <f a c> <f a c> <f a c>8 <f a c> <f a c>
	<f a d> <f bes d> <f b d> <f b d> <f b d> <f b d>
	<g bes d> <g bes d> <g bes d> <g bes e g> <g bes e> <f a e'>
	<f a d> <f a > <f a> <f a c> <f a c> <f a c>
	<f a d> <f bes d> <f b d> <f b d> <f b d> <f b d>
	<d f a> <d f a> <d f a> <d f a> <d f a> <d f a> 
	<c e g> <c e g> <c e g> <c e g> <c e g> <c e g> 
	<c f a> <c f a> <c f a> <c f a> <c f aes> <c f aes>
	<c e g> <c e g> <c e g> <c e g> <c e g> <c e g> 
	<c f a> <c f a> <c f a> <c f a> <c f aes> <c f aes>
	<c f g> <c f g> <c f g> <c f g> <c e g> <c e g> 

c16 <e g c> <e g c> <e g c> <e g c> <e g c> 
	<e g c> <e g c> <e g c> <e g c> <e g c> <e g c> 
c16 <e g c> <e g c> <e g c> <e g c> <e g c> 
	<e g c> <e g c> <e g c> <e g c> <e g c> <e g c> 
b16 <e g b> <e g b> <e g b> <e g b> <e g b> 
	<e g b> <e g b> <e g b> <e g b> <e g b> <e g b> 
b16 <e gis b> <e gis b> <e gis b> <e gis b> <e gis b> 
	<e gis b> <e gis b> <e gis b> <e gis b> <e gis b> <e gis b> 
b16 <dis gis b> <dis gis b> <dis gis b> <dis gis b> <dis gis b> 
	<dis gis b> <dis gis b> <dis gis b> <dis gis b> <dis gis b> <dis gis b> 
c16 <ees aes c> <ees aes c> <ees aes c> <ees aes c> <ees aes c> 
	<ees aes c> <ees aes c> <ees aes c> <ees aes c> <ees aes c> <ees aes c> 
c16 <e aes c> <e aes c> <e aes c> <e aes c> <e aes c> 
	<e aes c> <e aes c> <e aes c> <e aes c> <e aes c> <e aes c> 
c16 <e g c> <e g c> <e g c> <e g c> <e g c> 
	<e g c> <e g c> <e g c> <e g c> <e g c> <e g c> 
c16 <e g c> <e g c> <e g c> <e g c> <e g c> 
	<e g c> <e g c> <e g c> <e g c> <e g c> <e g c> 



	}	
}
>>
}