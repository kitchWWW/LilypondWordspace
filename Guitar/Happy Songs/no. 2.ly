%#(set-global-staff-size 15)


\header {
	title = "A Day in April"
	subsubtitle = "For Guitar"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c'{
	\numericTimeSignature
	\time 4/4
	\clef "treble_8"

	<<{
	c8 g d' g, e' g, e' g, f' a, g'8 f c ees, d' ees,
	e' g, e g d g e g

	c8 g d' g, e' g, e' g, f' a, g'8 a c, ees, d' ees,
	e' g, e g c, e g c
	}\\{
	c,4 b c bes a2 aes2 c s
	c4 b c bes a2 aes2 c s
	}>>
		
	<<{
	g''8 g g g g g f e d e c4
	c,8 g' b, g'
	d'8 e c4
	b8 e g,4 a8 f c a'
	g e c c'
	d a d, d' d a d, d' d g, d g b, g' e' f
	}\\{
	b,,4 d g2 <c, e g>2 s
	<a e'>2
	<g d'>
	f
	e
	f fis g
	}>>
	
	<<{
	g''8 g g g g g f e d e c4
	d8 e c4
	b8 g e' g,
	d' gis, e b'
	a f c a'
	b g d d'
	d g, e g d g e g
	}\\{
	c,4 e g2
	<f a>2
	<e g>
	d
	%e4 e,
	f,
	g g c1
	}>>

	
	<<{
	c'8 g d' g, e' g, e' g, f' a, g'8 f b, g e' g,
	e' g, e g d g e g
	c8 g d' g, e' g, e' g, f' a, g'8 a c, ees, fis' ees,
	g' g, e g c, e g c
	}\\{
	c,4 b c bes a2 g c s
	c4 b c bes a2 aes2 c s
	}>>

	<<{
	g''8 g g g g g f e d e c4
	d8 e c4
	b8 g e' b
	a f c a'
	b g d b'
	d g, d d'
	d g, d g e g f g <g c>2\fermata
	}\\{

	b,4 d g2
	<f a>2
	<e g>
	d
	f,
	g
	g
	c1 s2 c2
	}>>

\bar "||"

	<<{
	<c'' e, c>8 c, e c'
	d g,, b d' e g,, e' g, g' g, e' g,
	f' d g, f'
	g d a' b
	g <g, b> f' <g, b> e' < a, c> e <a c>	
	a f c a' b g d b'
	b gis d b' c a e c'
	b g d b' d g, d d'
	d g, d g e g f g
	}\\{
	a,2 b c1
	d2 d e,2 a
	f g b a g g c1
	}>>


}
}


