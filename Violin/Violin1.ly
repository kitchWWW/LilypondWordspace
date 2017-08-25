\version "2.18.0"
#(set-global-staff-size 18)
%\setlength{\topmargin}{-2in}

\header {
      % The following fields are centered
    dedication = ""
    title = "   "
    subtitle = "Theme and Variation"
    subsubtitle = ""
      % The following fields are evenly spread on one line
      % the field "instrument" also appears on following pages
    instrument = "Solo Violin"
    composer = "Brian Ellis"
	arranger = "  "
    tagline = ""
    copyright = ""
  }
\score{
\midi {}
\layout{}
<<
\new Staff 
{
	\relative c'' {
	%Theme
	\tempo 4 = 90
	b'2.^"Theme"-^\mp f8. (g16)
		a2 d,2
	b'2.-^\mf f8. (g16) a4 a c,2--
	f4. g8 a (g a g) d2 b
	g'4. f8 b,-> (e b-> e) d4. c8 c4 e8 (g

	%var A
	b^"Var. II"->) (d, g, d' b' g) f\< (g)
	a\!-> (c, a c) d-> (e f g)
	b-> (d, g, d') g (a f g
	a) (g f e c\<) e, (a b)
	c (d) f (g) a->\! (g) a-> (f
	d->) b, (d g) b-> (c d e)
	f-> (e) g-> (f) b, (e b e)
	d c, (d e <c' g>4) d16-. e-. f-. g-.

	%var B
	b^"Var. III"-. g-. e-. d-. b-. g-. d-. c-.
		b-. d-. b-. d-. f-. g-. f-. g-.
	<a' a,>-. g-. f-. e-. d-. c-. b-. a-.
		<d d,>-. cis-. d-. e-. d-. c-. b-. a-.
	<g b'>-. a-. b-. c-. d-. e-. f-. g-. 
		a-. b-. a-. b-. f-. g-. f-. g-.
	a-. e,-. g-. a-. b-. c-. d-. e-. c-. a-.
		 b-. c-. e,-. a,-. c-. d-.
	f-. a-. d-. c-. g'-. f-. e-. f-.
		 a-. g-. a-. g-. f-. g-. f-. g-.
	d-. b-. d-. e-. g-. fis-. e-. d-.
		 b-. g-. e-. g-. d-. g-. b-. c-.
	g'-. f-. e-. d-. f-. e-. d-. c-. b-. g-.
		 b-. e-. b-. g-. b-. e-.
	d-. c,-. e-. g-. c-. g-. e'-. c-. c'4->
	\times 2/3 {g8 (e g)}
	
	%var C
	\times 2/3{b8^"Var. IV" (b, b')} \times 2/3{c (c, c')}
		\times 2/3{b (b, b')} \times 2/3{f16 (g f g f g)}
	 \times 2/3{a8 (a, a')} \times 2/3{gis (gis, gis')}
		\times 2/3{a (a, a')} \times 2/3{c,16 (d c d c d)}
	\times 2/3{b8 (b, b')} \times 2/3{d (d, d')}
		\times 2/3{c (c, c')} \times 2/3{f16 (g f g f g)}
	\times 2/3{a,8 (a, a')} \times 2/3{c (c, c')}
		\times 2/3{b (b, b')} \times 2/3{c16 (d c d c d)}
	\times 2/3{g8 (f, g')} \times 2/3{f (a, f')}
		\times 2/3{a (c, a')} \times 2/3{a (f a)}
	\times 2/3{d, (b d)} \times 2/3{e, (g e)}
		\times 2/3{b' (g b)} \times 2/3{d, (g d)}
	\times 2/3{g'8 (e, g')} \times 2/3{f (g, f')}
		\times 2/3{e (b e)} \times 2/3{e (b e)}
	\times 2/3{d8 (f, d')} \times 2/3{c (g c)}
		\times 2/3{e, (g e)} c4

	%var D
	b2.:32^"Var. V" f''32 (g f ees d c b a) 
	a,4.: a''32 (g f d c a f a,) d4: e32 (d ees c)
	b2.: f''32 (g f ees d c b a)
	a,2:32 g'32 (b d e f g b d) c4:
	\repeat tremolo 4 { f,16 g } a32-> (g-> b, g' b g a, g')
			a-> (f-> b, f' b f a, f')
	d4: b'32 (a f d b a f d) g4: d32 (f a b d f a16)
	g32 g, gis' gis, a' a, ais' ais, f' f, ges' ges, g' g, f' f,
			b8.: e16-. b8.: e16-.
	d,32 (e f g a b c d ) c (b a g f e d c )
			<c'' e,>8 g,, <ees' c>8\fermata g
	
	%var E
	\key c \minor
	<bes' g>2.^"Var. VI" r4\fermata
	<<{aes1}\\{f2 (d)}>>
	<bes' f>2. r4\fermata
	<<{aes1}\\{ees2 (c)}>>
	<f aes,>4 (<g c,>  <aes aes,>4 <g c,>)
	<d aes>2 <bes g>
	<g' aes,>4 (<f g,> <bes, ees,> <ees g,>)
	<<{d2 (c)}\\{g1}>> \bar "|."


	}
}
>>
}