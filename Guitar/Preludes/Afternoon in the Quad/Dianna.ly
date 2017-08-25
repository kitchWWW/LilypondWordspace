\version "2.18.0"

\header {
	title = "Dianna"
	subtitle = "Afternoon in the Quad"
	subsubtitle = "For Guitar"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c{
	\numericTimeSignature
	\key c \major
	\time 4/4 
	\clef "treble_8"
	\tempo 4 = 170
	<f a>4 d'2 e4
	<e, gis> d'2 r4\fermata
	<f, a>4 d'2 e4
\time 5/4
	<e, gis> d'4_(\grace{c16 d)} e2 d4

	<f, a>4 d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e4

	<e, g> d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e4
\time 7/4
	<d, g> d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e2 d4
	<c, e g> <e g b> <e g c> <g c e> <g c g'> <d g d' f>2
\time 5/4
	<f a>4 d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e4
	<e, g> d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e4
\time 7/4
	<d, g> d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e2 d4
	<c, e g> <e g b> <e g c> <g c e> <g c g'> <d g b a'>2
\time 3/4
	<f a>4 e' <f, a d>
	<d gis>4 e' <d, gis d'>
	<f gis>4 e' <f, gis d'>
	<fis a>4 e' <fis, a d>
	<fis bes>4 e' <fis, bes d>
	<fis b>4 e' <fis, b d>
	<g b>4 d' e f4. e8 d b
\time 5/4
	c,4 \grace dis16 (e4)  g4 e _(\grace{dis16 e)} d4
	c4 \grace dis16 (e4)  g4 e _(\grace{dis16 e)} d4
\time 2/2
	f,8 c' <a' d> e' f,,8 c' <a' d> e'
	f,,8 c' <a' d> e' f,,8 c' <a' d> e'
\time 5/4
	c,4 \grace dis16 (e4)  g4 e _(\grace{dis16 e)} d4
	c4 \grace dis16 (e4)  g4 e _(\grace{dis16 e)} d4
\time 2/2
	g,8 d' <g d'> e' g,, d' <g d'> e'
	g,, d' <g b> c e d b g
	f a b e f a c a
	d,, gis b e f gis b gis
	b,, gis' b e f a c e\fermata
\time 4/4	
	<f,, a>4 d'2 e4
	<e, gis> d' <e b gis> e,,\fermata
\time 7/4
	f c'4_(\grace{b16 c)} d4 c4_(\grace{b16 c)} d2 c4 b a e2 
	\harmonicsOn <e'' b>2. \harmonicsOff
\time 5/4
	<f, a>4 d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e4
	<e, g> d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e4
\time 7/4
	<d, g> d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e2 d4
	<c, e g> <e g b> <e g c> <g c e> <g c g'> <d g d' f>2
\time 5/4
	<f a>4 d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e4
	<e, g> d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e4
\time 7/4
	<d, g> d'4_(\grace{c16 d)} e4 d4_(\grace{c16 d)} e2 d4
\time 5/4
	<c, e g> <e g b> <e g c> <g c e> <g c g'>
\time 4/4
	<d a' d f>4 <d a' d f>2 <d a' d f>4
	<f a c f>4 <f a c f>2 <c a' c f>4
	g4 \glissando d'2 d4\4
\time 5/4
	c4 \grace dis16 (e4)  g4 e _(\grace{dis16 e)} d4
	c8-. r2..
	


	\bar "|."
}
}


