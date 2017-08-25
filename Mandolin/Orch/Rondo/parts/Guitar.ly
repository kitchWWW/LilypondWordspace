
Guitar = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2

	\clef "treble_8"	
\mark \default
	\time 2/4
	\tempo 4 = 100
	r2 r2
	c8 <e g>\mf c <e g>
	c <e g> g, <d' g>
	c <e g> c <e g>
	c <e g> g, <d' g>
	a\< <e' a> a, <e' a>
	b <e g> b <e g> 
	d <a' d> d, <a' d>\f
\mark \default	
	c,8\mf <e g c e>^"C" c <e g c e> 
	c <e g c e> g, <b d g b g'>^"G"
	c <e g c e> c <e g c e> 
	c <e g c e> g, <b d g b g'>
	c <e g c e> c <e g c e> 
	c <e g c e> g, <b d g b g'>
	a\< <e' a c e>^"Am" a, <e' a c e>
	b <e g b e>^"Em" b <e g b e>
	d <a' d f>^"Dm" d, <a' d f>
\mark \default
	\bar "||"
	\time 6/8
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4." #1
      " = "\smaller \general-align #Y #DOWN \note #"4" #1)}}
	<c, e g c e>2.\f
	<c e g>4.\mp <c e g> <c e g> r 
	<f, c' f> <f c' f> <f c' f> r
	<e b' e> <e b' e> <e b' e> r
	r g g r
	<c e g>4. <c e g> <c e g> r 
	<f, c' f> <f c' f> <f c' f> r
	<e b' e> <e b' e> <f c' f> <f c' f>
	<g b d> <g b d>
	\bar "||"
	\time 2/4
\tempo \markup { \concat {
      (\smaller \general-align #Y #DOWN \note #"4" #1
      " = "\smaller \general-align #Y #DOWN \note #"4." #1)}}
	<c e g>2
	r

	c8\mp <e g c e> c <e g c e> 
	c <e g c e> g, <b d g b g'>
	c <e g c e> c <e g c e> 
	c <e g c e> g, <b d g b g'>
	a\< <e' a c e> a, <e' a c e>
	b <e g b e> b <e g b e>
	d <a' d f> d, <a' d f>\mf
\mark \default
	g,2
	c
	g
	d'
	c
	e
	c
	g
\mark \default
	r2 r2
	r8\p\< d'16 c r4
	r8 e16 d r4
	r8 f16 e r4
	r8 g16 f r4
	r8 a16 g r4
	r8 b16 a r4
	r8 c16 b r4
	r8 d16 c r4
	r8 e16 d r8 e16 d r8 e16 d r8 e16 d
\mark \default
	c,2\fff
	r2
	d8^"Dm"\mp\< <a' d f> d, <a' d f>
	d,8 <a' d f> d, <a' d f>
	e,^"Em" <b' e g b e> e, <b' e g b e>
	e, <b' e g b e> e, <b' e g b e>
	f^"F" <c' f a c f > f, <c' f a c f >
	f, <c' f a c f > f, <c' f a c f >
	g^"G" <b d g b g'> g <b d g b g'> 
	g <b d g b g'>  g <b d g b g'>
	b^"Bdim" <f' b d> b, <f' b d> b, <f' b d> b, <f' b d>
	<c e g c e>2\ff\arpeggio\fermata
%cadensa time
<<{	c''8\mf^"Rubato" (b) a g fis g fis g a (g) a (g)
	d e d e f8\fermata (e) \times 2/3 {d8 (e d)} c8 e f g
	g (f) g (f) g (f) g (f)
	\times 2/3 {g8 (f e)}
	<d g, f>8 e
	f8\fermata (e) \times 2/3 {d8 (e d)}
}\\{
	s2 <c g d>2^"V" <g d> <g f> s <g e> <b g e> <b g d b>
}>>
	<c dis,>8-> <e g,> <c dis,> <fis a,>
	<g cis, ais e>\<^"Strum all" e <g cis, ais e> e

	<a dis, c fis, a,> e <a dis, c fis, a,> e\f
<<{
	\shiftOff
	<<{
	\shiftOff
	<b' f d gis,> <c fis, dis a> <cis g e ais,> <d gis, f b,>
	}\\{
	\shiftOff
	<e,,, a>2
	}>>
	<dis''' a fis c a, e>8 <e ais, g cis, a, e>
		<f b, gis d a, e> <fis c a dis, a, e>
\time 5/4
	<g cis, ais e a,, e>^"Pont." <g cis, ais e a,, e>
		<g cis, ais e a,, e> <g cis, ais e a,, e>
	<g cis, ais e a,, e> <g cis, ais e a,, e>
		<g cis, ais e a,, e> <g cis, ais e a,, e>
	<g cis, ais e a,, e> <g cis, ais e a,, e>
\time 3/4		
	<g cis, ais e a,, e>2\fermata r4
}\\{
\override TextSpanner #'(bound-details left text) = "accel."
	\shiftOff
	s2\mf\<\startTextSpan s s\fff s2.\stopTextSpan
}>>
\mark \default
\bar "||"
\time 2/4
	r2^"a tempo" r4 r8
	<c,,, e g c e>8
	<f, c' e gis c f>8-.\sfz^"I" r r4
	r2 r4 r8
	<c' e g c e>8
	<f, c' e gis c f>8\sfz r r4
	r4 r8
	<c' e g c e>8
	<f, c' e gis c f>8\sfz r
	r8
	<c' e g c e>8
	<f, c' e gis c f>8\sfz r
	r8
	<c' e g c e>8\ff
	<f, c' e gis c f>8
	<c' e g c e>8
	<f, c' e gis c f>8
	<c' e g c e>8
	<f, c' e gis c f>2:32 ~<f c' e gis c f>2: 
	<c' e g c e>2: ~<c e g c e>2: ~<c e g c e>2:
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
         "Guitar" }
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
	\new Staff \relative c{\Guitar}
}

\pageBreak


