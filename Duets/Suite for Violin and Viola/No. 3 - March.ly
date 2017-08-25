\score {
\new StaffGroup
<<
  \new Staff \with {midiInstrument = #"cello"} \relative g'' {
	\tempo 4 = 120
	\time 2/2
	\key d \minor
	r4 d r d
	r4 d r d
	r4 d r d
	r4 cis r e
	r4 f r a
	r4 c r a
	r4 f r g
	r4 cis, r e
	
	r4 <f, d'>8 r r8 <f d'>8 r4
	r8 <g e'> r <g e'> r4  cis,8 r
	r4 <d f>8 r r <d f> r4
	cis4. bes8 cis4 r
	r4 <f d'>8 r r8 <f d'>8 r4
	r8 <g e'> r <g e'> r4 f'8 r
	r4 <g bes,>8 r r <f bes,> r4
	r8 <e a,> r <e a,> r2
	r2 r4. c8
	b4 g e2
	r4 <e cis'>8 r r <e cis'> r4
	g'4. a8 <g a,>4 r
	r4 f r a
	r4 c r a
	r4 f r g
	r4 a r g
	r8 <d e,>8 <d f,> r r <d e,> <d f,> r
	r <c g> <c a> r r <c g> <c a> r
	r <d f,> <d g,> r r <d f,> <d g,> r
	<cis g>4. <d g,>8 <cis g>4 r8 d
	f16 r8. a16 r8. c16 r8. a16 r8. 
	f16 r8. g16 r8. cis,16 r8. e16 r8. 
	g,16 r8. bes16 r8. d16 r8. a16 r8. 
	cis16 r8. a16 r8. d,16 e f g a b cis d
	
	d4. e8 f4 e8 d
	e8 a c, g' a,4 a'8 r
	bes4. c8 bes c bes g
	a4. g8 a8 r <cis e,>4
	d4. e8 f4 e,8 d
	e'8 e, c' d, a'4 e16 (<a a,>8.)
	bes4.c8 d4 c8 bes
	c4 a f2
	e4. g8 c2
	e,4. g8 b2
	a4. bes8 a bes a g
	a2 cis4 r
	
	r4 d,, r d
	r4 d r d
	r4 d r d
	r4 cis r e
	r4 f r a
	r4 c r a
	r4 f r g
	r4 cis, r e
	f1 r

}
  \new Staff \with {midiInstrument = #"cello"} \relative g' {
    \clef alto
	\key d \minor
	d4. d8 d2
	c4. c8 c2
	bes4. bes8 bes2
	a4. a8 a2
	d4. d8 d2
	c4. c8 c2
	bes4. bes8 bes2
	a4. a8 a2

	d4. e8 f4 e8 d
	e4 c a2
	bes4. c8 bes c bes g
	a2 e4 r
	d'4. e8 f4 e8 d
	e4 c a2
	bes4.c8 d4 c8 bes
	c4 a f2
	e4. g8 c2
	e,4. g8 b2
	a4. bes8 a bes a g
	a2 cis4 r
	d'4. d8 d2
	c4. c8 c2
	bes4. bes8 bes2
	a4. a8 a2
	d,4. e8 f4. d8
	e4. c8 a4. a8
	bes4. c8 bes4. g8
	a4. g8 a4 r8 d8
	d16 c bes a d8 d e4.. f16
	e16 d c bes e d c bes a4.. g16
	g a bes c g a bes c f, g a bes f g a bes
	e, f g a e8 e d f a d

	d4. e8 f4 e8 d
	e4 c a2
	bes4. c8 bes c bes g
	a4. <bes d>8 a8 r <e a e' a>8\arpeggio r8
	d'8 f f a a f f d
	e a, a e' e c c e
	f bes bes d d bes bes f
	f a, a f' f f, f f'
	e c c e e c c e
	e b b e e b b e e2 cis a2 <e a e' a>4 r
	
	d'4. d8 d2
	c4. c8 c2
	bes4. bes8 bes2
	a4. a8 a2
	d4. d8 d2
	c4. c8 c2
	bes4. bes8 bes2
	a4. a8 a2
	<d, a'>1 d1_\markup{ \italic {1:50 / 4:35}}
	\bar "|."
}
>>
  \header { piece = "March"}\midi {} \layout {}
}
