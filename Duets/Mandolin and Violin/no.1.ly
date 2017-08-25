\version "2.18.2"
\header {
	title = \markup{\smallCaps {"Sonata"}}
	subtitle = "Mandolin and Violin Duet"
	subsubtitle = \markup {\bold{\italic "For Matthew and Kayla"}}
	composer = "Brian Ellis"
	tagline = ""
}

#(set-global-staff-size 20)

\paper{
  left-margin = 1.5\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  print-page-number = ##f
%	#(set-paper-size "letter" 'landscape)
}


\score{
\midi {}
\layout{}
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"Violin"
  shortInstrumentName = #"Vn."
  midiInstrument = "Violin"
}{
	
	\relative c' {
	\time 2/2
	\tempo 2 = 80
	\partial 4 r4
	r1
	r4 g4\mp\< c d8\f ( e
	f f f g a g f e g2.) r4 
	g8\mf g g r r4 d8\f ( e f f f g a4\fermata g8 e
	b\mf) ( b b c g g a b
	c8) c c-. r8 r4 c'8\f ( d
	
	e e e f g f e d c2.) r4
	c,8\mp ( f a ) r r2
	e4\< g8 b d e g\f ( a
	bes bes bes c bes a g e
	d) (f,\mp a) b c4\fermata d8\f (c
	d d d e f e\> d f
	
	e4\mp) c8 (d e4) c8 (d e4) g (f2)
	<b, g>4-.\p r <b g>-. r
	<b g>-. r r4 g8 \mp ( a
	b4) g8 (a b4) g8 (a
	b4) d (c) c8 ( b
	a8\< g fis e d a' e fis
	\key g \major
	g2\mf) ~g8 g (a8 b
	fis2) ~ fis8 d ( e fis
	e2) ~e8 fis ( g e
	d2\<) ~d8 fis ( a c
	g'2\f) ~g8 g ( a8 b
	fis4) b b4.-- b,8 (
	c2\>) ~c8 b ( a g
	a2\mp) ~a8 b\< ( c d
	e2\mf) ~e8 fis\< ( g b
	a2\f) ~a8 g ( fis b
	a2) ~a8 g ( fis b
	a2\<) ~a8 fis ( b fis
	g2-^\ff) b16-> b b b b4
	g2-^ d'16-> d d d d4
	g,2-^\> d16-> d d d d4
	\set Score.repeatCommands = #'((volta "1"))
	g,1
	\key d \major
	\set Score.repeatCommands = #'((volta "2") end-repeat)
	g2\mp r \set Score.repeatCommands = #'((volta #f)) r1 r 
	
	d''8^"pont."\mf d cis cis b b a a g g fis fis e e fis fis g g cis, cis
	d2 ~d1 d8->\f r r4 d'8-^ r d,4\mp ~d2 r\fermata
\key f \major
	a,8^"tasto" c a c a c a c
	a8 c a c a c a c
	a8 c a c a c a c
	a8 c a c a c a c
	\tuplet 3/2 {a8\<^"pont" c f\mf }
	r4
	\tuplet 3/2 { f8\< a c\f }
	r4
	a,8\mp^"tasto" c a c a c a c
	a8 c a c a c a c
	a8 c a c a c a c
	bes\< d c e d f e g
	\tuplet 3/2 { f8\mf\<^"pont" a c\! }
	r4
	\tuplet 3/2 { f8\f\< a c\! }
	r4
	\key c \major
	f8\mf \> e d c b c a g e f d e
	c4.\turn b8 a g f e d e\p f b, c2 r2



	r4^"as before, bigger" g4 c d8\f e
	f16 f f f f8 g a g f e g16 g g g g8 d g4 r4 
	g8 g g r r4 d8 e f16 f f f f8 g a4 g8 e
	b b b c g g a b
	c16 c c c c8 r8 r4 c'8 d
	
	e e e f g f e d c2. r4
	f,16 ( g a b c8 ) r r2
	e,4 g8 b d e g a
	bes bes bes c bes a g e
	d f, a b c4 d8 c
	d d d e f g e d 



	e4 c8 d e4 c8 d e4 g f2
	<b, g>4-. r <b g>-. r
	<b g>-. r r4 g8 a
	b4 g8 a b4 g8 a
	b4 d c c8 b
	a8\> g f e d g e d!
	\transpose g c' { \relative c' {
	
	g2\mp ~g8 g a8 b
	fis2 ~ fis8 d e fis
	e2 ~e8 fis g e
	d2 ~d8 fis a c
	g'2\fermata\< ~g8 g a8 b
	fis4 b d4.\f\fermata b,8\mp
	c2~c8 b a g
	a2\< ~a8 b c d
	e2 ~e8 fis g a
	b2\f\< ~b8 g fis b
	c2 ~c8 a g c
	d2 ~d8 fis b fis
	g2-^\ff b16 b b b b4
	g2-^ d16 d d d d4
	g,2-^ d16 d d d d4
	g,2-^
	}
}
	<c e c' e>4-> r

	\bar "|."
	\pageBreak
	s1
	}	
}

