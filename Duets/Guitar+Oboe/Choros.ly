\version "2.18.2"
\header{
title ="Choros"
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
	\key a \minor
	\tempo 4 = 60
	\time 3/4
	R1*7
<<{
	r2 r8 a b4 \appoggiatura e,16
	c'2 \appoggiatura e,16 d'4 \appoggiatura e,16 e'4
	\appoggiatura e,16
	(f2) f'4 \appoggiatura e,16 f'4 \appoggiatura f,16
	(a2) d4 \appoggiatura f,16 (f'4) \appoggiatura g,16
	(e'4..) g,16 (d'8.) f,16 (e'8.) a,16
	(gis2) gis'8. d,16 (b'8.) e,16\fermata (
	\time 2/4
	c'2) ~ c ~ c b4 d8. e,16 (
	\time 4/4
	c'4..) f,16 (d'8.) g,16 (e'8.) g,16
	(f4) f' a8. c,16 (a'8.) c,16
	(a'4..) d,,16 (f8.) a16 (f'8.) b,16
	(g'4..) e,16 (b'8.) b,16 (f'8.) b,16
	(gis'4) gis' d'8. e,16 (d'8.) e,16
	(c'4) e, a, c,
	R1*6
	}\\{}>>
	
	}	
}
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gtr."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c' {
	\key a \minor
	\clef "treble_8"
	\time 4/4
	<a c e>1
	<a c f>
	<f a d>
	<a, a' c>
	<f a' c>
	<f d' a' c>
	<g e' g b>
	<gis e' b' e>
	<a a' c e>
	<f a' c e>
	<f d' a' c>
	<g e' g b>
	<gis e' b' e>
	\time 2/4
\tuplet 3/2 8 {
	a32 a' c e c a e a c e c a e a c e c a e a c e c a
	f a c e c a f a c e c a f a c e c a f a c e c a
	e, a' d f d a f a d f d a f a d f d a f a d f d a
	e, g' b e b g e g b e b g e g b e b g e g b e b g
	%a,32 a' c e c a e a c e c a e a c e c a e a c e c a
	}
\time 4/4
	<a, e'>8 a' a a a a a a
	<f, a> a' a a a a a a
	<f, d'> a' a a a a a a
	<g, e'> b' b b b b b b
	<e,, e'> b'' b b b b b b
	<a, e' a c>1 
	}
}
>>
%}


}