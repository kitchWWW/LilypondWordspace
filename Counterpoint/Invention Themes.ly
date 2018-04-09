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
\score{
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
	g4 d' bes fis d' a
	r8 d g a bes c d c d a c a

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
	r8 d g a bes c d c d a c fis,
	g4 d bes' fis d a'

	\bar "|."
	
	}
}
>>
}