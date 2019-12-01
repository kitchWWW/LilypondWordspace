\version "2.18.2"
	
%#(set-global-staff-size 22)
	
\header{
title ="Captian"
composer = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout{}

<<
\new Staff \with {
  instrumentName = #"Clarinet"
  shortInstrumentName = #"Cl."
  midiInstrument = "Violin"
}{
	
	\relative c'' {
	\tempo 1 = 30
  \override Hairpin.circled-tip = ##t

	r1
	c1~\<
	c1~
	c1~
	c8\mf r2..

	r1
	c1~\<
	c1\( \glissando
	ceh1\)\( \glissando
	c8\f\) r2..

  \override Hairpin.circled-tip = ##f
	e1\sf\>
	~e1
	~e1\<
	~e1\>
	~e8\! r2..
	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Vibes"
  shortInstrumentName = #"V."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c'' {
	c1~\mf \sustainOn
	c1
	c1~\mp\< \downbow
	c1\mf
	r1 \sustainOff

	c1~\f \sustainOn
	c1
	c1~\mf\< \downbow
	c1\f
	r1 \sustainOff
	r1
	e1\< \downbow~
	e~\mf\>
	~e
	e8\!\sf r2..
	
	}	
}
>>
}