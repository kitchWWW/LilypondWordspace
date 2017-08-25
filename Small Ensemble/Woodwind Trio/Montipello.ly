\version "2.18.2"
\header{
title ="Montipello"
subtitle="Woodwind Trio"
composer = "Brian Ellis"
tagline =""
}

\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  ragged-last-bottom = ##t
}

\score{
\midi {}
\layout {}
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"Piccolo"
  shortInstrumentName = #"Picc."
  midiInstrument = "Piccolo"
}{
	\relative c''' {
	\clef "treble^8"
	\tempo 4. = 67
	\compoundMeter #'((3 3 2 3 8))
	\set Timing.beatStructure = #'(3 3 2 3)
	r2. r4 r4.
	r2. r4 r4.
	c16\ppp\<-> c c c c c c-> c c c c c
		c-> c r8 c16-> c c c c c \breathe
	d\mf-> (c) c c c c d-> (c) c c c c
		d-> (c) c c d-> (c) c c c c
	e-> (c) c c c c d-> (c) c c c c 
		e-> (c) r8 fis16-> (c) c c c (fis
	e-> c) c c c c d-> (c) c c c c 
		e-> (c) c c fis-> (c) c c c (fis
	gis->) gis gis gis gis gis gis-> c,\< (d e fis gis
		ais\f) ais r8 gis16\mf gis gis gis gis gis
	gis-> (fis) fis fis fis (gis e->) e e e e e gis-> d r8 d16 (c) c c c c
	c16->\> c c c c c c-> c c c c c c-> c c c c-> c c c c c\ppp
	r2. r4 r4.
	\tempo 8 = 140
	r8 fis4\mf (ais16 g16 fis4) r4 r4.
	r8 fis g r fis g r fis r fis g
	r8 fis4 (ais16 g16 fis4) r4 r4.
	r8 cis\> dis r cis dis r cis r cis dis
	b2.\mp ~b4 ~b4.
	b2. ~b4 ~b4.
	b4 cis b cis b cis8
	b4 cis b cis b cis8
	b4 cis b cis b cis8
	b4 cis b cis b cis8
	dis2.\> ~dis4 ~dis4.\p \breathe
	r4. dis4. ~dis4 ~dis4.
	r4. dis4. ~dis4 ~dis4.
	}	
}

\new Staff \with {
  instrumentName = #"Oboe"
  shortInstrumentName = #"Ob."
  midiInstrument = "Oboe"
}{
	\relative c' {
	\compoundMeter #'((3 3 2 3 8))
	r2. r4 r4.
	fis2.\pp ~fis4 r4.
	fis2. ~fis4 ~fis4. \breathe
	fis2.\< ~fis4 ~fis4 gis8\mf
	~gis8 fis4 gis fis gis8 fis8 gis fis
	fis gis4 fis gis fis8 gis8 fis gis
	~gis8 fis4 gis fis gis8 fis8 gis fis
	fis gis4 fis gis fis8 gis8 fis gis

	r4 ais16\ppp\< ais ais ais ais ais ais ais
		ais ais ais ais ais ais ais ais ais ais
	ais ais ais ais ais ais ais ais ais ais ais ais
		ais ais ais ais ais ais ais ais ais ais\f
	ais2. c4 ais4. ais4. g4. fis4 g4.
	e2. dis4 e4. fis4. cis4. dis4 cis4.
	b2.\> ~b4\pp r4.
	f'2.\mp ~f4 ~f4 g8
	~g8 f4 g f g8 f8 g f
	f g4 f g f8 g8 f g
	~g8 f4 g f g8 f8 g f
	f g4 f g f8 g8 f g
	b2.\> ~b4 ~b4.\p \breathe
	 r4. b4. ~b4 ~b4.
	r2. r4 r4.
	}
}

\new Staff \with {
  instrumentName = #"Bassoon"
  shortInstrumentName = #"Bn."
  midiInstrument = "Bassoon"
}{
	\relative c {
	\clef bass
	\compoundMeter #'((3 3 2 3 8))
	d2.\pp ~d4 r4.
	d2. ~d4 r4.
	d2. ~d4 ~d4. \breathe
	d2.\< ~d4 r8 ais4\mf
	c4 d c d c d8
	c4 d c d c d8
	c4 d c d c d8
	c4 d c d c d8
	e2.\> ~e4 ~e4.
	~e2. ~e4 ~e4.\mp\breathe
	dis2.\mf fis8 (e dis cis4)
	cis4. c ais4 cis4.
	ais2. cis8 (c ais a4)
	ais4. e fis4 e4. \breathe
	b'16\ppp\<->\tempo 4. = 67 b b b b b b-> b b b b b
		b-> b r8 b16-> b b b b b
	cis\mf-> (b) b b b b cis-> (b) b b b b
		cis-> (b) b b cis-> (b) b b b b
	dis-> (b) b b b b cis-> (b) b b b b 
		dis-> (b) r8 f'16-> (b,) b b b (f'
	dis-> b) b b b b cis-> (b) b b b b 
		dis-> (b) b b f-> (b) b b b (f
	g->) g g g g g g-> b,\< (cis dis f g
		a\f) a r8 g16\mf g g g g g
	g-> (f) f f f (g dis->) dis dis dis dis dis g-> cis r8 cis16 (b) b b b b
	b16->\> b b b b b b-> b b b b b b-> b b b b-> b b b b b\ppp	r2. r4 r4.
	r2. r4 r4.
	\bar "|."
	}	
}
>>
}