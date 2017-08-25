\version "2.18.2"
\header{
title ="Prelude"
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
	\tempo 4 = 80
	\time 4/4
	c16 c e e c c e e c c e e c c e e
	b b e e b b e e b b e e b b e e
	bes bes e e bes bes e e bes bes e e bes bes e e 
	a, a f' f a, a f' f a, a f' f a, a f' f
	g, g e' e g, g e' e g, g e' e g, g e' e 
	a, a ees' ees a, a ees' ees a, a ees' ees a, a ees' ees
	b b d d b b d d b b d d b b d d
	b1
	r1
	\bar ":|."
	c16 c e e c c e e c c e e c c e e
	b b e e b b e e b b e e b b e e
	bes c e bes c e bes c e bes c e bes c e bes
	a a f' f a, a f' f a, a f' f a, a f' f
	g, g e' e g, g e' e g, g e' e g, g e' e 
	fis, a ees' fis, a ees' fis, a ees' fis, a ees' fis, a ees' ees
	d d b b d d b b d d b b d d b b d1
	r1
	\bar ".|:"
	c16 c e e c c e e c c e e c c e e
	b b e e b b e e b b e e b b e e
	\bar ":|.|:"
	b d f b, d f b, d f b, d f b, d f f
	c16 c e e c c e e c c e e c c e e
	\bar ":|."
	b b e e b b e e b b e e b b e e
	bes c e bes c e bes c e bes c e bes c e bes
	a a f' f a, a f' f a, a f' f aes, aes f' f
	g, c e g e c g c e g e c g c e g
	c8 c4 c c c8 

	
	}	
}

\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gtr."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c, {
	\clef "treble_8"

		
	}
}
>>
%}


}