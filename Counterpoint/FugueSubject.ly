\version "2.18.0"
#(set-global-staff-size 25)
%\setlength{\topmargin}{-2in}

\header {
      % The following fields are centered
    dedication = ""
    title = "Fugue Subject"
    subtitle = "For Guitar"
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
	\relative c'' {
	\key d \minor
	\time 4/4
	r8 a a a 
	g8. a16 bes8 g
	f8 f f e
	cis8. d16 e8 g
	f8 \bar "|."

	}
}


%{
\new Staff 
{
	\relative c {
	\key d \minor
	\time 4/4
	\clef "bass"

	}
}
%}

>>
}





\score{
\midi {}
\layout{}
<<
\new Staff 
{
	\relative c'' {
	\key g \major
	\time 6/4
	r4 g a b2 e4
	d4. b8 a8 g fis a c2 b4	
	\bar "|."

	}
}

>>
}