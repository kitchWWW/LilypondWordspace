\version "2.18.0"
#(set-global-staff-size 25)
%\setlength{\topmargin}{-2in}

\header {
      % The following fields are centered
    title = "Inventions"
    subsubtitle = ""
    composer = "Brian Ellis"
	arranger = "  "
    tagline = ""
    copyright = ""
  }
%{\score{
\midi {}
\layout{}
\new PianoStaff<<
\new Staff 
{
	\relative c' {
	\key d \major
	\time 2/4
	r16 a d fis g d g fis a d, a' fis g cis, g' e
	d8 fis b g d fis a cis
	d16 fis, d' a d g, d' b
	g8 cis a4
	b16 d, b' fis b e, b' gis
	r16 e a b cis a cis b
	a8 cis a fis
	b d e8. a16 a4 \bar "|."
}
}
\new Staff 
{
	\relative c {
	\key d \major
	\time 2/4
	\clef "bass"
	d8 fis, b4
	d8 fis, a4
	r16 a d fis g d g fis a d, a' fis g cis, g' e
	fis8 d' g,4
	cis16 e, cis' g cis fis, cis' a
	d,8 a' e4
	a8 cis, e gis
	a16 cis, a' e a d, a' fis
	b d, b' fis
	gis8 e a,4
	}
}
>>
}

%}


\score{
\midi {}
\layout{}
\new PianoStaff<<
\new Staff 
{
	\relative c' {
	\key g \minor
\tempo 4 = 100
	\time 3/4
	r8 d g a bes c d c d a c fis,
	g4 d' bes fis d' a
	r8 d g a bes c d c d a c a
	bes8 a g f d g
	c bes a g ees g
	a g f ees d c 
	bes8 c bes d ees f
	g4 a ees
	f g d
	ees8 f ees f ees g
	f ees d c bes a
	bes4 f' d a f' c
	r8 f, bes c d ees f ees f c ees c
	d4 c bes
	a8 f a bes c d
	bes4 a g
	f8 d f g a bes
	d4 c bes
	cis b a
	r8 a d e f g
	a g a e g cis,
	d4 f,4. a8
	cis4 a4. d8
	d8 cis d a bes a
	ees' d ees
	c d c
	fis e fis d a c
	bes g bes c d ees
	d c bes a fis a
	
	r8 d, g a bes c d c d a c fis,
	g4 fis e fis g a
	
	g d'4. bes8
	
	fis4 d'4. a8
	
	g fis g a bes c
	
	fis, d fis g a 8. g16
	g4
	
	}
}
\new Staff 
{
	\relative c {
	\key g \minor
	\time 3/4
	\clef "bass"
	r2. r2.
	r8 d g a bes c d c d a c fis,
	g4 d bes' fis d a'
	g4 d' bes
	g ees' c
	f, c' a
	f d' bes
	ees,8 f ees a c ees,
	d ees d g bes d,
	c d c ees g c,
	f4 a c,
	r8 f bes c d ees f ees f c ees a,
	bes4 f d' a f c'
	bes8 f bes c d ees
	c4 bes a
	g8 d g a bes c
	a4 g f
	g8 e g a bes g
	a e a b cis e
	d4 f,4. a8
	cis4 e,4. a8
	r8 a, d e f g
	a g a e a a,
	d2.\trill
	~d2.
	~d2 fis4
	g4 f ees
	d c d
	g bes, d
	fis a, d
	r8 d g a bes c d c d a c fis,
	r8 d g a bes c
	r8 d, fis g a bes
	ees,4 f g
	fis e d
	g
	
	\bar "|."
	
	}
}
>>
}