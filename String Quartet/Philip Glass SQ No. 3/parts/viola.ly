

viola = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\time 3/4
	f,8\pp a f a f a 
	f\< a f a f a
	\bar":|.|:"
	f\mp a f a f a
	f a f a f a
	f a f a f a
	f a f a f a
	g a g a g a 
	g a g a g a 
	g a g a g a 
	g a g a g a 
	\bar ":|.|:" 	
	g bes g bes g bes 
	f a f a f a
	\bar ":|.|:" 	
	bes,\mp\< d bes d bes d
	b d b d b d
	c\mf ees c ees c ees
	c ees c ees c ees
	c ees c\> ees c ees
	\bar ":|."
	g,16\< b d g, b d g, b d g, b d 
	c\f ees g c g ees c ees g c g ees 
	c\6 ees\5 aes\4 c, ees aes c, ees aes c, ees aes 
	c,\6 ees\5 fis\4 c ees fis c ees fis c ees fis 
	\bar ":|.|:"
	bes,\f d g bes g d bes d g bes g d 
	c ees fis c ees fis c ees fis c ees fis 
	\bar ":|."
	bes, d g bes g d bes d g bes g d 
	c ees fis c ees fis c ees fis c ees fis
	g8 bes g bes g bes
	g bes g bes g bes
	d, g d g d g
	d g d g d g ~g2.\p\> ~g2. \pp\fermata
	\bar "|." 
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
	\new Staff \relative c''{\viola}
}
%%}

%\pageBreak


