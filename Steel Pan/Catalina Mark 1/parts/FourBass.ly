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

#(set-global-staff-size 21)

FourBass = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\tempo "Adagio"
	\clef bass
	\key c \major
\mark \default
	c1\p^"Roll"\< e
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
	g,2 g4 g
	a2 a4 a
	g2 g4 g
	f2 f4 f
	g2 g4 g
\mark \default
	c2\mp c4 c
	e2 e4 e	
	d2 d4 d	
	g,2 g4 g
	a2 a4 a
	g2 g4 g
}
\alternative {
{f2 f4 f g2 g4 g}
	{<f c'>4. <f c'>8 <f c'> <f c'>4.
	<g d'>4. <g d'>8 <g d'> <g d'>4. }
}
	\key c \major
\mark \default
\bar ".|:"
 \compoundMeter #'((4 4) (9 8))	
	\set Timing.beatStructure = #'(2 2 2 2 3 3 3)
	<c g>8\mp <c g>4 <c g>8 <c g> <c g>4.
	<<{r8 e g r e a r e b' }\\{c,4. ~c ~c}>>
	<e b>8 <e b>4 <e b>8 <e b> <e b>4.
	<<{r8 e g r e a r e b' }\\{e,4. ~e ~e}>>
	<d a>8 <d a>4 <d a>8 <d a> <d a>4.
	<<{r8 fis a r fis b r fis c' }\\{d,4. ~d ~d}>>
	<<{<fis c>8\< <fis c>4 <fis c>8 <fis c> <fis c>4.
		r8 fis a r fis b r fis c'\!
		}\\{s1 fis,4. ~fis ~fis}>>
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
	c,1\mp\< e d fis
	
\repeat percent 16 { r4\mf\< e8 e r e d4 }

	\time 9/8
	e4.\ff ~e ~e\fermata
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
         "Four Bass" }
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
	\FourBass
	}
}

\pageBreak
