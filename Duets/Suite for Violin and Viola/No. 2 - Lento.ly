\score {
\new StaffGroup
<<
  \new Staff \with {midiInstrument = #"cello"} \relative g' {
	\tempo 4 = 65
	\key d \minor
    d1 ^(
	_~d
	c
	_~c
	d
	e
	d
	c)
	\time 1/4
	r4
	\time 4/4
	d'1 ~d c bes
	\time 1/4
	r4
	\time 4/4
	a1 g f bes
	\time 1/4
	r4
	\time 4/4
	f1 e c bes
	\time 1/4
	r4
	\time 4/4
	
	d1 ~d c ~c d e d cis r4 \xNotesOn d'' r2
	\bar "|."
	
  }
  \new Staff \with {midiInstrument = #"cello"} \relative g {
    \clef alto
	\key d \minor
    r2 d4 e
	~e4 r d e
	~e4 r d e
	~e r bes' a
	~a r f g
	~g r bes a
	~a r g f
	~f2 r4 \xNotesOn e \xNotesOff
	\time 1/4
	r4
	\time 4/4
	r2 d4 e
	~e4 r g' f
	~f r bes, a
	~a2 r4 \xNotesOn g' \xNotesOff
	r4
	r2 d'4 e
	~e r bes, c
	~c r f, g
	~g2 r4 \xNotesOn d' \xNotesOff
	r4
	r2 d,4 e
	~e r f' g
	~g r bes, a
	~a2 r4 \xNotesOn d \xNotesOff
	r4
	r2 e4 d
	~d r e d
	~d r e d
	~d r a bes
	~bes r g' f
	~f r a bes
	~bes r g f
	~f2 r4 \xNotesOn e
	r4  d' r2_\markup{ \italic {2:05 / 2:45}}
	
  }
>>
  \header { piece = "Lento"}\midi {} \layout {}
}
