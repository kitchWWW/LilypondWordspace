\version "2.18.0"
#(set-global-staff-size 18)
%\setlength{\topmargin}{-2in}


\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
  print-all-headers = ##t
  print-page-number = ##f
  ragged-last-bottom = ##f
}


\header {

    tagline = ""
  }

\score{

\header {
      % The following fields are centered
    dedication = ""
    title = "The Clare Reel"
    subtitle = "   "
    instrument = "Violin"
    composer = "traditional"
	arranger = "arr. Brian Ellis"
    tagline = ""
  }

\midi {}
\layout{}<<
\new Staff 
{
\transpose f e{
	\relative c' {
	%Theme
	\tempo 4 = 120
	\time 4/4
	\key f \major
	f8 d c d g4 f8 d
	f8 d c d a'4 f8 d
	f8 d c d g4 f8 g
	a8 bes g a f2		
	\bar ":|.|:"
	a8 c d f c d a g
	a c d f d2
	a8 c d f c d a g
	f d c d g2
	\bar ":|."
	
	}
	}
}
>>
}










\score{

\header {
      % The following fields are centered
    dedication = ""
    title = "The Green Gowned Lass"
    subtitle = "   "
    instrument = "Violin"
    composer = "traditional"
	arranger = "arr. Brian Ellis"
    tagline = ""
  }

\midi {}
\layout{}<<
\new Staff 
{
\transpose f e{

	\relative c'' {
	%Theme
	\tempo 4 = 120
	\time 4/4
	\key f \major
	\partial 8 {b8}
	
\repeat volta 2 {
	c4 a8 f g f a f g f a c a d, d c'
	c4 a8 f g a f a }
\alternative {
  { c8 d f g a g f d }
  { c8 d f g a f f e | }
}
\repeat volta 2 {
	f8 g a f g f d f 	
	g2 g4. f8 ~
	f g a f g a f d
}\alternative {
  { c8 d f g a g f d }
  { c8 d f g a f f e | }
}
\bar "||" \mark \markup { \musicglyph #"scripts.coda" }
c2 a8 g4.
f2 \bar"|." 

	}
}
}
>>
}

