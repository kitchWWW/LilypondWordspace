\version "2.18.0"

#(set-global-staff-size 18)

\header {
	title = "The Mountain"
	subtitle = ""
	composer = "Steve Earle"
	arranger="arr. Brian Ellis"
	tagline = ""
}

upper = \relative c'' {
  \clef treble
  \key d \major

  \time 3/4
	\tempo 4. = 70
\partial 4 d8\mp e
	fis4 fis4. e8
	d4 d4. d8 
	fis4 a fis b2.(
	a2) fis8 a
	b4 a4. b8
	fis4 d4. e8
	fis4\> d d
	b2\p

	\breathe

	d,8\< e
	fis\f fis fis fis e e
	d d d d d fis
	fis a a fis fis b b2.
	a2 fis8 a
	b a a b b8 fis
	fis d d d d e8
	fis d d d d d
	b\< b b b b b
	b b b b b b
	cis cis cis cis cis cis
	cis\ff cis cis\> cis

	d8\mp e
	fis4 fis4. 	\breathe e8
	d4 d4. d8 
	fis4 a fis b2.
	a2 fis8 a
	b4 a4. b8
	fis4 d4. e8
	fis4 d d
	b2.
	\clef bass
	\chordmode { d,2. d,2. ~d,2 fis,4:m/cis g,2./d }
	r2.
	\chordmode {d,2. d,2. ~d,2 fis,4:m/cis b,,2.:m ~ b,,:m}
	\clef treble
	<d fis>\fermata
}

lower = \relative c {
  \clef bass
  \key d \major
  \time 3/4
	r4
	<d fis a>2 <d fis a>4 
	<d fis a>2 <d fis a>4 
	<d fis a>2 <cis fis a>4 
	d4 g b
	d, fis a
	<d, g b>2 <d g b>4
	<d fis a>2 <d fis a>4 
	<d fis a>2 <d fis a>4 
	<b d fis>2.
	d8 fis a r4.	
	d,8 fis a r4.
	d,8 fis a4 b8 cis
	d,8 g b4 d,8 g
	d fis a r4.
	d,8 fis a r4.
	d,8 fis a r4.
	d,8 fis a4 cis,
	b8 d fis r4.
	b,8 d fis r4.
	a,4 a a
	a a2
	d2 e4
	fis2 e4
	d2.
	e4 g b
	cis a e
	d2 e4 fis2 e4
	d b a
	d2
	
	d,8 e
	fis4 fis4. e8
	d4 d4. d8 
	fis4 a fis b2.(
	a2) fis8 a
	b4 a4. b8
	fis4 d4. e8
	fis4 d d
	b2. ~ b
	<d a'>\fermata
	\bar"|."

}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {}
  \midi {}
}
