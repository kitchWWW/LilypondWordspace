\version "2.18.2"
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Asteroid 325" }
subtitle=""
composer =  \markup { 
         \override #'(font-name . "Avenir Light") "Brian Ellis"}
tagline=""
}

\paper{
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-page-number = ##f
}


Clarinet = \relative c'' {
  \clef treble
  \key c \major
  \time 12/8
	\tempo 4. = 65
	\partial 4. bes'4.
	(c8\mp bes g f d c d bes ees f4.)
	(g8 f d c a g a f bes c4.)
	(d8 c a g\< e d e g d c4.\!\mf)
	c2.\> r\!\pp
	R1.
	c8\mf (d c b4.\< a2.\>) \breathe
	c8\mf (d c a4.\< g2.\>) \breathe
	c8\mf (d c a4) c8 (d e c) d (f e) g (f e c d e g f d e4. ~e2.\>)
	r2.\pp R1.
	c'8\mf (d c b4. a2.) \breathe
\pageBreak
	c8 (d c a4. g2.) \breathe
	c8 (d c a4) c8 (d e c) d (f e) g (f e c d e g f d e4. ~e2.)
	r2. R1.
	c8 (d c b4. a2.) \breathe
	c8 (d c a4. g2.) \breathe
	c8 (d c g2.\<) f8\f (e d)
	r f-. gis-. r d-. f-. gis4.-- r8 ais (gis f2--) r4 f2->\fff r4
	f,8\f (ges->-.) r r4. f8 (ees->-.) r r4.
	ees8 (d->-.) r r4. ees8 (d->-.) r r4.
	ees8 (d->-.) r r4. ees8 (d->-.) r r4.
	c'''2.\trill c32 (b bes a aes g ges f e ees d16-> c4.)
	r2. c,8\p (d) r r4. R1.
	c'8\f (d ees f,4) ges8 (bes c bes) c (d ees f2.)
	c,8\p (d) r r4. c8 (d) r r4. c8 (d) r r4.
	c''2.\trill c32 (b bes a aes g ges f e ees d16-> c4.)
	c2.\trill c32 (b bes a aes g ges f e ees d16-> c4.)
	c'8\f (d ees f,4) ges8 (bes c bes) c (d ees f4.)
	c,16\< (d e f) ees (f) e (f g a) ges (a f g a b) aes (b
	c8\ff)(\grace g'16 d8 c b4. a4.) c,16 (e f g a b)
	c8 ( \grace f16 d8 c a4. g4.) b,16 (c e f a b)
	c8 (d c a4) c8 (d e c) d (f e) g (f e c d e g f d e f d 
	c4.)\> d8 (g e d e g a c d c4.\!\ppp) r4. r2.
	R1.
	R1.
	R1.
	r8 g-. g-. e (f g) r aes-. aes-. e (f g)
	r8 c-. c-. b4. r8 g-. f ees (aes, f)
	r8 g-. g-. e (f g) r aes-. aes-. e (f g)
	r8 c-. c-. b4.
	c'16 (aes f c aes f) r4.
	\time 8/8
	\set Timing.beatStructure = #'(3 2 3)
	c8 (e g) f (d) e (g d)
	c8 (e g) f (d) e (g d)
	c8 (e g) f (d) e (g d)
	c8 (e g) f (d) e (g d
	c2.) r4 e8 c8->\> ~c ~c4 ~c4.\pp \breathe
	f8\mf c8->\> ~c ~c4 ~c4.\pp \breathe
	g'8\mf c,8->\> ~c ~c4 ~c4.\pp \breathe
	aes'8\mf c,8->\> ~c ~c4 ~c4.\pp \breathe
	bes'8\mf c,8->\> ~c ~c4 ~c4.\pp \breathe
	c8\mf (d c a4.) c8 (d c g4.)
	c4. (d8 g e d e g a c d
	c4.)( bes8 f a g a c d f g
	f4.)( ees8 bes d c d f g bes c bes2. \grace a16 bes8) r4 r4.
	
}


upper = \relative c'' {
  \clef treble
  \key c \major
  \time 12/8
	\partial 4. r4.
	R1. R1. r2. r4. <e, g>\mp
	< e g>< e g>< e g>< e g>
	<<{c'8 d r s4. c8 d r}\\{<e, g>4.<e g><e g><e g>}>>
	<<{c'8 d r s4.}\\{<e, g>4.<e g> r <e g>}>>
	<<{c'8 d r s4.}\\{<e, g>4.<e g> r <e g>}>>
	<<{c'8 d r s4. c8 d r}\\{<e, g>4.<e g> r <e g>}>>
	<<{c'8 d r s4. c8 d r}\\{<e, g>4.<e g> r <e g>}>>
	<c e>\< <c e> <a c> <a c>
	<a c> <a c> <a c> d8\mf c d
	<e a c e>2.\arpeggio r4. <c' a'>
	<e, a c e>2.\arpeggio r4. <c' c'>
	<e, a c e>2.\arpeggio r4. <c' a'>
	<e, a c e>2.\arpeggio r4. <c' c'>
	c8 d c a2. a8 f d
	c8\< d c g2. r4.\f
	\override TextSpanner.bound-details.left.text = "accel."
	a8\mp\startTextSpan c e f2. <c' a'>4.
	g,8 b d f2. <c' c'>4.
	a,8 c e g2. <c a'>4.
	r4.\stopTextSpan r4. r8 <d gis c>8 <d gis c> r4.
	r4. f,16 a-. r4 r4. f16 aes-. r4
	r4. <c e g>8 <e ges e'> r r4. <d a' d>8 <ees ees'> r
	r4. <g, c ees>8 <g c ees>8 r r4. <a d f>8<a d f>8 r
	r4. <g bes ees>8<g bes ees>8 r r4.	<d f b d>8 f' g
	<c, e>4. <b d> r2.
	<c, e g>4.^"atempo" <c e g> <c e g> <c e g>
	r8 r8 r32 d e g c4 d8 c16 (b bes a aes g ges f e ees d8->)
	f'4. g r2.
	<c,, e g>4.<c e g> <c f g> <c e g>
	<c d g>4.<c d g> <c e g> <c d g>
	<c e g>2. ~<c e g>4. r	
	r2. r4. c8 d ees
	c16 (d e f g8) f4 ges8 bes c bes c8 d ees
	<<{f16 g f g f g}\\{c,4.}>>
	<<{f16 g f g f g}\\{b,4.}>>
	<f f'>8 <g g'> <f f'> <g g'> <f f'> <a a'>
%e a c
	<e e'>8 <a a'> <c c'> <e e'> <a a'> <c c'>
%f c a
	<a a'> <f f'> <c c'> <a a'> <f f'> <c c'>
%e a c
	<e e'>8 <a a'> <c c'> <e e'> <a a'> <c c'>
%g b d
	<b b'> <g g'> <d d'> <b b'> <g g'> <d d'>
%e a c
	<e e'>8 <a a'> <c c'> <e e'> <a a'> <c c'>
%f c a
	<a a'> <f f'> <c c'> <a a'> <f f'> <c c'>
%e a c
	<e e'>8 <a a'> <c c'> <e e'> <a a'> <c c'>
%g b d
	<b b'> <g g'> <d d'> <b b'> <g g'> <d d'>

	<c c'>16 e <c a'> e <c g'> e c e c e c e
	<c g'> e <c a> e <c g> e c e c e c e
	
	d4. e8 d c d4. e8 d c
	f4. g16 f g8 f e4. gis,8 b c
	d4. g16 e d c b c d4. g16 e d c b c 
	f4. g16 f g a g f e4. aes16 a b a b c 
	d4. e8 d c d4. e8 d c
	f4. g16 f g8 f e4. gis,8 b c
	d4. g16 e d c b c d4. g16 e d c b c 
	\ottava #1
	f8 <f c> <f c> g16 f g a c d e4. gis8 b d 
	c1
	\ottava #0
	R1\ppp\< R R
	c,,8\mp\< e g f d e g d 
	c g' a d, e f e d
	c fis g f e d e f
	c\mf\< e f a g b g e
	c a c f e g d b
	c e g f d e g d\f
	\time 12/8
	<<{c8 [d r]}\\{<e, g>1.}>>	
	<<{c'8 [d r]}\\{<e, g>1.}>>	
	R1. R R
}

lower = \relative c {
	\set Staff.pedalSustainStyle = #'bracket
  \clef "bass"
  \key c \major
  \time 12/8	
	\partial 4. r4.
	R1. R1. r2. r4. <f a c>\sustainOn
	<f a c><f a c><f a c><f a c>
	<f a c><f a c><f a c><f a c>	
	<f a c><f a c> r <f a c>
	<f a c><f a c> r <f a c>	
	<f a c><f a c> r <f a c>
	<f a c><f a c> r <f a c>	
	<d f a>\sustainOff\sustainOn-> <d f a>
		<b d f>\sustainOff\sustainOn-> <b d f>
	<a d f>\sustainOff\sustainOn-> <a d f>
		<a c e>\sustainOff\sustainOn-> <a c e>
	<a c e a>2.\sustainOff\arpeggio <a c f a>2.
	<a c e a>2.\arpeggio <g c e g>
	<a c e a>2.\arpeggio <a c f a>2.
	<a c e a>2.\arpeggio <g c e g>
	c,8\sustainOn e g c f a c2.
	a,8\sustainOff\sustainOn c e c e g, c e g, c e g,
	<a c e>4.\sustainOff\sustainOn c8 e a,
		c\sustainOff\sustainOn f a, c f a, 
	<a c e>4.\sustainOff\sustainOn c8 e a,
		c\sustainOff\sustainOn e g, c e g,
	<a c e>4.\sustainOff\sustainOn c8 e a,
		c\sustainOff\sustainOn f a, c f g,

	c->-.\sustainOff r4 d8->-. r4 e8->-. r4 f8->-. r4
	f8 a c r4. f,8 aes-> c r4.
	r4. <a, c e>8 <c, ges' c> r r4.
	<d' ees a>8 <d, d'> r
	r4. <c' g'>8 <ees, ees'> r r4. <d' a'>8 <f, f'> r
	r4. <ees' b>8 <g, g'> r r4. <d a'>8 <f f'> <g g'>
	<c e g>4. <b d f> c2. \trill
	<f a c>4.\sustainOn <f a c> <f b c> <f a c>
	c8\sustainOff\sustainOn e g r4. r\sustainOff r 
	<f a c>8-. r r <b d f>-. r r r2.
	<f a c>4.\sustainOn <f a c> <f a c> <f a c>
	<f a c><f a c><f a c><f a c> <f a c>2. ~<f a c>4.\sustainOff
	c'32 (b bes a aes g ges f e ees d16->)
	c16 (d e f g8) f4 ges8 bes c bes r4.
	<g, ees' g>4. <c, ees c'> <bes f' bes> <c f c'>
	<d d'> <e e'> <d d'>8 <e e'> <d d'> <c c'> <b b'> <bes bes'>
%e a c
	r16 [<a a'> r <c c'> r <e e'>] r [<a a'> r <c c'> r <e e'>]
%f c a
	r [<f f'> r <c c'> r <a a'>] r [<f f'> r <c c'> r <a a'>]
%e a c
	r [<a a'> r <c c'> r <e e'>] r [<a a'> r <c c'> r <e e'>]
%g b d
	r [<g g'> r <d d'> r <b b'>] r [<g g'> r <d d'> r <b b'>]
%e a c
	r16 [<a a'> r <c c'> r <e e'>] r [<a a'> r <c c'> r <e e'>]
%f c a
	r [<f f'> r <c c'> r <a a'>] r [<f f'> r <c c'> r <a a'>]
%e a c
	r [<a a'> r <c c'> r <e e'>] r [<a a'> r <c c'> r <e e'>]
%g b d
	r [<g g'> r <d d'> r <b b'>] r [<g g'> r <d d'> r <b b'>]



	c16 d e d e f e f g f g a g a b a b c b c d c c, c
	c16 ( \sustainOn e g c e g) r4.
		c,,16 (\sustainOff\sustainOn e g c e g) r4.
	f,16\sustainOff\sustainOn (a c f a c) r4.
		e,,16\sustainOff\sustainOn (g b d f a) r4.
	c,,16\sustainOff\sustainOn (e g c e g) r4.
		c,,16 (\sustainOff\sustainOn e g c e g) r4.
	g,16\sustainOff\sustainOn (b d g b d) r4.
		f,,16\sustainOff\sustainOn (a c f aes c) r4.
	c,,16\sustainOff\sustainOn (e g c e g) r4.
		c,,16 (\sustainOff\sustainOn e g c e g) r4.
	f,16\sustainOff\sustainOn (a c f a c) r4.
		e,,16\sustainOff\sustainOn (g b d f a) r4.
	c,,16\sustainOff\sustainOn (e g c e g) r4.
		c,,16 (\sustainOff\sustainOn e g c e g) r4.
	g,16\sustainOff\sustainOn (b d g b d) r4.
		f,,16\sustainOff\sustainOn (a c f aes c) r4.
	c,1\sustainOff
	c,8 c c c c c c c c c c c c c c c
	c d d d d d d d
	d e e e e e e e
	e f f f f f f f	
	f g g g g g g g
	g a a a a a a a
	a b b b b b b b
	b c c c c c c c
	<f, a c f>1. <f a c f>1.\sustainOn R R R
	\bar "|."
	}

\score {
  <<
    \new Staff = "" \with {
  instrumentName = \markup { 
         \override #'(font-name . "Avenir Light")
		"Clarinet B♭" }
  shortInstrumentName = #""
  midiInstrument = "Clarinet"
}
	{\transpose c d {\Clarinet}}
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { 
		\Score
    	\consists "Span_arpeggio_engraver"
	}
  }
  \midi { }
}