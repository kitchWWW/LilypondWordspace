\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = "Sonata No. 1"
	subtitle = "in D minor"
	subsubtitle = "For Guitar"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c{
	\numericTimeSignature
	\key d \minor
	\time 4/4
	\clef "treble_8"
	\tempo 4 = 90
	d8 <f' a d> cis' d c a c d
	<g,, g' bes> c' <d,, d' g a> bes'' <d,, c' e a> bes'' e, g
	<f d a>2 a,,
	d8 <f' a d> cis' d c a c d
	<d,, d' a' bes> c'' bes c <d,, d' g a> c'' a c
	<d,, c' e a> bes'' <d,, c' fis a> bes'' <d,, c' g' a> bes'' c bes
	<a f d a>4 a,, <d, a' d a' d>2

} 
}


