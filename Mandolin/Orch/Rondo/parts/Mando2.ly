

MandoB = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2

	\time 2/4
	\mark \default
	\tempo 4 = 100
	R2*4
	
	r8\mp <c e>16 <c e>
	r8 <c e>
	r8 <c e>16 <c e>
	r8 <c g'>
	r8 <c e>16 <c e>16
	r8 <c e>8
	r8 <c e>16 <c e>16
	r8 <c e>8
	r8 <c e>16 <c e>16
	r8 <c e>8
\mark \default	
	r8\mf <c e>16 <c e>
	r8 <c e>
	r8 <c e>16 <c e>
	r8 <c g'>
	r8 <c e>16 <c e>
	r8 <c e>
	r8 <c e>16 <c e>
	r8 <c g'>
	r8 <c e>16 <c e>
	r8 <c e>
	r8 <c e>16 <c e>
	r8 <c g'>
	r8 <c e>16 <c e>16
	r8 <c e>8
	f16 (e f e) r4
	d16 (e d e) r4
\mark \default
	\bar "||"
	\time 6/8
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4." #1
      " = "\smaller \general-align #Y #DOWN \note #"4" #1)}}
	r2.
	R2.*6 r4. <d g>4.\mp <d g> r4.
	r4. <c g'> r2.
	r2.
	r4. <c g'>->
	r4. <b e>
	r4. <g d'>
	r4. <g e'>4. 
	\bar "||"
	\time 2/4	
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4" #1
      " = "\smaller \general-align #Y #DOWN \note #"4." #1)}}
	<g e'>4 r
	r2

	r8\mp <c e>16 <c e>
	r8 <c e>
	r8 <c e>16 <c e>
	r8 <c g'>
	r8 <c e>16 <c e>
	r8 <c e>
	r8 <c e>16 <c e>
	r8 <c g'>
	r8 <c e>16 <c e>16
	r8 <c e>8
	r8 <c e>16 <c e>16
	r8 <c e>8
	r8 <c e>16 <c e>16
	r8 <c e>8
\mark \default
	c8\p\< c c c c c c4 d8 d d d d4 ees8 ees ees ees ees ees
		ees ees ees ees f f f f g2\mf
\mark \default
	R2*6
	r8\mf\< a,16 g r4
	r8 b16 a r4
	r8 c16 b r4
	r8 d16 c r4
	r8 e16 d r8 e16 d r8 e16 d r8 e16 d\fff
\mark \default
	r2 r2
	d,8\p\< <f' a,>16 <f a,> d,8 <f' a,>
	d,8 <f' a,>16 <f a,> d,8 <f' a,>
	e,8 <b' g'>16 <b g'> e,8 <b' g'>
	e,8 <b' g'>16 <b g'> e,8 <b' g'>
	f8 <c' a'>16 <c a'> f,8 <c' a'>
	f,8 <c' a'>16 <c a'> f,8 <c' a'>
	g8 <d' b'> 16 <d b'> g,8 <d' b'>
	g,8 <d' b'> 16 <d b'> g,8 <d' b'>
	b8 d'16 d b,8 d' 
	b,8 d'16 d b,8 d' 
	<g,,, e' c' e>2:32\f\fermata
	R2*4^"Rubato" r8\fermata r r4 r2
	<g e'>\pp
	<g d'>\mp
	R2 r8\fermata r r4
	c8 r c r
	cis2\mp
	dis
\override TextSpanner #'(bound-details left text) = "accel."
	f8\<\startTextSpan fis g gis a ais b c 
\time 5/4
	cis2.:\ff ~cis2:\stopTextSpan
	\time 3/4
	cis2\fermata r4 
\mark \default
	\bar "||"
	\time 2/4
	r2^"a tempo" r4 r8 <c e> <c f>-.\sfz r8 r4
	r2 r4 r8 <c e> <c f>-.\sfz r8 r4
	e,8\mf c' e, c' c\sfz r8 r8 <c e> <c f>-.\sfz r8 r8 <c e>\ff
	<c f>-. <c e> <c f>-. <c e> <c f>2: ~<c f>: <g, e' c' e>: 
	~<g e' c' e>: ~<g e' c' e>:
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
         "Mandolin Two" }
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
	\new Staff \relative c''{\MandoB}
}

\pageBreak


