\header{
title ="Philmont Hymn"
subtitle=""
tagline=""
arranger = "arr. Brian Ellis"
composer = "John (J.B.) Westfall"
}


\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
  print-page-number = ##f
}

symbols = {
	\key g \major
  \time 3/4
  <<{
	g'4. a8 b c
	d2.
	e4. fis8 g e 
	d2.
	a4. b8 c b
	a2.
	g4. a8 g e
	d2.
	d4. e8 g a
	b2.
	e4. fis8 g e 
	d2.
	a4. b8 c b
	a2 b4
	g2. g

	g'4. fis8 e d
	b2.
	d4. e8 d g,
	b2.
	a4. b8 c b
	a2 d,4
	g4. a8 g e
	d2.
	d4. e8 g a
	b2.
	d4. e8 d g,
	b2.
	a4. b8 c b
	a2 b4
	g2. g	

	}\\{
	<g, b d>2.
	g4 <b d g> <b d g>
	<c e g>2.
	g4 <b d g> <b d g>
	<c e>2.
	s4 <fis, a>2
	<g b d>2.
	<g b>4 <g b> <g b>
	<g b>2.
	g4 <b d g> <b d g>
	<c e g>2.
	g4 <b d g> <b d g>
	<c e>2.
	s4 <fis, a d>2
	g4 <b d> <c e>
	<g b d>4 <b d> <b d>
\break
	<e, b' e g b>2.
	g4 <b d g> <b d g>
	<c e g>2.
	g4 <b d g> <b d g>
	<c e>2.
	s4 <fis, a>2
	<g b d>2.
	<g b>4 <g b> <g b>
	<g b>2.
	g4 <b d g> <b d g>
	<c e g>2.
	g4 <b d g> <b d g>
	<c e>2.
	s4 <fis, a d>2
	g4 <b d> <c e>
	<g b d>2.
	}>>

}

\score {
  <<
    \new Staff \relative c { \clef "G_8" \symbols \bar "|."}
    \new TabStaff \relative c { \symbols }
  >>
}

\markup { \column{
  \line{ Silver on the sage, starlit skies above}
  \line{ Aspen covered hills, country that I love}
  \line{ Philmont here’s to thee, Scouting paradise }
  \line{ Out in God’s country, tonight. }
\line{" " }
\line{Wind in whispering pines, eagles soaring high}
\line{ Purple mountains rise, against an azure sky}
\line{ Philmont here’s to thee, Scouting paradise}
\line{ Out in God’s country, tonight.}
  }

}


