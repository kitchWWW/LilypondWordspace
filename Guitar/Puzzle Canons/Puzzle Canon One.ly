\header{
title ="Canones Diversi"
subtitle="Super Thema Regium"
tagline=""
composer = "Brian Ellis"
}

\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  ragged-last-bottom = ##t
}

melody = {
	c2 ees g aes b, r4 g ~ g fis2 f4 ~f e2 ees4 ~ees d4 des c b, g, c f
	ees2 d c ees g8 f g c' g ees d ees f g a b c' ees f g aes
		d ees f g f ees d ees f g aes bes aes g f
	g8 aes bes c' des' bes aes g a b c' d' ees' c' b a b c' d' ees'
		f' d' g d' c' d' ees' f' ees' d' c' b c'4 g ees c
}



\score {
	\midi {}
	\layout {}
	<<
	\new Staff \absolute {
	\time 4/4
	\clef "treble_8"
	\key ees \major
		\melody
	\bar "|."
	}
	\new Staff \absolute {
	\time 4/4
	\clef "treble_8"
	\key c \minor
		\retrograde \melody
	}
	>>
}

