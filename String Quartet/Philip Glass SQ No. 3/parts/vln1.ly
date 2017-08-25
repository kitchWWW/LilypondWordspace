

vlnO = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "treble"
	\time 3/4
	\tempo 4 = 96
	d,16\5 f a d a f d f a d a f
	d\< f a d a f d f a d a f
	\bar ":|.|:"
	f\mp\4 a\3 d\2 f\1 d a f a d f d a
	f\4 a\3 e'\1 f\1 e a, f a e' f e a,
	f a d f d a f a d f d a
	f a e' f e a, f a d f d a
	e a e' e, a e' e, a e' e, a e' 
	e, a e' e, a e' e, a e' e, a e' 
	e, a e' e, a e' e, a e' e, a e' 
	g, a cis e cis a g a cis e cis a
	\bar ":|.|:"
	g bes d g, bes d g, bes d g, bes d 
	f, a c f c a f a c f c a
	\bar ":|.|:"
	g\mp\< bes d g, bes d g, bes d g, bes d 
	g, b! d g, b d g, b d g, b d 
	g,\mf c ees g ees c g c ees g ees c
	aes c ees aes, c ees aes, c ees aes, c ees
	fis, c' ees fis, c'\> ees fis, c' ees fis, c' ees\! 
	\bar ":|."
	g,\< b! d g, b d g, b d g, b d 
	g,\f c ees g ees c g c ees g ees c
	aes c ees aes, c ees aes, c ees aes, c ees
	fis, c' ees fis, c' ees fis, c' ees fis, c' ees 
	\bar  ".|:"
	g, bes d g d bes g bes d g d bes
	aes c ees aes, c ees fis, c' ees fis, c' ees
	\bar  ":|."
	g, bes d g d bes g bes d g d bes
	aes c ees aes, c ees fis, c' ees fis, c' ees
	g,\mf bes_"dim." d g d bes g bes d g d bes
	g bes d g d bes g bes d g d bes
	d8 [g] d [g] d [g] d [g] d [g] d [g] ~ g2.\p\> ~ g\pp\fermata \bar "|."
	
}

%%{
\score {
\header{
title ="Snippets of Conversation"
subtitle="Viola"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	\layout {}
	\new Staff \relative c''{\vlnO}
}
%%}

%\pageBreak


