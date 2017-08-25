\version "2.18.2"
#(set-global-staff-size 2w)
\paper{
  paper-width = 8.5\in
  left-margin = 2\cm
  right-margin = 1.5\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
  ragged-last-bottom = ##t
}

\header{
title ="Processes"
subtitle = "Movement 2: Tangable"
composer = "Brian Ellis"
tagline =""
opus = "  "
arranger = "  "
instrument = "   "
}
\score{
\midi {}
\layout{}

<<
\new Staff 
\with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gui."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
		
	\relative c' {
	\omit Staff.TimeSignature
	\autoBeamOff
	\clef "treble_8"
	r1
	r1
	<a, e'>4
	<b e>8 [<d fis> <e gis> <fis ais>] 
	s4
	<<{
		b4 cis8 [b] 
	}\\{
		<e,, g' g>2\arpeggio
	}>>
	r4
	<<{
	cis''8 [dis] e [fis] ais16 ([b ais a] ais4)
	}\\{
	s2 <g, c e>
	}>>
	g8 [e d] <b e gis>4.
	r2
	\times 2/3 {b8 ([e fis])} \times 2/3 {b, ([e g])}
			\times 2/3 {b, ([e gis])}
	r4
	\times 2/3 {r8 b, ([e])} \times 2/3 {gis [a gis]}
			\times 2/3 {g ([gis a])} g4\fermata
	
	
	\undo \omit Score.BarLine
	\bar "|."
	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Prepared Media"
  shortInstrumentName = #"PM."
}{
	\relative c'' {
	\omit Staff.Clef
	\omit Score.BarLine
	\omit Staff.TimeSignature
	\stopStaff
	\makeClusters {
	
	
	}
	}	
}
#(set-accidental-style 'dodecaphonic)
>>
}