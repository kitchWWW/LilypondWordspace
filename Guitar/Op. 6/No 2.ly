\version "2.18.0"

\header {
	title = "Prelude No. Two"
	subtitle = "Op. 6"
	subsubtitle = "For Guitar"
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
	\key c \major
	\time 6/8
	\tempo 4. = 80
	<c g' c e>8 ^(g'' e) d (c) a
	f g (a) c (b) a
	e g b f' (e) f
	e,, (g) b d _(e d)
	c d (e) g (bes) c
	a, d (e) g (a) c 
	d, a' c fis (e) fis
	b,, d g f' (e) f
	c, f a f' (e) f
	d, a' d f (e) f
	c, f a f' (e) d
	a, e' a c (b) a
	aes f aes d (c) f
	d b d f (e) d
	<c g> d, (e) g e (d)


	\key f \minor
	\time 12/16

	c16 aes' f c' aes f c aes' f c' aes f
	bes, aes' f des' aes f bes, aes' f d' aes f
	aes, c' aes ees' c aes aes, c' aes f' c aes
	g, ees'' c g' ees c g, ees'' c aes' ees c
	f,, aes' f c' aes f c aes' f c' aes f
	des aes' f des' aes f des g f des' g, f
	d bes' g d' bes g d bes' f d' bes f
	c bes' g ees' bes g c, bes' g e' bes g
	bes, des' bes f' des bes bes, des' bes g' des bes
	b, d' g, g' d g, b, b' g g' b, g 
	bes, des' bes f' des bes ees, des' bes g' des bes
	ges des' aes f' des aes ges des' aes f' des aes
	f d' bes f' d bes bes f' d bes' c des
	ees des bes ees des bes ees, bes' g des' bes
		\harmonicsOn g\fermata \harmonicsOff

	\time 6/8

	c,8 aes f c' aes f c aes' f c' aes f
	<c f> g (aes) c aes (g) <<{ r4. \grace e'8 (<c f>4.)}\\{f,2.}>>
	\bar "|."
}
}