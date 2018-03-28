\version "2.18.0"
#(set-global-staff-size 25)
%\setlength{\topmargin}{-2in}

\header {
      % The following fields are centered
    dedication = ""
    title = "Thoroughbass Variations following Niedt"
    subtitle = "For Piano"
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
	\key f \major
	\time 4/4
	a16^"8.14" bes a g a8 a16 bes 
	c16^"4.23" d c bes c a bes c
	d16^"8.14" e d c d8 d16 e
	f16^"14.27"  g f e f g f g
	e16^"15.34" d c bes c d e f
	c16^"9.27" bes c d e d e c
	f16^"14.30" g a g f8 g16 f
	e16^"14.30" f g f e8 f16 e
	d16^"14.30" e f e d8 e16 d
	c16^"15.11" d c bes c bes c bes
	a16^"15.10" g a bes a bes a g
	f16^"14.29" e f g a g a f
	e16^"14.27"f e d e f e f
	d16^"14.27" e d c d e d e c 
	}
}
\new Staff 
{
	\relative c {
	\key f \major
	\time 4/4
	\clef "bass"
	f2 a bes g c e, f c d e f d g g, c4 \bar "|."
	
	}
}
>>
}