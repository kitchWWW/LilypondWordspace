\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"For Loan"}}
	subtitle = "Guitar and Flute"
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

<<
  \new Staff \with {
    instrumentName = #"Flute"
	midiInstrument = "Flute"
  }
  { 
\relative c' {
	\time 4/4
	\key g \major
	\tempo 4 = 120
	r4 r r b'
	r r r c
	r r r e
	r r r fis\fermata 
	~fis4. e8 d c b a
	g4 c16 b8. e16 d8. r4
	a16 g8. c16 b8. a8 b a8 r8 
	c4 e16 d8. fis16 a8. ~a8 g8
	fis16 e8. e16 d8. c8 b a8 r16 g16
	g4 r r r
	g4 c16 b8. e16 d8. r4
	a16 g8. c16 b8. a8 b a8 r8 
	c4 b16 a8. fis16 e8.

}
}
  \new Staff \with {
    instrumentName = #"Guitar"
	midiInstrument = "Acoustic Guitar (nylon)"
  }
  { 
\relative c {
	\time 4/4
	\key g \major
	\tempo 4 = 120
	\clef "treble_8"
	g8 <g' b> <g b> <a c> <a c>2
	a,8 <a' c> <a c> <b d> <b d>2
	b,8 <b' d> <g b> <b d> <b e>2
	d,8 <a' c><a c> <c fis><c fis>2
	R1
	<<{
	g'16 b, g b g'16 b, g b g'16 b, g b e16 b g' b,
	g'16 b, g b e b g b e b g b g'16 b, g b
	g' c, a c fis c a c e c a c fis c a c
	g' c, a c fis c a c e c a c fis c a c
	}\\{
	g,4 d' g, e'8 d e,4 e' b e
	a, e' a, e' d d a d
	}>>
	g'16 fis e d c b a g fis e d c b a b d 
	g, <g' b> <g b> <g b>  <g b> <g b> <g b> <g b>
		 <g b> <g b> <g b> <g b> g, <g' b> fis,  <g' b>
	e, <g' b>  <g b> <g b>  <g c> <g c> <g c> <g c>
	<g b>  <g b> <g b> <g b> e, <g' b> gis, <g' b>
	a <g c> <g c> <g c> 
}
}
>>
}


