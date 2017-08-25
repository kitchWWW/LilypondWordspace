\version "2.18.2"
	
#(set-global-staff-size 15)
	
\header{
title ="Duet"
composer = "Brian Ellis"
tagline =""
}
\score{

\new StaffGroup <<
\new Staff \with {
  instrumentName = #"Player 1"
  shortInstrumentName = #""
  midiInstrument = "vibraphone"
}{
	
	\relative c' {
	\time 4/4
	\tempo 4 = 65
	\key a \major
		
	a4 a a a		
	a4 a a a		
	a4 a a a		
	a4 a a a		
	a4 a a a		
	a4 a a a		
	a4 a a a		
	a4 a a a
	R1
	
	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Player 2"
  shortInstrumentName = #""
  midiInstrument = "vibraphone"
}{
	\relative c'' {
	\key a \major

	a4 a a a
	a a \times 2/3 {a8. ~a8 cis16} a4
	a \times 2/3{a8 e'4} \times 2/3 {a,8. ~a8 cis16} a4
	\times 2/3{a8. a'8.} \times 2/3{a,8 e'4} \times 2/3 {a,8. ~a8 cis16} a4
	\times 2/3{a8. a'16 e8} \times 2/3{a,8 e'4} \times 2/3 {a,8. ~a8 cis16} a4
	\times 2/3{a8. a'16 e8} \times 2/3{a,8 e'4} \times 2/3 {a,8. ~a8 cis16} \times 2/3{a16 cis8 ~ cis8.}
	\times 2/3{a8. a'16 e8} \times 2/3{a,8 e'4} \times 2/3 {a,8 e'16 ~e8 cis16} \times 2/3{a16 cis8 ~ cis8.}
	\times 2/3{a8. a'16 e8} \times 2/3{a,8 e'4} \times 2/3 {a,8 e'16 ~e8 cis16} \times 2/3{a16 cis8 ~ cis8 cis16}
	r4 cis4 cis r
	
	\times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis}
	\times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis}
	\times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis}
	\times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis}
	\times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis}
	\times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis}
	\times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis} \times 2/3{a16 cis e a e cis}
	\times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis} \times 2/3{a16 cis fis a fis cis}
	

	}	
}
>>
\midi {}
\layout{}
}