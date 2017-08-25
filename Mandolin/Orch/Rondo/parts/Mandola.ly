

Mandola = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2

	\clef "treble_8"
	\mark \default
	\time 2/4
	\tempo 4 = 100
	R2*7
	f16\mp (e f e f e f e) d (e d e d e d e)
\mark \default
	e8\mf c' e, c' e, c'16 c d c b c
	e,8 c' e, c' e, c'16 c d c b c
	e,8 c' e, c' e, c'16 c d c b c
	a\< b c b a g f e
	r4 f16 (e f e)
	r4 d16 (e d e)
\mark \default
	\bar "||"
	\time 6/8
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4." #1
      " = "\smaller \general-align #Y #DOWN \note #"4" #1)}}
	c4.:16\ff
	c4\mf d8 e4. e e4 f8 e4 d8 c4. c
	c4 d8 e4 f8 g4. g g2.
	r2. r4.
	c,4 d8 e4. e e4 f8 e4 d8 c4. e 
	g4.~g4 a8 g4 f8 g4 f8 e4 d8 e4 d8 c4. b
	\bar "||"
	\time 2/4
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4" #1
      " = "\smaller \general-align #Y #DOWN \note #"4." #1)}}
	c2
	r
	
	e8\mf c' e, c' e, c'16 c d c b c
	e,8 c' e, c' e, c'16 c d c b c
	a\< b c b a g f e f (e f e f e f e) d (e d e d e d e)
\mark \default	
	c4:16\f r
	r2 r
	
	r8 d'16\p d r8 ees16 ees
	r8 ees16 ees r8 ees16 ees
	r8 ees16 ees r8 ees16 ees
	r8 f16 f r8 f16 f
	r4 g16 g r8
\mark \default
	r2 r r r
	r8\mp\< f,16 e r4
	r8 g16 f r4
	r8 a16 g r4
	r8 b16 a r4
	r8 c16 b r4
	r8 d16 c r4
	r8 e16 d r8 e16 d r8 e16 d r8 e16 d\fff
\mark \default	
	e,8\mf c' e, c' e, c'16 c d c b c
	f,4\mp a d a
	g8\f c g c g c16 c d c b c
	f,4\mf a c f
	b,8\ff c b c b c16 c d c b c
	b4\mf d f d
	c2:32\ff\fermata
	R2*4^"Rubato" r8\fermata r r4 r2
	e2\pp <d, b'>\mp
	R2 r8\fermata r r4
	dis2
\override TextSpanner #'(bound-details left text) = "accel."
	e fis gis8\<\startTextSpan a ais b c cis d dis
	\time 5/4
	e2.:\ff e2:\stopTextSpan
	\time 3/4
	e2\fermata
	r4
\mark \default
	\bar "||"
	\time 2/4
	r2^"a tempo" r4 r8 <e g> <e gis>\sfz r8 r4
	r2 r4 r8 <e g> <e gis>\sfz r8 r4
	r4 r8 <e g> <e gis>\sfz c16\mf c d c b8 c\sfz r8 r8 <e g>\ff <e gis>
	<e g> <e gis> <e g> <e gis>2: ~<e gis>: <<{
	<c, g' e' c'>2:32 ~<c g' e' c'>2: ~<c g' e' c'>2:
}\\{
	s8 b'16^"Solo" a g f e d c2
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
         "Mandola" }
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
	\new Staff \relative c {\Mandola}
}

\pageBreak

