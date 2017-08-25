

viola = {
	\set Score.markFormatter = #format-mark-box-alphabet
	
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2
 	\textLengthOn
	
	\clef "alto"
	\time 6/8
	R2.*4
	f,4.\p a e a g b c, g' e\< g b e\f
	c'4. g f d e a, c f, b g c,8\> e g c e g
	f8\mp r r bes, r r g r r a r r
	f' r r bes, r r g r r a r r
	f8\p a c f, a c e, a c e, a c
	g b d g, b d
	c, e g c e g
	e,2.
	g16 e b' g e' b g' e b' g e' b
	f2. d c f g4. b c,2.
	R2. R2.
	bes4. ees, c d
	bes''4.~bes4 a8 bes4.~bes4 a8 bes4. c gis8 a bes g4 f8 a2.
	c,,8 (e a b c e)
	a2.
	bes,
	d
	d
	c
	f
	c,8\< ^"Pizz." f a c e g 
	bes\f ^"soltasto" a g ees f g c, f ees d c d
	bes g a ees g f ees c f c d c

	d\>^"arco"-. f-. a-. bes-. d-. f-. a,-.\p f'-. d-. a-. f'-. d-.
	g,-. e'-. c-. g-. e'-. c-. f,-. e'-. c-. f,-. e'-. c-.
	a-. e'-. c-. g-. e'-. c-. a-. e'-. c-. g-. e'-. c-.
	a-. a-. a-. a-. a-. a-. 
	bes-. bes-. bes-. bes-. bes-. bes-. 
	d-. d-. d-. f-. f-. f-. 
	d-. d-. d-. e-. e-. e-. 
	e-. e-. e-. f-. f-. f-.
	c-. c-. c-. c-. c-. c-. 
	c2^"rubato" b8 a g2 d8 f e2 c8 g' f4. d8 e ees d4. e4 e16 d c2.


}


\score {
\header{
title ="Snippets of Conversation"
subtitle="Viola"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	%\layout {}
	\new Staff \relative c' {\viola}
}

\pageBreak