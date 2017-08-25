\version "2.18.2"
\header{
title ="Allegretto"
subtitle="for Oboe and Guitar"
composer = "Brian Ellis"
tagline =""
}

%#(set-global-staff-size 24)

\paper{
  left-margin = 2.5\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-page-number = ##f
%	#(set-paper-size "letter" 'landscape)
}


\score{
\midi {}
\layout{}
%\unfoldRepeats {
\new StaffGroup

<<

\new Staff \with {
  instrumentName = #"Oboe"
  shortInstrumentName = #"ob."
  midiInstrument = "Oboe"
}{
	
	\relative c'' {
	\key c \major
	\tempo 4 = 100
	\time 4/4
	c8 g'-. g-. g-. g-- (e d c)
	c e-. e-. e-. e-- (d c g)
	a4. c8 a c c16 (d dis8)
	e2 r4 g,
	a4. c8 a c c16 (d dis8)
	g,4. b8 g b b16 (c d8)
	f,4. a8 f a c16 (d dis8) e2 d4. \startTrillSpan c8 \stopTrillSpan	
	
	c8 r4. r8 e16( f g8-.) r
	r2 r8 c,16 (d e8-.) r
	r2 r8 a,16 (b c8-.) r
	r2 r8 e,16 (g a8-.) r
	g2 f4 e4 e8 f f f f8 r4.
	a2 a8 c8 c c b4 e, (f e)
	b'8 g' g g c, f f f
	b, f' f f c e e e \breathe
	b,4 (c e f) b, ( c e f ) aes2 f8 g g g
	f4 e d4. \startTrillSpan c8 \stopTrillSpan

	b d g d b d f d

	c4 r2.
	r4 f4-. f-- r
	g4 r2.
	r4 e-. e-- r4
	c'4 r2. r4 a4-. a-- r4
	g4 r2. r4 e4-. e-- r4
	c8 e e g g c c g' e2 r 
	c,8 f f a a c c f e2 r
	c,8 fis fis a a c c d e2 r
	d,8 a' a c c fis fis r
	d, a' a c c f f r

	c4 r2.
	r4 f4-. f-- r
	g4 r2.
	r4 e-. e-- r4
	c4. b8 g4. e8 f4 d-. d-- r
	b2 d2 b4 c4-. c-- r4
	g'4 r4 r2
	a8 b c d e f g a
	a4 r4 r2
	g,8 a b c d e f g
	}	
}
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gtr."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c {
	\key c \major
	\clef "treble_8"
	\time 4/4

	c8 <g' c> <g c> <g c> e <g c> <g c> <g c>
	c, <g' c> <g c> <g c> e <g c> b, <g' c>
	a, <a' c> <a c> <a c> e <a c> <a c> <a c>
	f <a c> <a c> <a c> f <a c> <a c> <a c>
	c, <a' c> b, <a' c> a, <a' c> <a c> <a c>
	g, <g' b> <g b> <g b> <g b> <g b> <g b> <g b>
	f, <g' b> <g b> <g b> <g b> <g b> <g b> <g b>
	g, <g' b e> <g b e> <g b e> g, <g' d' e> <g d' e> <g d' e>

	<c, e g c>8 g'' g g <<{g2 }\\{r8 c,,8 g4}>>
	<c e g c>8 e' e e <<{e2 }\\{r8 c,8 g4}>>
	<a e' a c>8 e'' e e <<{e2 }\\{r8 a,,8 e4}>>
	<a e' a c>8 c' c c <<{c2 }\\{r8 a,8 f4}>>
	
	e8 <b' e g>4. <b e g>8 <b e g> <b e g> <b e g>
	e,8 <c' e a>4. <c e a>8 <c e a> <c e a> <c e a> 
	fis,8 <c' fis a>4.
		<c fis a>8 <c fis a> <c fis a> <c fis a> 
	e,8 <b' e g>4. <b e g>8 <b e g> <b e g> <b e g>
	
	a8 <e' a b> <e a b><e a b> a, <e' a c> <e a c> <e a c>
	g, <d' g b> <d g b> <d g b> g, <d' g c> <d g c> <d g c> 
	f, <f' a b> <f a b> <f a b> f, <f' a c> <f a c> <f a c>
	f, <a' b e> <a b e> <a b e> f, <a' c f> <a c f> <a c f>
	g, <aes' c f> <aes c f> <aes c f>
		 <aes c f> <aes c f> <aes c f> <aes c f>
	g, <g' b e> <g b e> <g b e> g, <g' d' e> <g d' e> <g d' e> 

	r1

	<<{c8 d e f g a b c c4}\\{<c,, e g>2}>>
	<d a' d f>4 <d a' d f>2
	<<{g8 a b c d e f g g4}\\{<g,, b d>2}>>
	<e' g c e>4 <e g c e>2
	e''4. d8 c b c g a4 f4 f2
	d4 e8 f e4 g8 e d4 c c2
	<f,, c' f a c f>2 r2 a8 <e' a c e>4. r2
	<e, c' e g c e>2 r2 e8 <g' b e>4. r2
	<fis, c' e g c e>2 r
	f8 <a e' g c>4. r2
	<fis a d  a' d fis>2 r
	<d' a' c f> r

	<<{c'8 d e f g a b c c4}\\{<c,, e g>2}>>
	<d a' d f>4 <d a' d f>2
	<<{g8 a b c d e f g g4}\\{<g,, b d>2}>>
	<e' g c e>4 <e g c e>2
	e''4. d8 c b c g a4 f4 f2
	d4 e8 f e4 g8 e d4 c c2
	
	<<{g8 a b c d e f g}\\{<g,, b d>2}>>
	<a e' a c>1
	<<{a'8 b c d e f g a}\\{<f,, c' f>2}>>
	<g b d g d' e>1
		
	}
}
>>
%}


}