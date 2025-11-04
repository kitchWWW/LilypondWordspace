\version "2.18.2"
\header{
title =""
subtitle="for String Quartet"
composer = "Brian Ellis"
tagline =""
}

#(set-global-staff-size 15)

\score{
\midi {}
\layout{}

<<
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #"Vn.1"
  midiInstrument = "Violin"
}{
	
	\relative c'' {
	\key d \major
	\time 4/4
	\tempo 4 = 90
	r1
	d8\mf e fis2.
	g8-> fis (g fis) \times 2/3 { e8 (fis e) } d8 \glissando gis
	~ gis4 fis e \times 2/3 {d8 e d} e4. fis8 g d8 ~d4->
	d8 e fis2 ~fis8 a
	fis a b2 a8 g
	e2 \times 2/3 {e8 fis e} d8 e
	fis a fis a  \times 2/3 {cis b cis} d a, 
	d'4 e fis \times 2/3 {g8 a g}
	fis4. e8 d b ~b a
	fis4. cis8 g'8 fis g cis,
	d2. r4
	}	
}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "Violin"
}{
	\relative c' {
	\key d \major
	r1
	r4 r8 d\p-. d-. d\< ( e fis)
	g4.\!\> g8-.\! g-. g\< (a b)
	a8\! b4 fis8 d b-> d-. d-.
	d2 ~ d8 b d4
	r4 r8 d\p-. d-. d\< ( e fis)
	g2.\! r4
	r4 r8 cis8-. cis-. cis (d e)
	fis4. fis8-. fis-. a (b a,)
	b8 fis'4 b8 b-. b-. b-. b-.
	b8 a e g-. g-. g-. g-. g-.
	fis8 e4 d8 e-. e-. e-. e-.
	r4 r8 fis8-. fis-. r
	}
}

\new Staff \with {
  instrumentName = #"Viola "
  shortInstrumentName = #"Vla. "
  midiInstrument = "viola"
}{
	\relative c' {
	\clef "alto"
	\key d \major
	r1
	r4 r8 a8\p-. a-. a (cis d)
	b4. b8-. b-. e (fis g)
	fis,8 fis'4 d8 b fis-. fis-. fis-.
	fis2 ~ fis8 g fis4
	r4 r8 a8\p-. a-. a (cis d)
	b2. r4
	r4 r8 g-. g-. e (fis g)
	a4. a8-. a-. b (a  fis->)
	~fis4. d'8-. d-. d-. d-. d-.
	g fis b, e-. e-. d b a
	b8 cis4 d8 cis-. cis-. cis-. cis-. 
	r4 r8 a-. a-. r
	}	
}

\new Staff \with {
  instrumentName = #"Cello "
  shortInstrumentName = #"Cel. "
  midiInstrument = "Violin"
}{
	\relative c {
	\clef "bass"
	\key d \major
	r4 r8 d-.\mp d-. d-. d-. d-.
	r4 r8 d-. d-. d-. d-. d-.
	e4. e8-. e-. e-. e-. e-.
	d,8 fis4 b8-. b-. b-. b-. b-.
	b8 a e fis2 d8
	r4 r8 d-.\mp d-. d-. d-. d-.
	r4 r8 d e fis g4
	r8 b (g' cis) cis-. cis-. cis-. cis-.
	cis4. cis8-. cis-. cis-. cis-. d,
	d8 cis4 b8-. b-. b-. b-. b-.
	e8 d g, e-. e-. e-. e-. e-.
	fis8 a4 b8 a-. a-. a-. a-.
	r4 r8 d-. d-. r
	}	
}
>>
}