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
	g4 a16 bes a g
	f8 f f e
	cis4 d16 e f g
	f8 \bar "|." s2..
	\break
	r8 d'8 d d cis4 e16 f e d
	c!8 c c a gis4 
	a16 b cis d cis8
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




