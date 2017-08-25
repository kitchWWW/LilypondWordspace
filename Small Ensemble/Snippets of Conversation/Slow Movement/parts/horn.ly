

horn = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\time 15/8
	d4\p r8 d4 r8 d4 r8 d4 r8 d4 r8
	d4\> r8 d4 r8 d4 r8 d4 r8 d4 r8\ppp
	c,1\mf\> r8\! r4 r2
	d'4 r8 d4 r8 d4 r8 d4 r8 d4 r8
	c,1\mf\> r8\! r4 r2
	e1\mf\> r8\! r4 r2
	d1\mf\> r8\! r4 r2
	d1\ff\> r8\! r4 r2
	d8 f a g f c d f a g f c d f a
	d4 r8 d4 r8 d4 r8 d4 r8 d4 r8
	c,1\mf\> r8\! r4 r2
	d2.\mf\> d8\! f a g f c d f a
	
	r4. r r r r \bar "|."
}



\score {
\header{
title ="Snippets of Conversation"
subtitle="Horn"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	%\layout {}
	%\new Staff \relative c'{\horn}
}

%\pageBreak
