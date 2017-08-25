\version "4.216.4"
\header{
title ="Pastoral"
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
	\key f \major
	\tempo 4 = 80
	\time 4/4
	r1 r1 r2 r4. c8 _(
	c a a f f a a)  c(
	c bes bes a a4.) c8 _(
	c a a f f a a) c, (
	d2.) r8 c'8 _(
	c a a f f a a)  c(
	c bes bes e e4.) c8 _(
	c a a f f a a)  bes, (c2. ) r8
	bes8 c d d e e f f bes,
	c d d e e f f bes,
	\time 5/4
	c [d d e] e [f f fis fis g]
	\time 4/4
	a f f c c f f a'
	a bes bes c c4. c8
	c a a f f a a
	c, d2. r8

	}	
}

\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gtr."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c {
	\key f \major
	\clef "treble_8"
	\time 4/4
	
bes8 \sustainOn <f' a><f a><f a><f a><f a><f a><f a>
	 f, <f' a><f a><f a> <f a><f a><f a><f a>

	bes, <f' a><f a><f a><f a><f a><f a><f a>
	f, <f' a><f a><f a><f a><f a><f a><f a>
	bes, <f' bes><f bes><f bes> <f bes><f bes><f bes><f bes>
	f, <f' a><f a><f a><f a><f a><f a><f a>
	bes, <f' bes><f bes><f bes> <f bes><f bes><f bes><f bes>


	}
}
>>
%}


}