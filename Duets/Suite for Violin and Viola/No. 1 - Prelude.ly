\score {
\new StaffGroup
<<
  \new Staff \with {midiInstrument = #"cello"} \relative g' {
	\tempo 4 = 170
	\key d \minor
    d8 f f bes bes2
	d,8 f f a a2
	d,8 f f bes bes2
	d,8 f f a a2

    c,8 f f a a2
	b,8 f' f g g2
	bes,8 d d f f2
	a,8 c c e e2
	gis,8 b b d d2
	gis,8 b b e e2
	a,8 c c e e2
	gis,8 b b d d f f g
	g8 a4. ~a8 g (a bes)
	g8 a4. ~a8 g (a bes)
	a8 bes4. ~bes8 a (b cis)
	b8 cis4. ~cis8 b (cis d)
	d2 ~d8 c (d e)	%6
	d2 ~d8 c (d e)	%4
	e2 ~e8 d (e f)	%2
	e2 ~e8 d (e f)	%5
	f2 ~f8 e (f g)	%6
	f2 ~f8 e (f g)	%1
	f2 ~f8 e (f g)	%idkbruh
	f2 ~f8 e (f g)
	g2 ~g8 a (g f)
	g2 ~g8 a (g f)
	f1 ~f2				%1
	r2 
	\bar "|."
  }
  \new Staff \with {midiInstrument = #"cello"} \relative g' {
    \clef alto
	\key d \minor
    d2 ~d8 e8 (d c)
	d2 ~d8 e8 (d c)
	bes2 ~bes8 c8 (bes a)
	a2 ~a8 bes (a g)
	f2 ~f8 f (g a)
	f2 ~f8 f (g a)
	f2 ~f8 f (g a)
    e2 ~e8 f (e d)
	e2 ~e8 f (e d)
	d2 ~d8 e (d c)
	c2 ~c8 c (d e)
	d8 r4. r2
	cis8 e e a a e e d
	d f f a a f f g
	g d' d g g d d cis
	cis e e a a e e d
	d f f bes bes f f g
	g bes bes g g bes bes g
	g bes bes g g bes bes g
	g e e cis cis a a d
	d bes bes d d bes bes d 
	d a a d d a a d
	d bes bes d d bes bes d
	d a a d d a a d
	cis a a cis cis a a g
	a cis, cis g' a cis, cis g'
	d a' a d d f f d
	d2 r2_\markup{ \italic 0:40}
  }
>>
  \header { piece = "Prelude"}\midi {} \layout {}
}
