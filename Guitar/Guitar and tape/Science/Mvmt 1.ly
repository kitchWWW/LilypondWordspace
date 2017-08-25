\version "2.18.2"
	
#(set-global-staff-size 22)
	
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
subtitle = "Movement 1: First Steps"
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
	r1 r
	
	e,4\4\glissando b' r4
	s16 d'16 [(cis c ~c4)] r2 
	<<{
	s4 bes8 [a bes a]
	}\\{
	cis,8\2\glissando (eis2)
	}>>
	r4 r
	ais,8\4 [(gis) a,\5 c e gis]
	r1
	\times 2/3 {b8\2-> [(e fis)] b,-> [(e fis)] b,-> [(e fis\fermata)]}
	r1
	\times 2/3 {b,8\2-> [(e fis)] b,-> [(e fis)] b,-> [(e fis\fermata)]}
	r1
	\times 2/3 {b,8\2-> [(e fis)] b,-> [(e fis)] b,-> [(e fis\fermata)]}
	r4
	cis8\3\glissando [(f) e] cis\glissando [(a) ais]
	cis8\glissando [(f) e] cis\glissando [(ais) a]
	r4
	<fis' g>1.\startTrillSpan
	r4\stopTrillSpan
	d8\2\glissando [(a')]
	cis\1\glissando[(gis])
	gis,\3\glissando [(cis)] fis\2\glissando [(d)]
	f,\4\glissando ([c']) f\3\glissando [(e)]
	r8
	a,,\5 [(c)\glissando g' (fis)]
	r8
	c\5 [(cis) c (cis)] \glissando f [(e) f (e)]
	c [(cis) c (cis)] \glissando f [(e) f (e)]
	c [(cis) c (cis)] \glissando f [(e) f (e)]
	c [(cis) c (cis)] \glissando f [(e) f (e)]

	e,\breve
	\undo \omit Score.BarLine
	\bar "|."
	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Prepared Media"
  shortInstrumentName = #"PM."
}{
	\relative c {
	\omit Staff.Clef
	\omit Score.BarLine
	\omit Staff.TimeSignature
	\stopStaff
	\makeClusters {
	b''1
	<g' d,>
	<e f,>^"0:11"
	<c a>
	b
	b
	<b>^"0:28"
	<c a>
	<b>^"0:32"
	b4
	<d g,>1
	<b>2.^"0:37"
	<g' d,>4
	<c, a>2^"0:40"
	<c a>1
	<c a>2^"0:47"
	<b>
	b2
	b2
	b
	b4
	b
	b
	b
	<b>2^"1:15"
	<c a>2.
	<b>^"1:20"
	s4
	<d g,>2.^"1:22"
	b4
	<c a>2^"1:25"
	<c a>4
	<d g,>2
	<f e,>^"1:30"
	<g d,>
	<g d,>
	<g d,>^"1:40"
	b,
	
	}
	}	
}
#(set-accidental-style 'dodecaphonic)
>>
}