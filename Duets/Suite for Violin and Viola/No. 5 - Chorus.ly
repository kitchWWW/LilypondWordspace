\score {
\new StaffGroup
<<
  \new Staff \with {midiInstrument = #"cello"} \relative g'' {
	\key a \major
	\time 5/4
	\tempo 4 = 70
	a1 r4
	fis,2 (gis'2.)
	fis2. fis4 fis
	fis2 d2.
	d2 e,2.
	d2 (b''2.)
	a1~a4
	gis2 r4 gis2
	fis2. fis4 gis fis2 a,2.
	gis2. b2 cis2 cis,2.
	d4 e cis''2.~cis2~cis2.~cis2 a,,2.
	\time 6/4
	 r4 a1 r4
	\bar ":|.|:"
	\time 5/4
	\key d \minor
	f'2 (g'2.)
	f2. a,4 g
	g2. bes,2
	cis2 a'2 f'4
	e2 a,2 g4 a2. g2 a2 r4 c2
	bes4 a d,2.
	e2 (g'2.)
	f2. f4 f
	\time 3/4
	e4 c2 d4 c2 bes4 a2
	\time 5/4
	bes2 g'2. f2. d2 e2. f4 g
	fis4 cis d2 b4 e2 r4 e2
	d4 a bes2 gis4 c2 r4 c2
	bes,4 c g2 a4
	bes2 (c'2.)
	c,2 (d'2.)
	\bar ":|."
	r4 g1 r4
	f,1 ~ f4 r4
	\bar "|."
  }
  \new Staff \with {midiInstrument = #"cello"} \relative g'' {
    \clef treble
	\key a \major
	\time 5/4
	\tempo 4 = 70
	fis1 r4
	b,,2 (e'2.)
	d2 cis2 a4
	b2. gis2
	a1 a4
	gis2 (gis'2.)
	fis4 cis d2 b4
	e2 r4 e2
	d2 cis a4 d2. fis,2
	e2 d'2 e4
	e2 a,,2. b2 gis''2.
	fis2. a,2 gis2. fis2
	\time 6/4
	r4 fis2 e2 r4
	\bar ":|.|:"
	\time 5/4
	\key d \minor
	d2 (e'2.)
	d4 bes c2. bes2 e,2 d4
	e f2 c' c2. e,2
	f2 d'2. c2 r4 a2
	f2. bes,2
	bes2 (e'2.)
	d2 cis2 a4
	\time 3/4
	a2 g4 a2 f4 g2 e4
	\time 5/4
	f g bes,2. ~ bes2 ~bes2. ~bes2
	a''2.
	a1 ~ a4
	g2 r4 g2
	fis1~fis4
	e2 r4 e2
	d,1 ~d4
	e2 (e'2.)
	f,2 (f'2.)
	\bar ":|."
	\time 6/4
	r4 c2 bes2 r4
	d,1 ~d4 r4
	\bar "|."
	
	
}
>>
  \header { piece = "Chorus"}\midi {} \layout {}
}