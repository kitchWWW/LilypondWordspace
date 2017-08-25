\version "2.18.0"

\header {
	title = "Prelude No. One"
	subtitle = "Op. 6"
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
	\key bes \major
	\time 4/4
	\clef "treble_8"
	\tempo 4 = 170

	bes8-1->\mp^\markup { \center-column { " " "Entirely legato." \italic "pont." } } bes'-4 a-2
		_\markup { \italic "cresc. gradually" } bes-4 f-3 a-2 ees-1 g-0
	c,->-3 d-0 ees f g-0 f ees d
	d-4-> f-2 a-1 bes-1 d-2 f-1 e-0 d-3
	cis-> a cis e g bes a g 
	f\mf\< d bes d d,-0-> bes' f-2-> bes
	g' ees c ees d,-0-> c' g-3-> c
	a' f d f d,-0-> d' a-3-> d
	bes'\f g ees g bes,\4\> f\5 d c	
	\time 6/4

	bes-1\p^\markup { \italic "dolce" }\<
		f'-3 e-2 f-3 g-0 f bes-4 f des'-2\>-> f, bes f\!
	bes,_\markup { \italic "cresc. gradually" } f' e f g f bes f des'-> f, bes f
	a, f' ees f g f a f bes-> f a f
	a, f' ees f g f a f c'-> f, a f
	g, ees' d ees f ees g ees a-> ees g ees
	g, ees' d ees f ees g ees bes'-> ees, g ees
	f,-1\mf\<^\markup { \italic "suddenly pont." } f'-3 e-2 f-3 g-0 f a-2 f bes-4 f b-0 f
	c'-1 f, d'-4 f, ees'-4 f,-3 f'-4 f,-1
	 g'-1 f, a'-3 f,\ff
	\time 4/4
	bes'\mf^\markup { \italic "suddenly dolce" }
		f d_\markup { \italic "decresc. gradually" } f d, d' f bes
	a f d f d, d' f a
	aes f d f d, d' f aes
	g ees bes ees d, bes' ees, bes'
	g' c, g c d, g ees g 
	g' d bes d d, bes' e,-> bes'\p\<

	f-1 g-0 f-3 ees-1 f g a f,->
	
	bes8->\f bes'^\markup { \italic "pont." } a bes f a ees g
	c, d ees f g f ees d
	d f a bes d f e d
	cis a cis e g bes a g 
	f d bes d d, bes' f bes
	g' ees c ees d, c' g c
	a' f d f d, d' a d
	ees\3\mp\< (d) c (d) ees\2 (f) g\1 (a)\f
	bes\mf g ees g bes,-2 g-0 f-3 ees-1
	d-0 c-3 d f (ees) d a-0 ees'-1 bes2-2 r2\fermata
	\bar "|."
}
}