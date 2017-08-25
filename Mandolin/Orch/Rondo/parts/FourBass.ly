
FourBass = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2

	\clef "bass_8"
	\mark \default
	\time 2/4
	\tempo 4 = 100
	R2*9
	\mark \default
	c2~c4 g8 b
	c2 ~c4 g8. b16
	c4 c 
	c8. e16 g,8. b16
	a'2 e2 d2
\mark \default
	\bar "||"
	\time 6/8
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4." #1
      " = "\smaller \general-align #Y #DOWN \note #"4" #1)}}
	c2.
	c4.-.^"Pizz." c-. c-. r
	f,-. f-. f-. r
	e-. e-. e-. r
	r g-. g-. r
	c-. c-. c-. r 
	f,-. f-. f-. r 
	e-. e-. f-. f-. g-. b-. 
	\bar "||"
	\time 2/4
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4" #1
      " = "\smaller \general-align #Y #DOWN \note #"4." #1)}}
	c4-. r r2
	
	c2^"arco." ~c4 g8 b
	c2~c4 g8 b
	a'2 e2 d2
\mark \default
	c2
	c
	g
	d'
	c
	e
	c
	g
\mark \default
	g8\< g16 g g8 g
	g8 g16 g g8 g
	g4 g8 g %c
	g4 g8 g %d
	g4 g8 g %e
	g4 g8 g %f
	g4 g8 g %g
	g4 g8 g %a
	g4 g8 g %b
	g4 g8 g %c
	a4-> b c d
\mark \default	
	c2\fff
	r2
	d4\mp\< d d8 f a d,
	e4 e e8 g b e,
	f4 f f8 a c f,
	g4 g g8 b d g,
	b4 b b8 d f b,
	c,2:32\ff\fermata
	R2^"Rubato"
	r4 d r2 r4 b
	r8\fermata r r4 c2 g g\mp
	r4 b4 ~b2\fermata
	dis2
	r2
	a2
\override TextSpanner #'(bound-details left text) = "accel."
	<e a>\<\startTextSpan ~<e a> 
	\time 5/4
	<e a>2. ~<e a>2\stopTextSpan
	\time 3/4
	 <e a>2\ff\fermata r4
\mark \default
	\bar "||"
	\time 2/4
	r2^"a tempo" r4 r8 c' f\sfz r r4
	e,8\mp c' e, c' e, c'16 c d e f8 gis\sfz r r4
	r4 r8 c, f\sfz r r8 c f\sfz r r8 c\ff f c f c f2 ~f <e, g c>
	(c) ~c
\bar "|."
}



\score {
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Rondo" }
subtitle = "  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Double Bass" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
tagline = ""
}

	%\midi {}
	\layout {indent = 0}
	\new Staff \relative c,{\FourBass}
}

\pageBreak

