\score {
\new StaffGroup
<<
  \new Staff \with {midiInstrument = #"cello"} \relative g' {
	\tempo 4 = 120
	\key d \major
	\time 3/4
	\partial 4
	d'8 e fis4. e8 d4 e2 d4 d a2 fis4 a fis'4
	e d fis4 e16 (d4..) a'4 a2. ~a2 a4 
	a fis a fis d fis e d e d16 (a4..) d,8 e
	fis4. e8 d4 e16 (d4..) e4 d2.~d2 \bar ":|.|:" d'4
	d4 b d a2. ~a ~a2 d4 d a d g,2. ~g ~g2 fis4
	fis d fis d b d d b d b16 (fis''4..) fis4
	fis d fis b,2. ~b2. a2 g4 fis2 b,4 d2 \bar "|."
	
	

  }
  \new Staff \with {midiInstrument = #"cello"} \relative g' {
    \clef alto
	\key d \major
	\partial 4 r4
	a2. g fis4 d2 ~d4 fis a bes g2 b4 a2
	d4 d, fis a d \clef treble fis
	fis4 d fis d b d d b d b16 (fis4..)
	\clef alto
	fis,8 e
	d2. fis g4 b a d2 \bar ":|.|:"
	r4 d2. ~d2 d8 e fis4. e8 d4 e2. d ~d2
	d8 e fis4. bes,8 a4 g2.
	a4 fis a fis d fis e d e d16 (d'4..) ~d4
	d2. ~d2 d8 e fis4. e8 d4 e16 d4.. e4 d2.
	~d2 _\markup{ \italic {1:40 / 6:10}}
	
	
}
>>
  \header { piece = "Lyrical"}\midi {} \layout {}
}