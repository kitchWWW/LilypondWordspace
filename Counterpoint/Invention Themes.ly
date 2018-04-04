\version "2.18.0"
#(set-global-staff-size 25)
%\setlength{\topmargin}{-2in}

\header {
      % The following fields are centered
    title = "Invention Themes"
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
	d8 fis b g fis d a' e
	s2
	fis'16 a, fis' d g b, g' d
	s2
	a16 d, a' fis a b, g' d


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
	s2
	d4 g
	s2
	d4 g
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
	\time 3/4
	r8 d g a bes c d c d a c fis,
	g4 d' bes fis d' a
	r8 d g a bes c d c d a c fis,
	s2.
	d,8 ees d g bes f g a g c g ees

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
	g4 d bes fis' d a
	s2.
	d4 bes g
	}
}
>>
}