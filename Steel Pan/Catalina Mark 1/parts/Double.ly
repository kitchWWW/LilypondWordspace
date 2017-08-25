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

Double = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\tempo "Adagio"
	
	\key c \major
\mark \default
	r1 r1 \tempo \markup { \italic "accel." }
	\xNotesOn
	r4 r b'_\mf\> r^\markup { \italic "Tap rim with sticks" }
	r r b r
	r b r b
	r b r b
	r b r b
	r b r b
	\xNotesOff
	r e,\p\<^\markup { \italic "As normal" } r d
	r e r d
	\tempo "Allegro"
	r8 <e c>\mf <e b>2 <e c>4
	r8 <g e> <g d>2 <g e>4
	r8 <e c> <e b>2 <e c>4
	r8 <g e> <g d>2 <g e>4
\mark \default
	\bar "[|:"
\repeat volta 2 {
	\tempo "(Allegro)"
	r8\mp <e g> <e b'>2 <e g>4
	r4\f e8 e r e d4
	r8\mp <fis a>8 <fis a>2 <fis a>4
	r4\f e8 e r fis f e
	r8\mp <e a> <e g>2 <e a>4
	r4\f e8 e r e d4
	r8\mp <c f> <c e>2 <c f>4
	r4\f e8 e r f e d
\mark \default
	r8 <e g>\mp <e b'>2 <e g>4
	r8 <b e>8 <b d>2 <b e>4
	r8 <fis a>8 <fis a>2 <fis a>4
	r8 <a c> <a dis>2 <a c>4
	r8 <e' a> <e g>2 <e a>4
	r8 <e g> <e b'>2 <e g>4
}
\alternative {
{	r8 <c f> <c e>2 <c f>4
	r8 <d a'>8 <d a'>2 <d a'>4}
{	r8 <c f> <c e>2 <c f>4
	r8 <d a'>8 <d a'>2 <d a'>4}
}
	\bar ".|:"
\mark \default
	\key c \major
 \compoundMeter #'((4 4) (9 8))
	\set Timing.beatStructure = #'(2 2 2 2 3 3 3)
	e16\mf d e4 e16 a, e' a, e'4 a,8
		c16 e c e c e c16 e c e c e c16 e c e c e
	d16 b d4 d16 g, d' g, d'4 a8
		b16 d b d b d b d b d b d b d b d b d
	fis16 d fis4 fis16 b, fis' b, fis'4 b,8
		d16 fis d fis d fis d fis d fis d fis d fis d fis d fis
	a16 fis a4 a16 c, a' c, a'4 c,8
		fis16 a fis a fis a fis a fis a fis a fis a fis a fis a
	\bar "||"
	\tempo "Adagio"
	c,1\mp c4.-> e g
	e1 e4.-> g b
	c,1 d4.-> fis a
	fis1 fis4.-> a c
	\bar ":|]"
\mark \default
	\time 4/4
	\tempo "Allegro"
	c,8\mp\< e4 e8 c e4 e8
	b8 e4 e8 b e4 e8
	d8 fis4 fis8 d fis4 fis8
	c8 fis4 fis8 c fis4 fis8\mf\<
	
\repeat percent 4 {	r4 e8 e r e d4}
\repeat percent 4 {	r4\f\< e8 e r e d4}	
	<c e>4\ff g' a8 g4 f8
	e4 g b8 g4 e8
	d4 e fis8 g4 fis8
	g8 fis g fis a g a b
	c4 a e8 c4 a'8
	c4 g e8 c4 d8
	f4 g f8 g4 a8
	b8 a g f e d c b

	\time 9/8
	g4. a b\fermata
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
         "Double Second & Double Tenor" }
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
	\new Staff \relative c'{
	\Double
	}
}

\pageBreak
