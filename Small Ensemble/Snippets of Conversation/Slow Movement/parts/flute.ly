flute = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\time 15/8
	\tempo 4. = 14
	d4\p r8^"Painfuly slow" d4 r8 d4 r8 d4^"Accel. poco a poco" r8 d4 r8
	r8\tempo 4. = 17 a' (f) r a (f) r a (f) r a (f) r a (f) 
	r a (f) r a (f) r a (f) r a (f) r a (f) 
	d4 r8 d4 r8 d4 r8 d4 r8 d4 r8 
	r8 a' (f) r a (f) r a (f) r a (f) r a (f) 
	r a (g) r a (g) r a (g) r a (g) r a (g) 
	r a (g) r bes (g) r a (g) r bes (g) r a (g) 
	r a (f) r a (f) r a (f) r a (f) r a (f) 
	d4 r8 d4 r8 d4 r8 d4 r8 d4 r8
	r a' (f) r a (f) r a (f) r a (f) r a (f)
	d'8 f a g f c d f a g f c d f a
	\ottava #1
	d8 f a g f c d f a g f c d f a
	\ottava #0
	r4. r r r r \bar "|."
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
	%\new Staff \relative c' {\flute}
}

%\pageBreak

