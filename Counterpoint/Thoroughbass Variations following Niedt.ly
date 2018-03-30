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
	<a c f>2
	<a c f>
	<bes d f>
	<bes d f>
	<c c e>
	<bes c e>
	<a c f>2
	<g c e>
	<f bes d>
	<e g c>
	<f a c>
	<f a d>
	<g b d>
	<f b d>
	<e g c>1 <e g c>2
	}
}
\new Staff 
{
	\relative c {
	\key f \major
	\time 4/4
	\clef "bass"
	f8^"8.22" c f,16 c' f g
	a16^"4.31" bes a g a g a f
	bes8^"15.15" bes16 c bes bes bes a
	g16^"9.27" f g a bes a bes g
	c16^"18.10" c bes a g c g f
	e16^"4.19" d e f g g f e
	r16^"16.17" f,16 a c f, f' e d
	c16^"4.27" d c d e8 d16 c
	d16^"4.23" e d c d bes c d
	e16^"4.27" f e f g8 f16 e
	r16^"15.29" f c a f c' f e
	d16^"9.8" c d e d d e f
	g16^"20.12" d g c, g' b, g' a,
	g16^"9.34" g' a, g' b, g' g, g'
	c,8^"22.13" g'16 f e d c b c g f g e^"(edited)" g d g c,2 \bar "|."
	
	}
}
>>
}