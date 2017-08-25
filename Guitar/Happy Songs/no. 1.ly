\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"A Happy Song"}}
	subtitle = "Solo Guitar"
	subsubtitle = \markup {\bold{\italic ""}}
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

	\new Staff \relative c {
	\key e \major
	\time 4/4
	\clef "treble_8"
	\tempo 4 = 140
	
	e16 b' b b gis8 b e, dis cis b
	a16 cis' cis cis gis8 cis e, fis gis e
	b16 a' a a fis8 b a, <fis' a> <gis b> <fis a>
	e16 gis gis gis b,8 gis e <e' gis> <fis a> <gis b>
	a,16 cis' cis cis a8 dis a, 16e'' e e gis,8 dis'
	
	\bar "|."
}
}