\new Staff \with {
  instrumentName = #"Mandolin"
  shortInstrumentName = #"Mn."
  midiInstrument = "Acoustic Guitar (steel)"
}{
	\relative c' {
	\time 2/2
	\partial 4 c8\mf\< ( d
	e\f e e f g f e d c2.) r4
	a2\mp c
	e4\< ( g,8 b d e) g\f ( a
	bes bes bes c bes a g\> e
	d\mf) d d r r4\fermata b8\f ( c
	d d d e f e d\> b
	c8\mf) c c-. r e r g r

	c, (e g) r r2
	r4 g4 c d8 ( e
	f f f g a g f e g2. ) r4 
	g,8 ( bes d ) e d d d ( e f f f g a4\fermata g8 e
	g,)( b d) c g g a b


	<c g>2 <c, g' c>4-.\p r
	<c g' c>-. r r4 c8\mp d
	e4 c8 d e4 c8 d e4 b c2
	<g' d>4-.\p r <g d> r <g d>-. r r4 a8 g
	d\< e d c a4 d
	\key g \major
	<d g b g'>-.^"G"\mf <d g b g'>-. r2 
	<b fis' d' b'>4-.^"Bm" <b fis' d' b'>4-. r2
	<c g' c>4-.^"C" <c g' c>4-. r2
	<d fis a fis'>4-.^"D"\< <d fis a fis'>4-. r2
	<d g b g'>4-.^"G"\f <d g b g'>4-. r2
	<b fis' d' b'>4-.^"Bm" <b fis' d' b'>4-. r2
	<c e c'>4-.^"C"\> <c e c'>4-. r2
	<d fis d' fis>4-.^"D"\mp <d fis d' fis>4-. r2
	<b e b' g'>4-.^"Em"\mf <b e b' g'>4-. r2
	<c fis a fis'>4-.^"F#dim"\f <c fis a fis'>4-. r2
	<a e' c' a'>4-.^"Am" <a e' c' a'>4-. r2
	<d fis d' fis>4-.^"D"\< <d fis d' fis>4-. r2
	<d g b g'>4-.^"G"\ff <d g b g'>4-. r2
	<d g b g'>4-. <d g b g'>4-. r2
	<d g b g'>4-.\> <d g b g'>4-. r2
	g,1:32
	\key d \major
	g8\mp\< a b c d e16 fis g8 fis a8. g16 fis8 e a8. b16 cis8 e\mf  
	d\mp d d d d d d d d d d d d d d d d d d d d d d d d d d d d d d d
	d,\f d e e fis fis cis cis d16 d d d d4-^ r <a fis' d'>\mp ~ <a fis' d'>2 r\fermata
\key f \major
	r1
	a''2:32^"dulce" g4:32 f:32 e1:32 
	a2:32 bes4:32 g: f4^"pont"
	\tuplet 3/2 { c,8\< f a\mf }
	r4
	\tuplet 3/2 { a8\< c f }
	<a,, e' c' a'>2\f r2
	a''2:32\mp^"dulce" g4:32 f:32 e1:32
	bes'4:\< a: c: bes: 
	a4\mf \tuplet 3/2 { a,,8\< c f\! }
	r4
	\tuplet 3/2 { a8\f\< c f }
	\key c \major
	<c, f a f'>2\ff r
	r1 r2 r4
	


	c8 d
	e16^"as before, bigger"\f e e e e8 f g f e d c16 c c c c8 g c e g c,
	a2 c
	e4 g,8 b d e g a
	bes16 bes bes bes bes8 c bes a g e
	d d d r r4 b8 c
	d16 d d d d8 e f e d b
	c16 c c c c8 r e f g r

	c,16 (d e f g8) r r2
	r4 g4 c d8 e
	f f f g a g f e g2. r4 
	g,16 ( a bes c d8) e d d d e f f f g a4 g8 e
	g,16 ( a b c d8 ) c g g a b
	
	<c g>2 <c, g' c>4-. r
	<c g' c>-. r r4 c8 d
	e4 c8 d e4 c8 d e4 b c2
	<g' d>4-. r <g d> r <g d>-. r r4 a8 g
	f\> e d c g4 b
	
	<e c' g'>4-.^"C"\p <e c' g'>-. r2
	<e b' g'>4-.^"Em" <e b' g'>-. r2
	<c f a f'>4-.^"F" <c f a f'>-. r2
	<g' b g'>4-.^"G" <g b g'>-. r2
	<c, g' e'>4-.^"C"\mf <c g' e'>-. r2
	<b e b'>4-.^"Em"\f <b e b'>-. r2
	<f' a f'>4-.^"F"\p <f a f'>-. r2
	<g b g'>4-.^"G"\< <g b g'>-. r2
	<a c e>4-.^"Am" <a c e>-. r2
	<a, e' c'>4-.^"Am"\f\< <a e' c'>4-. r2
	<a f' d'>4-. ^"Dm" <a f' d'>4-. r2
	<g d' b' g'>4-. ^"G" <g d' b' g'>4-. r2
	<g e' c' e>4-. ^"C"\ff <g e' c' e>4-. r2
	<g e' c' e>4-. <g e' c' e>4-. r2 
	<g e' c' e>4-. <g e' c' e>4-. r2
	r2 <c g' c e>4-> r
	\bar "|."
	\pageBreak
	s1
	}
}
>>
}