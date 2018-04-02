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

	}
}
>>
}