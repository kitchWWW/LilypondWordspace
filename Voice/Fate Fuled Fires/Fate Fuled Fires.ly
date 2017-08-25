\version "2.18.2"
\header{
title ="Fate Fuled Fires"
subtitle="SATB"
composer = "Brian Ellis"
tagline =""
}

#(set-global-staff-size 10)

\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  ragged-last-bottom = ##t
}

\whatdidhe = { r16 d-. d-. r d8-. r8 d2-- r16 d d r d8-. r f4.-> (e8 d4 d)}
\ondayswithout = { d4 (e f e d c bes a)}
\hewandereda = {f4 (f g8 a4.) f8-. r r16 f f r f2-- f8-. r8 r16 f f r}

\score{
\midi {}
\layout {}
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"S"
  shortInstrumentName = #"s"
  midiInstrument = "Choir Aahs"
}{
	\relative c'' {
	\clef "treble"
	\tempo 4. = 67
	%\compoundMeter #'((3 3 2 3 8))
	\time 10/4
	\key d \minor
	\whatdidhe \whatdidhe \whatdidhe \whatdidhe \whatdidhe
	r1 r1 r2 r1 r1 r4 \whatdidhe \whatdidhe
	r16 d d r e4 f g a
	}	
}

\new Staff \with {
  instrumentName = #"A"
  shortInstrumentName = #"a"
  midiInstrument = "Choir Aahs"
}{
	\relative c' {
	\time 10/4
	\key d \minor
	r1 r1 r2 r2 \whatdidhe \whatdidhe
	\ondayswithout
	r2 \ondayswithout
	\octaveCheck c''
	\hewandereda
	\hewandereda
	\hewandereda
	\hewandereda
	g4 f e d
	}
}

\new Staff \with {
  instrumentName = #"NB"
  shortInstrumentName = #"t"
  midiInstrument = "Choir Aahs"
}{
	\relative c {
	R1
	
	
	}	
}

\new Staff \with {
  instrumentName = #"T"
  shortInstrumentName = #"t"
  midiInstrument = "Choir Aahs"
}{
	\relative c {
	\time 10/4
	\key d \minor
	\clef bass
	r2 \ondayswithout
	r2 \ondayswithout
	\ondayswithout r2
	\ondayswithout r2
	\ondayswithout r2
	\ondayswithout r2
	\ondayswithout r2
	\ondayswithout r2
	\ondayswithout r2
	bes4 c e d
	}	
}
\new Staff \with {
  instrumentName = #"B"
  shortInstrumentName = #"b"
  midiInstrument = "Choir Aahs"
}{
	\relative c {
	\time 10/4
	\key d \minor
	\clef bass
	r1 r1 r2 r1 r1 r2 r1 r4 \ondayswithout
	r2 \ondayswithout
	r2 \ondayswithout
	r2 \ondayswithout
	r2 \ondayswithout
	r2 \ondayswithout
	r2 \ondayswithout
	d4
	}	
}

>>
}