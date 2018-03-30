\version "2.18.0"
#(set-global-staff-size 25)
%\setlength{\topmargin}{-2in}

\header {
      % The following fields are centered
    dedication = "For Ben"
    title = "Melody in the Bach Style"
    subtitle = "For a Single Line Insturment"
    subsubtitle = ""
    composer = "Brian Ellis"
	arranger = "  "
    tagline = ""
    copyright = ""
  }
\score{
\midi {}
\layout{}
<<
\new Staff 
{
	\relative c' {
	\key d \major
	\time 2/4
	d8 fis16 g a fis g a
	b cis b a g b a g
	a8 b16 cis d fis e d
	cis a cis b a8 g
	fis16 a b g a8 b16 a
	g b cis a b8 cis16 b
	a cis d b a8 g fis8 d' e, cis' d2
	}
}
\new Staff 
{
	\relative c {
	\key d \major
	\time 2/4
	\clef "bass"
	d2^"I" g^"IV" fis^"I6" a^"V7"
	d2^"I" b^"IV6" a^"V" a, d^"I"
	}
}
>>
}