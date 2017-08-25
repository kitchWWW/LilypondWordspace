
soloA = {
	f8 (e d) bes (c d)
	g, (c bes) a (g a)
	f (d e) bes (d c)
	bes (g c) g (a g)
}

soloB = {
	f4.~f4 e8 f4.~f4 e8 f4. g4. ees8 e f d4 c8 e2.
	
}
soloC = {
	c2 b8 a g2 d8 f e2 c8 g' f4. d8 e ees d4. e4 e16 d c2.
}

flute = {
	\set Score.markFormatter = #format-mark-box-alphabet
	
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2
 	\textLengthOn
	
	\tempo 8 = 170
	\time 6/8

	f8\mp (e d) bes (c d)
	g, (c bes) a (g a)
	f (d e) bes (d c)
	bes (g c) g (a g)
	
	f4.\mf~f4 e8 f4.~f4 e8 f4. g4. ees8 e f d4 c8 e2.
	R2.
	c'2\f b8 a g2 d8 f e2 c8 g' f4. d8 e ees d4. e4 e16 d c2.

	\relative c'''{\soloA}
	f'4.\p a e a g b c, g' g,16 e b' g e' b g' e b' g e' b 
	e2.
	\relative c'''{\soloC}	
	R2. R2. bes4. ees, c d bes r
	R2.*3 a4. g a b8 c e
	f c c f c c
	g' d d g bes, c
	a' f f a d, e
	bes' f f bes d, f
	c' e,, g bes c e f2. ~f
	R2.*4
	bes8-.\f bes-. bes-. bes-. bes-. a-.
	bes-. bes-. bes-. bes-. bes-. a-.
	bes-. bes-. bes-. c-. c-. c-.
	gis-. a-. bes-. g-. g-. f-.
	a-.\> a-. a-. a-. a-. a-.
	a-. a-. a-. a-. a-. a-.
	f-.\mp f-. f-. f-. f-. f-. 
	g-. g-. g-. g-. g-. g-. 
	a-. a-. a-. a-. a-. a-. 
	bes-. bes-. bes-. bes-. bes-. bes-. 
	c-. c-. c-. bes-. bes-. bes-. 
	a,-.\> a-. a-. a-. a-. a-.\p
	R2.*6




}


\score {
	\header{
title ="Snippets of Conversation"
subtitle="Flute"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	%\layout {}
	\new Staff \relative c''' {\flute}
}

\pageBreak

