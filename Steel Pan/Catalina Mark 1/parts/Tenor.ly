
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

Tenor = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\tempo "Adagio"
	\key c \major
\mark \default
	r1 r1
	\tempo \markup { \italic "accel." }
	r4 r b\pp r
	r r b r
	r b r b
	r b r b
	r4 e\mp r d r e r d
	r4 e r d r e r d
	\tempo "Allegro"
	r4 e8\mf\< e r e d4
	r4 e8 e r e d4
	r4 e8 e r e d4
	r4 e8 e r e d4
\mark \default
	\bar "[|:"
\repeat volta 2 {
	\tempo "(Allegro)"
	r4\f e8 e r e d4
	r8\mp <b e,>8 <b d,>2 <b e,>4
	r4\f e8 e r e d4
	r8\mp <a c> <a dis>4. fis'8 f e
	r4\f e8 e r e d4
	r8\mp <e, g> <e b'>2 <e g>4
	r4\f e'8 e r e d4
	r8\mp <d, a'>8 <d a'>4. f'8 e d
\mark \default
	<c e>4\f g' a8 g4 f8
	e4 g b8 g4 e8
	d4 e fis8 g4 fis8
	g8 fis g fis a g a b
	c4 a e8 c4 a'8
	c4 g e8 c4 d8
}
\alternative {
{	f4 g f8 g4 a8
	b8 a g f g f e d}
{	f4 g f8 g4 a8
	b8 a g f e d c b}
}
\bar ".|:"
 \compoundMeter #'((4 4) (9 8))	
	\set Timing.beatStructure = #'(2 2 2 2 3 3 3)
\mark \default
	c8\mf e4 e8 c e4.
	c8 e g c, e a c, e b'
	b,8 e4 e8 b e4.
	b8 e g b, e a b, e b'
	d,8 fis4 fis8 d fis4.
	d8 fis a d, fis b d, fis c'
	c,8 fis4 fis8 c fis4.
	c8 fis a c, fis b c, fis c'
\bar "||"
	\tempo \markup { \bold Adagio }
	<c, e g>1\mp^"Divisi. 1:1:1"
		~<c e g>4.~<c e g>4.~<c e g>4.
	<b e g>1~<b e g>4.~<b e g>4.~<b e g>4.
	<a d fis>1 ~<a d fis>4. ~<a d fis>4. ~<a d fis>4.
	<a c fis>1 ~<a c fis>4. ~<a c fis>4. ~<a c fis>4.
	\bar ":|]"
\mark \default
	\time 4/4
	\tempo "Allegro"
	c8\mf^"tutti" e4 e8 c e4 e8
	b8 e4 e8 b e4 e8
	d8 fis4 fis8 d fis4 fis8
	c8 fis4 fis8 c fis4 fis8

	c8 e4 e8 c e4 e8
	b8 e4 e8 b e4 e8
	d8 fis4 fis8 d fis4 fis8
	c8 fis4 fis8 c fis4 fis8

	c8 e4 e8 c e4 e8
	b8 e4 e8 b e4 e8
	d8 fis4 fis8 d fis4 fis8
	c8 fis4 fis8 c fis4 fis8
<<{
	c8\<^"Divisi. 2:1" e4 e8 c e4 e8
	b8 e4 e8 b e4 e8
	d8 fis4 fis8 d fis4 fis8
	c8 fis4 fis8 c fis4 fis8

	e8\f\<^"Divisi. 1:2" a4 a8 e a4 a8
	c,8 e4 e8 c e4 e8
	c8 f4 f8 c f4 f8
	d8 g4 f8 d a'4 a8
	\time 9/8
	g4.^"tutti"\ff a b\fermata
	\bar "|."
}\\{
	\xNotesOn
	\shiftOff
	r4 r b,_\markup { \italic "Tap rim with sticks" } r
	r r b r
	r b r b
	r b r b
	r b r b
	r b r b	
	r b r b
	r b r b	
}>>
	

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
         "Tenor" }
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
	\new Staff \relative c''{
	\Tenor
	}
}

\pageBreak
