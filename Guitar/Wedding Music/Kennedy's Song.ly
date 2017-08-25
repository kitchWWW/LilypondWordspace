\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"Kennedy's Song"}}
	subtitle = "Wedding Music"
	subsubtitle = "Solo Guitar"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative g {
	\key a \major
\time 4/4
	\tempo 4 = 120
	\time 2/4
	<<{
%	a4 a8 a8
%	a4 a8 a8
%	a4 a8 a8
%	a4 b4
%	d4 d8 d8
%	cis4 cis8 cis
%	b4 b8 b8
%	cis4 b

	a4 a8 a8
	a4 a8 a8
	a4 a8 a8
	a4 b4
	cis4 cis8 cis
	cis4 cis8 cis 
	cis4 cis8 cis 
	cis4 d4
 	e4 e8 e8
	e4 e8 e
	e4 e8 e
	e4 fis4
	a4 a8 a8
	a4 a8 a8
	a4 a8 a8
	b4 a4
	
	a'4 a8 a8
	a4 a8 a8
	a4 a8 a8
	a4 b4
	cis4 cis8 cis
	cis4 cis8 cis 
	cis4 cis8 cis 
	cis4 d4
 	e4 e8 e8
	e4 e8 e
	e4 e8 e
	e4 d
%start of melody
	cis4 cis8 cis
	e4 e8 e8
	a,4 a8 a
	cis4 cis8 cis8
	fis,4 fis8 fis
	a4 a8 a8
	d,4 d8 d8
	e4 fis8 e
%end of melody
	e4 e8 e8
	e4 e8 e
	e4 e8 e
	e4\fermata d
	cis4 cis8 cis
	e4 e8 e8
	a,4 a8 a
	cis4 cis8 cis8
	gis4 gis8 gis
	fis4 e 
	gis4 gis8 gis
	b4 d

	cis'4 cis8 cis
	e4 e8 e8
	a,4 a8 a
	cis4 cis8 cis8
	fis,,4 fis8 fis
	a4 a8 a8
	b4 b8 b8
	cis4 d4
	
	e4 e8 e8
	e4 e8 e
	e4 e8 e
	e4\fermata d
	cis4 cis8 cis
	cis4 cis8 cis
	cis4 cis8 cis
	cis4 b
	a,4 a8 a8 
	a4 a8 a8 
	a4 a8 a8
	a4 b
	\breathe
	a2 
	\bar "|."
	}\\{

%	a,2 gis fis e
%	fis fis e gis
	a2 gis fis e
	a gis fis e
	a gis fis e
	d' cis b e
	a, gis fis e
	a' gis fis e
	a' gis fis e
	a, gis fis e
	d cis b e
	a gis fis gis \fermata
	a gis fis e
	d d4 cis b2 e
	a gis fis e
	d cis b e
	a gis fis gis \fermata
	a gis fis e
	a, gis fis e a
	\pageBreak
	s1
	}>>
}
}


