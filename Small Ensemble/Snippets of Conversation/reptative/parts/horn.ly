

horn = {
	\set Score.markFormatter = #format-mark-box-alphabet
	
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2
 	\textLengthOn

	
	\time 6/8
	R2.*16
	f8\mp r r bes, r r g r r a r r
	f' r r bes, r r g r r a r r
	f'4.\mf~f4 e8 f4.~f4 e8 f4. g4. ees8 e f d4 c8 e2. e2.\mp
	c'4. g f d e a, c f, b g 

	c,8\< e g bes d f
	bes\f a g ees f g c, f ees d c d
	bes g a ees g f ees c f c d c
	bes8\> d f bes\mp d f a, d f a, d f
	g, c e g, c e f, a c f, a c
	a\< c e g, c e a, c e b c e
	f2\f e8 d c2 g8 bes a2 f8 c' bes4. g8 a gis g4. a4 a16 g f2. ~f
	R2.*9
	e16\mp\< c a' e c' a e' c a' e c' a
	f8\f f f f e8 d
	c c c c g8 bes
	a a a a f8 c'
	bes bes bes g8 a gis
	g g g a a a16 g f8 f\> f f f f\p
	R2.*6
}

%#(set-global-staff-size 30)

\score {
\header{
title ="Snippets of Conversation"
subtitle="Horn"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	%\layout {}
	\new Staff \transpose c f { \relative c'{\horn}}
}

\pageBreak
