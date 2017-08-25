\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"Patrick's Song"}}
	subtitle = "Wedding Music"
	subsubtitle = "Solo Guitar"
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

	\new Staff \relative g {
	\key e \major
\time 4/4
	\tempo 4 = 120
	\time 3/4
	e8 g' gis b e a, fis'2.
	e,,8 g' gis b e cis gis'2.
	e,,8 g' gis b e a, fis' cis gis' dis a' fis
	<b fis g,>4 <a e> <gis e cis>
	<e e>8 <e fis> <e gis> <e fis> <e e>4 <e fis>2.
	
}
}


