

MandoA = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2

	\time 2/4
	\mark \default
	\tempo 4 = 100
	e,8\mf c' e, c' e, c'16 c d c b c
	e,8 c' e, c' e, c'16 c d c b c
	e,8 c' e, c' e, c'16 c d c b c
	a\< b c b a g f e f (e f e f e f e) d (e d e d e d e)\f
\mark \default
	e8 c' e, c' e, c'16 c d c b c
	e,8 c' e, c' e, c'16 c d c b c
	e,8 c' e, c' e, c'16 c d c b c
	a b\< c b a g f e f (e f e) r4 d16 (e d e) r4
\mark \default
	\bar "||"
	\time 6/8
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4." #1
      " = "\smaller \general-align #Y #DOWN \note #"4" #1)}}
\set Score.tempoHideNote = ##t
\tempo 4. = 100
\set Score.tempoHideNote = ##f
	c2.:32\ff
	r2.
	c'8\mf^"Pont." [e r] r4.
	r4. c8 [a r] c8 [g r ] r4.
	r2.
	r4 c8 b8 [a c] b2.:32
	r4. g'4\p f8 e4. e e4 d8 e4 d8 g4. e 
	c4.~c4 a8 g4 f8 g4 f8 e4 d8 e4 d8 c4. b
	\bar "||"
	\time 2/4
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4" #1
      " = "\smaller \general-align #Y #DOWN \note #"4." #1)}}
\set Score.tempoHideNote = ##t
\tempo 4 = 100
\set Score.tempoHideNote = ##f

	e8\mf c' e, c' e, c'16 c d e f g
	e,8 c' e, c' e, c'16 c f e d c
	e,8 c' e, c' e, c'16 c d c b c
	a\< b c b a g f e d (e f g) d (e f g) f (g a b) f (g a b)\f
\mark \default
	c2:32
	r2 r2 r8 d,16\p^"Pizz." r r8 ees16 r
	r8 ees16 r r8 ees16 r r8 ees16 r r8 ees16 r
	r8 f16 r r8 f16 r r4  g16 r r8 
\mark \default
	R2*10
	r8 e''16^"arco."\f\< d r8 e16 d r8 e16 d r8 e16 d\fff
\mark \default
	r2 r2
	f,,8\mf c' f, c' f, c'16 c b c d c
	g4\mp b e b
	a8\f c a c a c16 c b c d c
	g4\mf b d g
	b,8\ff c b c b c16 c b c d c
	<g, e' c' e>2:32\fermata
	R2*4^"Rubato" r8\fermata r r4 r2
	<g' b>2\pp
	\times 2/3 {g'16\mp g g} f8 \times 2/3 {g16 g g} f8
	R2 r8\fermata r r4
	r8 e r fis
	\times 2/3 {g16\mp g g} e8 \times 2/3 {g16 g g} e8
	\times 2/3 {a16\mp a a} e8 \times 2/3 {a16 a a} e8
\override TextSpanner #'(bound-details left text) = "accel."
	b'\<\startTextSpan c cis d dis e f fis 
	\time 5/4
	g2.:32\ff ~g2:\stopTextSpan
	\time 3/4
	g2\fermata
	r4
\mark \default
	\time 2/4
	\bar "||"
	e,8\p^"a tempo" c' e, c' e, c'16 c d c b8 c-.\sfz r8 r4
	r2 r4 r8 <g,, e' c' e> <g e' c' f>\sfz r r4
	r4 r8 <g e' c' e> <g e' c' f>\sfz r r8 <g e' c' e> <g e' c' f>
	c'16\f c b a g8\ff gis <g, e' c' e> <g e' c' f>  <g e' c' e> 
<<{	
	<g e' c' f>2:32 ~<g e' c' f>2:32
	<g e' c' e>2: ~<g e' c' e>2: ~<g e' c' e>2:
}\\{
	s8 g''16^"Solo" f e d c b a g f e d c b a g2
}>>
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
         "Mandolin One" }
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
	\new Staff \relative c''{\MandoA}
}

\pageBreak
