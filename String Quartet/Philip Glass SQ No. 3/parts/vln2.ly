

vlnT = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "treble"
	\time 3/4


	\tempo 4 = 96
	a'8\pp d a d a d
	a\< d a d a d
	\bar ":|.|:"
	a\mp d a d a d
	a e' a, e' a, e' 
	a, f' a, f' a, f'
	a, g' a, g' a, f' 
	a, cis a cis a cis
	a d a d a d 
	a e' a, e' a, e' 
	a, f' a, f' a, e'
	\bar ":|.|:"
	bes d bes d bes d 
	a d a d a d 
	\bar ":|.|:"
	d,\mp\< g d g d g
	d\5 g d g d g
	ees\mf-3 g-2 ees g ees g
	ees-3 aes-4 ees aes ees aes 
	ees-3 fis-1 ees\> fis ees fis\!  
	\bar ":|."
	d\< g d g d g
	ees16\f-4_\5 g-2 c-3 ees-1 c g ees g c ees c g
	ees aes c ees, aes c ees, aes c ees, aes c 
	ees,^"missing ab"
		 fis c' ees, fis c' ees, fis c' ees, fis c'  
	\bar ".|:"
	d,\f g bes d bes g d g bes d bes g 
	ees aes c ees, aes c ees, fis c' ees, fis c'
	\bar ":|."
	d, g bes d bes g d g bes d bes g 
	ees aes c ees, aes c ees, fis c' ees, fis c'
	d,\mf _"dim." g bes d bes g d g bes d bes g 
	d g bes d bes g d g bes d bes g 
	bes8 d bes d bes d bes d bes d bes d 
	~d2.\p\> ~ d2.\pp\fermata
	\bar "|."
}
%%{
\score {
\header{
title ="Snippets of Conversation"
subtitle="Violin 2"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	\layout {}
	\new Staff \relative c'{\vlnT}
}
%%}
%\pageBreak


