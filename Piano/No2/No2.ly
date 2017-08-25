\version "2.18.0"

#(set-global-staff-size 22)

\header {
	title = "Sonata"
	subtitle = "For Piano"
	composer = ""
	tagline = ""
}

\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  ragged-last-bottom = ##t
}

upper = \relative c'' {
  \clef treble
  \key ees \major
  \time 12/8
	\tempo 4. = 85
	r1.\pp\<
	f2.\mp\! g4. f4 ees8
	ees2. \clef bass des,,4.-> c->
	\clef treble
	<aes''' f>2. bes4. aes4 aes8
	aes4.~ aes4 g8 g2.
	\clef bass
	des,,2. c4. bes4 aes8
	aes2. r4. 	\clef treble	ees'''8 f g
	<bes g>2. d4 c8 bes aes g
	<aes f>4. <bes g> <aes f> <bes g>8 c d
	<c g>4 d8 <aes d>4 g8 bes4. c8 d ees
	bes4. 	\clef bass	ees,,,4 c8 bes4. \clef treble r8 d''' ees
	f4 aes8 g4 ees8 d4 bes8 a4 f8
	<<{g2.~ g4.}\\{d4 ees2.}>> a8 bes c 
	d1\>-> r2
	
	r2.\!\pp\fermata \ottava #1 bes'4. aes8 g f ees2\<\ottava #0
	r1
	\clef bass
	des,,,2. c4. bes4 aes8\!\ff
	%Start of second section
	aes2.
	\clef treble
	\ottava #1
	g''''4.\mp\> f4 ees8
	ees2.\pp\!\ottava #0 r
	ees,, r
	%Eb
	\ottava #1
	ees''8 d f ees bes' aes ees d f ees bes' aes
	%Ab
	ees c f ees aes g ees c f ees aes g
	%Bb
	d c ees d bes' f d c ees d bes' f
	%cm
	ees c f ees aes g ees c f ees aes g
	%gm
	bes g c bes ees d bes g c bes ees d
	%Ddim
	b aes d b aes'-> f d b aes f d b
	%Abm
	ees aes b fes aes bes ees, aes b fes aes bes
	<f d>2. r4. <<{r8 d' (c)}\\{aes4.}>>
	<bes g>8 f ees d c bes r2.
	\ottava #0
	%Theme number two now

	\clef treble
 	 \key bes \major
	r1.\mf
	d,,2. r16 f d f d f d f d f d f
	f2. a4 r16 bes a g f ees d c
	d4. ees d16 ees d ees d ees d ees d ees d ees
	d4. ees d16 ees d ees d ees bes' a g f ees d
	c2. r16 d c d c d c d c d c d
	ees4. d ees16 d ees d ees d f ees d c bes a
	g2. r16 a g a g a g a g a g a
	f16 g bes f g bes c bes d c d ees f ees d f g ees f g a f g a
	bes8 a c ees, g c f, a c f ees d
	
	bes2. r2.
	r1.
	r4 f8\p f4. r4 g8 g a g
	r2.\< r8 c, d f c d
	r4\mp r8 f4. r4 g8 g bes16 a g8
	\clef bass r2. r8 c,, d f c d
	\clef treble r4\<  r f' r4 g8 g c, d
	d4 d8 d g16 f d8 c2.\f
	r1.
	r \ottava #1
	r4 f''8 f g bes r4 g8 g c, d 
	d4 d8 d g16 f d8 c4. bes8 c d
	
	\key d \major
	a'8->\pp fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a'8 fis d a' fis d a' fis d a' fis d
	a' fis d c bes a g fis ees d c bes 
	\ottava #0
	aes g f ees d c bes a g f ees d 
	r2.\mf\>
	r r
	r\p
	\key c \minor
	r1.\mp
	f'2. g4. f4 ees8
	ees2. \clef bass d,,4. ees
	\clef treble
	aes''2. bes4. aes4 aes8
	aes4. g \clef bass d,, ees \clef treble
	<f'' ees>2. g4. aes8 g f
	g2. <bes d,>4 aes8 g f ees
	f4. b bes g8 aes bes
	aes4 bes8 f4 ees8 g4. aes8 bes c
	g4. \clef bass aes,,8 g c bes4. \clef treble r8
	bes''8 c <d bes>4 f8 <ees c>4 d8 <bes g>4 c8 d ees d
	c2. c'8 bes aes g f ees
	<f d>4 g8 <f d>4 g8 <f d>4 g8 <bes ees,> d, f
	ees4 d8 f4 ees8 c4 bes8 d4 ees8
	ees2. r	<g ees'>2.\pp r
	<g, bes> r	
	ees8 d f ees bes' aes ees d f ees bes' aes
	%Ab
	ees c f ees aes g ees c f ees aes g
	%Bb
	d c ees d bes' f d c ees d bes' f
	%cm
	ees c f ees aes g ees c f ees aes g
	%gm
	bes g c bes ees d bes g c bes ees d
	%Ddim
	b aes d b aes'-> f d b aes f d b
	%Abm
	\clef bass
	ees, aes b fes aes bes ees, aes b fes aes bes
	<f d>2. r4. \clef treble <<{r8 d''' (c)}\\{aes4.}>>
	<bes g>8\< f ees d c bes aes g f ees d c\!\f
	
	r1.	g'2. r16 bes g bes g bes g bes g bes g bes	bes2. d4 r16 ees d c bes aes g f	g4. aes g16 aes g aes g aes g aes g aes g aes	g4. aes g16 aes g aes g aes ees' d c bes aes g	f2. r16 g f g f g f g f g f g	aes4. g aes16 g aes g aes g bes aes g f ees d	c2. r16 d c d c d c d c d c d	bes16 c ees bes c ees f ees g f g aes bes aes g bes c aes bes c d bes c d	ees8 d f aes, c f bes, d f bes aes g
	
	ees2.
	ees2.
	ees2.
	ees2 r8 f
	ees2. ees8 g bes ees4.\fermata
	
}

%===========================================================================

lower = \relative c {
  \clef bass
  \key ees \major
  \time 12/8
	bes'8-"(with pedal)" (g ees) bes'8 (g ees) bes'8 (g ees) bes'8 (g ees)
	bes'8 (g ees) bes'8 (g ees) bes'8^"sempre." g ees bes'8 g ees
	bes'8 g ees bes'8 g ees bes'8 g ees bes'8 g ees
	c' aes ees c' aes ees b' aes ees b' aes ees
	bes'8 aes ees bes'8 aes ees bes'8 g ees bes'8 g ees
	bes'8 g ees bes'8 g ees bes'8 g ees bes'8 g ees
	c' aes ees c' aes ees \clef \treble c' ees aes c aes ees 
	bes'8 g ees bes'8 g ees bes'8 g ees bes'8 g ees
	c' aes f c' aes f c' aes f c' aes f
	d' bes g d' bes g d' bes g d' bes g
	ees' c aes ees' c aes ees' c aes ees' c aes
	f' d bes d bes f bes f d f d bes
	\clef treble
	g' ees c g' ees c g' ees c g' ees c 
	\override TextSpanner #'(bound-details left text) = "rit."
	d\startTextSpan f aes b d f aes b d f aes b\stopTextSpan
			%run of Ddim
	r1.
	\clef bass
	bes,,,8^"atempo" g ees bes'8 g ees bes'8 g ees bes'8 g ees
	bes'8 g ees bes'8 g ees bes'8 g ees bes'8 g ees
	
	%transition to second section
	bes'2. r2.
	\clef treble
	bes'8 (ees bes' aes g f) bes,8 (ees bes' aes g f)
	bes,8^"sempre." ees bes' aes g f bes,8 ees bes' aes g f
	
	%Eb
	bes,8 ees bes' aes g f bes,8 ees bes' aes g f
	%Ab
	aes, ees' aes g f c aes ees' aes g f c
	%Bb
	f, bes f' ees d c f, bes f' ees d c
	%Cm
	g bes g' ees d c g bes g' ees d c
	%Gm
	d, f d' bes a g d f d' bes a g
	%Ddim
	b, d b' aes f d b d b' aes f d
	%Abm
	b ees b' bes aes g b, ees b' bes aes g
	f4. g4 aes8 <bes aes ees>2.\fermata
	<bes g ees>2.
	aes8 g f ees d c
	\clef bass

	%and theme two now

	  \clef bass
  \key bes \major
%Bb
	<bes, d f>8-"(without pedal)" <bes d f>8 <bes d f>8 <bes d f>8
	<bes d f>8 <bes d f>8 <bes d f>8 <bes d f>8
	<bes d f>8 <bes d f>8 <bes d f>8 <bes d f>8 
%Bb
	<bes d f>8 <bes d f>8 <bes d f>8 <bes d f>8
	<bes d f>8 <bes d f>8 <bes d f>8 <bes d f>8
	<bes d f>8 <bes d f>8 <bes d f>8 <bes d f>8
%Dm
	<d f a>8 <d f a>8 <d f a>8 <d f a>8
	<d f a>8 <d f a>8 <d f a>8 <d f a>8
	<d f a>8 <d f a>8 <d f a>8 <d f a>8
%Cm
	<c ees g>8 <c ees g>8 <c ees g>8 <c ees g>8
	<c ees g>8 <c ees g>8 <c ees g>8 <c ees g>8
	<c ees g>8 <c ees g>8 <c ees g>8 <c ees g>8
%F
	<f a c>8 <f a c>8 <f a c>8 <f a c>8
	<f a c>8 <f a c>8 <f a c>8 <f a c>8
	<f a c>8 <f a c>8 <f a c>8 <f a c>8
%Eb
	<ees g bes>8 <ees g bes>8 <ees g bes>8 <ees g bes>8
	<ees g bes>8 <ees g bes>8 <ees g bes>8 <ees g bes>8
	<ees g bes>8 <ees g bes>8 <ees g bes>8 <ees g bes>8
%Dm
	<d f a>8 <d f a>8 <d f a>8 <d f a>8
	<d f a>8 <d f a>8 <d f a>8 <d f a>8
	<d f a>8 <d f a>8 <d f a>8 <d f a>8
%Eb
	<bes ees bes'>8 <bes ees bes'>8 <bes ees bes'>8 <bes ees bes'>8 
	<bes ees bes'>8 <bes ees bes'>8 <bes ees bes'>8 <bes ees bes'>8 
	<bes ees bes'>8 <bes ees bes'>8 <bes ees bes'>8 <bes ees bes'>8 

	<f a c>1. <c ees a>2. <d f a>

	<bes'  d f>2.\fermata\mp <g bes d>2.\fermata\p
	<bes  d f> <g bes d>
	<bes  d f> <g bes d>
	<bes  d f>\< <g bes d>
	<bes  d f>\!\mp <g bes d>
	<bes  d f> <g bes d>
	<bes  d f> <ees g bes>
	<c ees g> <d fis a>4. d,
	<bes'  d f>2.\fermata\mp <g bes d>2.\fermata\p
	<bes  d f> <g bes d>
	<bes  d f> <ees g bes>
	<c ees g> <d fis a>4. d,
	
	\key d \major
	
	\override TextSpanner.bound-details.left.text = "accel."
	r1.\startTextSpan
	r\tempo 4. = 135
	<d d'>2.\stopTextSpan <fis gis'>4. <gis fis'> <a a'>2. r
	<bes bes'>2. <bes c'>4. <c bes'>4. <a a'>2. r
	<d, d'>2. <fis gis'>4. <gis fis'> <a a'>2. r
	<bes bes'>2. <bes c'>4. <c bes'>4. <c c'>2. <ees ees'>4. <fis fis'>
	\clef treble <d' d'>2. <f f'>4. <bes bes'> 
	<e e'>2. <fis fis'>4. <gis gis'> a2. 
	r r1.
	\override TextSpanner.bound-details.left.text = "rit."
	\clef bass
	<ees,, g bes>2.\startTextSpan <f aes d>
	<c ees g> <bes d f>\stopTextSpan\tempo 4. = 85
	
	\key c \minor
	
	g'8 (ees c) g' (ees c) g' (ees c) g' (ees c)
	g' ees c g' ees c g' ees c g' ees c
	g' d bes g' d bes g' d bes g' d bes
	aes' ees c aes' ees c aes' f c aes' f c 
	g' ees c g' ees c g' ees c g' ees c
	c' aes f c' aes f c' aes f c' aes f
	g ees c g' ees c g' ees c g' ees c
	aes' f d aes' f d aes' f d aes' f d 
	bes' g ees bes' g ees bes' g ees bes' g ees 
	c' aes f c' aes f c' aes f c' aes f 
	d' bes g d' bes g d' bes g d' bes g 
	ees' c aes ees' c aes ees' c aes ees' c aes 
	f' d bes f' d bes f' d bes f' d bes 
	g' ees c g' ees c g' ees c g' ees c 
	bes8 (ees g f ees d) d, f aes bes c bes

	ees,,8 (ees' bes' aes g f) bes,8 (ees bes' aes g f)
	bes,8 ees bes' aes g f bes,8 ees bes' aes g f
	
	%Eb
	bes,8 ees bes' aes g f bes,8 ees bes' aes g f
	%Ab
	aes, ees' aes g f c aes ees' aes g f c
	%Bb
	f, bes f' ees d c f, bes f' ees d c
	%Cm
	g bes g' ees d c g bes g' ees d c
	%Gm
	d, f d' bes a g d f d' bes a g
	%Ddim
	b, d b' aes f d b d b' aes f d
	%Abm
	b ees b' bes aes g b, ees b' bes aes g
	f4. g4 aes8 <bes aes ees>2.\fermata
	<bes g ees>2. r

%Be	<ees g bes>8 <ees g bes>8 <ees g bes>8 <ees g bes>8	<ees g bes>8 <ees g bes>8 <ees g bes>8 <ees g bes>8	<ees g bes>8 <ees g bes>8 <ees g bes>8 <ees g bes>8 %Be	<ees g bes>8 <ees g bes>8 <ees g bes>8 <ees g bes>8	<ees g bes>8 <ees g bes>8 <ees g bes>8 <ees g bes>8	<ees g bes>8 <ees g bes>8 <ees g bes>8 <ees g bes>8%Dm	<g bes d>8 <g bes d>8 <g bes d>8 <g bes d>8	<g bes d>8 <g bes d>8 <g bes d>8 <g bes d>8	<g bes d>8 <g bes d>8 <g bes d>8 <g bes d>8%Cm	<f aes c>8 <f aes c>8 <f aes c>8 <f aes c>8	<f aes c>8 <f aes c>8 <f aes c>8 <f aes c>8	<f aes c>8 <f aes c>8 <f aes c>8 <f aes c>8%F	<bes d f>8 <bes d f>8 <bes d f>8 <bes d f>8	<bes d f>8 <bes d f>8 <bes d f>8 <bes d f>8	<bes d f>8 <bes d f>8 <bes d f>8 <bes d f>8%Ee	<aes c ees>8 <aes c ees>8 <aes c ees>8 <aes c ees>8	<aes c ees>8 <aes c ees>8 <aes c ees>8 <aes c ees>8	<aes c ees>8 <aes c ees>8 <aes c ees>8 <aes c ees>8%Dm	<g bes d>8 <g bes d>8 <g bes d>8 <g bes d>8	<g bes d>8 <g bes d>8 <g bes d>8 <g bes d>8	<g bes d>8 <g bes d>8 <g bes d>8 <g bes d>8%Ee	<ees aes ees'>8 <ees aes ees'>8 <ees aes ees'>8 <ees aes ees'>8 	<ees aes ees'>8 <ees aes ees'>8 <ees aes ees'>8 <ees aes ees'>8 	<ees aes ees'>8 <ees aes ees'>8 <ees aes ees'>8 <ees aes ees'>8 	<bes d f>1. <f' aes d>2. <aes c ees>

	\override TextSpanner #'(bound-details left text) = "rit."
	ees8\startTextSpan aes bes ees aes bes
	des,, aes' bes des aes'bes
	c,, ees aes c ees aes
	f, aes bes d g r
	ees, g bes ees g bes r2 r4\stopTextSpan


	\bar "|."
}

\score {
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 5)
                            (padding . 5))
  }<<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  %\midi { }
}