date = \markup { "Engraved on " #(strftime "%m-%d-%Y" (localtime (current-time)))}

\header{
tagline = " "
}

\paper{
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-all-headers = ##t
}

SixBass = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\tempo "Adagio"
	\clef bass
	\key c \major
\mark \default
	c,1\p\<^"Roll" e
	\tempo \markup { \italic "accel." }
	c e
	c e
	c e
	c e
	\tempo "Allegro"
	c\f e
	c e
\mark \default
	\bar "[|:"
\repeat volta 2 {
	\tempo "(Allegro)"
	c2\mf c4 c
	e2 e4 e	
	d2 d4 d	
	g2 g4 g
	a2 a4 a
	g2 g4 g
	f2 f4 f
	g2 g4 g
\mark \default
	c,2\mp c4 c
	e2 e4 e	
	d2 d4 d	
	g2 g4 g
	a2 a4 a
	g2 g4 g
}
\alternative {
	{f2 f4 f g2 g4 g}
	
	{<<{f1}\\{ r4 c r c}>>
	<<{g'1}\\{ r4 d r a}>>}
}
\bar ".|:"
 \compoundMeter #'((4 4) (9 8))	
\mark \default
	\set Timing.beatStructure = #'(2 2 2 2 3 3 3)
	<<{ c1\mp }\\{ r4 g' r g }>> c,4. e g
	<<{ e1 }\\{ r4 b r b }>> e4. g b
	<<{ d,1 }\\{ r4 a r a }>> d4. fis a
	<<{ fis1\< fis4. a c\!}\\{ r4 c, r c }>> 
\bar "||"
	\tempo "Adagio"
	c8\f e4 e8 c e4.
	c8 e g c, e a c, e b'
	b,8 e4 e8 b e4.
	b8 e g b, e a b, e b'
	d,8 fis4 fis8 d fis4.
	d8 fis a d, fis b d, fis c'
	c,8 fis4 fis8 c fis4.
	c8 fis a c, fis b c, fis c'
	\bar ":|]"
\mark \default
	\time 4/4
	\tempo "Allegro"
\repeat percent 4 {
	c,8\mp\< e4 e8 c e4 e8
	b8 e4 e8 b e4 e8
	d8 fis4 fis8 d fis4 fis8
	c8 fis4 fis8 c fis4 fis8\mf\<
}
	e8\f\< a4 a8 e a4 a8
	c,8 e4 e8 c e4 e8
	c8 f4 f8 c f4 f8
	d8 g4 f8 d a'4 a8

	\time 9/8
	c4.\!\ff~c ~c\fermata
	\bar "|."
	
}
\score {
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Catalina Mark 1" }
subtitle = "  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Six Bass" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
tagline = \date
}


	%\midi {}
	\layout {indent = 0}
	\new Staff \relative c{
	\SixBass
	}
}

\pageBreak

