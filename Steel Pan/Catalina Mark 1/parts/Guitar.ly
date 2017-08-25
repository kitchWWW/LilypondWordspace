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

#(set-global-staff-size 23)

Guitar = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\tempo "Adagio"
	\key c \major
	%\clef bass
\mark \default
	<e g>1\p\<^"Roll" <g b>
	\tempo \markup { \italic "accel." }
	<e g> <g b>
	<e g>1 <g b>
	<e g>1 <g b> <e g> <g b>
	\tempo "Allegro"
	<e g>1\f <g b> <e g> <g b>
\mark \default
	\bar "[|:"
\repeat volta 2 {
	\tempo "(Allegro)"
	g8\mf e' c e r e r g
	b, g' e g r g r b
	a, fis' d fis r fis r a
	c,, a' fis a r a r c
	e, c' a c r c r e
	g, e' c e r e r g
	c,, a' f a r a r c
	f, b g b r b r d
\mark \default
	g,8\mp e' c e r e r g
	b, g' e g r g r b
	a, fis' d fis r fis r a
	c,, a' fis a r a r c
	e, c' a c r c r e
	g, e' c e r e r g
}
\alternative {
{	c,, a' f a r a r c
	f, b g b r b r d	}
{	c, a' f a r a r c
	f, b g b r b r d	}
}
\bar ".|:"
 \compoundMeter #'((4 4) (9 8))	
	\set Timing.beatStructure = #'(2 2 2 2 3 3 3)
\mark \default
\pageBreak
	<c, e>1\mf^\markup { \italic "Expressive" }
		 g'8 c4 a8 c4 b8 c4
	<e, g>1 g8 e'4 a,8 e'4 b8 e4
	<d, fis>1 a'8 d4 b8 d4 c8 d4
	<fis, a>1 a8 fis'4 b,8 fis'4 c8 fis4
\bar "||"
	\tempo "Adagio"
	<c e,>1\mf ~<c e,>4. ~<c e,>4. ~<c e,>4.
	<b e,>1 ~<b e,>4. ~<b e,>4. ~<b e,>4.
	<d, fis>1 ~<d fis>4. ~<d fis>4. ~<d fis>4.
	<c fis>1 ~<c fis>4. ~<c fis>4. ~<c fis>4.
	\bar ":|]"
\mark \default
	\time 4/4
	\tempo "Allegro"
	<e g>1\mp\< <g b> <fis a> <a c>
	<e g>1 <g b> <fis a> <a c>
	g8\mf\< e' c e r e r g
	b, g' e g r g r b
	a, fis' d fis r fis r a
	c,, a' fis a r a r c
	g8 e' c e r e r g
	b, g' e g r g r b
	a, fis' d fis r fis r a
	c,, a' fis a r a r c
	e, c' a c r c r e
	g, e' c e r e r g
	c,, a' f a r a r c
	f, b g b r b r d


	\time 9/8
	g,4.\ff ~g ~g\fermata
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
         "Guitar & Cello" }
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
	\new Staff \relative c{
	\Guitar
	}
}

\pageBreak
