Cello = {
	\set Score.markFormatter = #format-mark-box-alphabet
\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2

	\clef bass
	\time 2/4
	\mark \default
	\tempo 4 = 100
	r2 r2 
	c4\mf c c g8 b
	c4 c c g8 b
	a\< a c-> a
	e e g-> e
	d d f-> d
\mark \default
	c4\f c c g'8 b
	c4\mf c
	c g8. b16
	c4 c c8. e16 g,8. b16
	a4 a4->
	a4 f16\f\< (e f e)
	r4 d16 (e d e)
\mark \default
	\bar "||"
	\time 6/8
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4." #1
      " = "\smaller \general-align #Y #DOWN \note #"4" #1)}}
	c2.:32\ff
	c4.\mp e g2.
	f4. a c2.
	e,4. g b2.
	r4. g b2.
	c4. e g2.
	f4. a c2.
	e,4. g f a g b
	\bar "||"
	\time 2/4
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4" #1
      " = "\smaller \general-align #Y #DOWN \note #"4." #1)}}
	c2
	r
	
	c,4\mf c c g8 b
	c4 c c g8 b
	a\< a c-> a
	e e g-> e
	d d f-> d\f
\mark \default	
	g8 b g d ees e g4 
	g8 b g ees d4 c8 d
	ees e g a b bes aes g f d ees f g2
\mark \default
	g8\p\< g16 g g8 g
	g8 g16 g g8 g
	g8 d'16 c g8 g %c
	g8 e'16 d g,8 g %d
	g8 f'16 e g,8 g %e
	g8 g'16 f g,8 g %f
	g8 a'16 g g,8 g %g
	g8 b'16 a g,8 g %a
	g8 c'16 b g,8 g %b
	g8 d''16 c g,8 g %c
	a4-> b c d
\mark \default
	e2\fff
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
	ais c
\override TextSpanner #'(bound-details left text) = "accel."
	d8\<\startTextSpan dis e f fis g gis a
	\time 5/4	
	ais2.:\ff ~ais2: \stopTextSpan
	\time 3/4
	ais2\fermata r4
\mark \default
	\bar "||"
	\time 2/4
	r2^"a tempo" r4 r8 <c,, g'> <c gis'>-.\sfz r r4
	e8\mp c' e, c' e, c'16 c d e f8 gis\sfz r r4
	r4 r8 <c, g'> <c gis'>-.\sfz r r8 <c g'> <c gis'>-.\sfz r r8 
	<c g'>\ff <c gis'>-. <c g'> <c gis'>-. <c g'> <c gis'>2:32 ~<c gis'>:
	<<{
<c, g' e' c'>2:32 ~<c g' e' c'>2: ~<c g' e' c'>2:
	}\\{
	s2 c'8_"Solo" b16 a g f e d c2:32
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
         "Mando-Cello" }
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
	\new Staff \relative c{\Cello}
}

\pageBreak

