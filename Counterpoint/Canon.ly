\version "2.18.0"
#(set-global-staff-size 25)
%\setlength{\topmargin}{-2in}

\header {
      % The following fields are centered
    title = "Canon"
    subsubtitle = ""
    composer = "Brian Ellis"
	arranger = "  "
    tagline = ""
    copyright = ""
  }


%{\score{
\midi {}
\layout{}
<<
\new Staff 
{
	\relative c'' {
	\time 4/4
<<{
	r8 c b a b a16 g a c b d c4 d e f16 e d8 e8 c d b c4
}\\{
	s1 r8 c, b a b a16 g a c b d c4 g' c,4 \bar "|."
}>>

}
}

>>
}


\score{
\midi {}
\layout{}
<<
\new Staff 
{
	\relative c' {
	\time 4/4
<<{
	c4 d8 e f4 g8 a g16 f e d e8 f g8 f16 e d8 b
	c'4 d8 e f4 g8 a g16 f e d e8 f g8 f16 e d8 b
	c8 d16 e f8 g16 a g f e d e8 d c4 \bar "|."
}\\{
	s1 s c,4 b a b8 c e4 c8 d e f g f
	e4 d g g, c
}>>

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
	\relative c'' {
	\time 4/4
	\key g \major
	g a b c d c8 a fis4 e8 fis
	g8 e fis d g e a fis a g a4 ~ a8 c d c
	b4 a g fis e fis8 a c4 fis8 e
	d8 g, a b cis d cis a e' dis e4 ~ e8 b8 a g
	fis4 d' e, cis' d
}
}

\new Staff 
{
	\relative c' {
	\time 4/4
	\clef "bass"
	\key g \major
	s1 s1 g4 a b c d c8 a fis4 e8 fis
	g8 e fis d g e a fis a g a4 ~ a8 c d c
	d4 cis b a g a8 cis e4 fis8 e d8 g, a b cis d a4
	d,4
	\bar "|."
}
}

>>
}