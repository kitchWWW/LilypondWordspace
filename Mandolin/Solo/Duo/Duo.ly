\version "2.18.0"

\header {
	title = "A Mandolin Afternoon"
	subtitle = "For Solo Mandolin"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c'{
	\clef "treble"
	\time 3/4
	\key g \major
	\tuplet 3/2 4 {
	d8\downbow\mp (g' g\upbow ) b, g' g b, g' g
	d, a'' a b, a' a b, g' g
	d, fis' fis a, fis' fis a, fis' fis
	d,\> fis' fis a, fis' fis a, fis' fis\p
	}
	
	<<{}\\{
	\shiftOff
	g4\f g g a a g fis fis fis fis fis fis
	g g g a a g fis fis fis fis fis fis
	e e e g g e g g g g g g
	e e e g g e g g g g g g
	fis fis fis fis e fis
	fis fis fis fis e fis
	g g g g g g
	g g g a a a b b b b b b
	g g g a a a fis fis fis fis fis fis
	g g g a a a b b b b b b
	c c c b b a g g g
	g g g
	g g g a a g e e e e e e
	g g g a a g a a a a a a 
	g g g a a g fis fis fis a fis a
	fis fis fis a fis a g g g 
	
	}\\{}\\{
	\shiftOff
	g,, b' b d, b' b
	d, a' a a, a' a
	g, b' b d, b' b
	d, a' a a, a' a

	e c' c e, c' c
	d, b' b g, b' b
	e, c' c e, c' c
	d, b' b g, b' b

	d, a' a d, a' a	
	d, c' c a, c' c b b d,
	g, b' b

	d, b' b
	d, c' c
	d, d' d 
	g,, d'' d
	d, b' b
	d, c' c
	d, c' c 
	a, c' c
	d, b' b
	d, c' c
	d, d' d 
	g,, d'' d
	d, e' e
	d, d' c 
	g, b' b 
	d, b' b
	
	d, b' b d, b' b
	e, c' c c, c' c
	d, b' b d, b' b
	d, c' c a, c' c
	d, b' b d, b' b 
	d, a' a d, a' a
	a, c' c d, c' c 
	b b d,
	}>>
	<g, d' b' g'>2.\fermata
	\bar "|."
	
}	
}