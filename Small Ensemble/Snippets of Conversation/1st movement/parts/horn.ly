

horn = {
	\set Score.markFormatter = #format-mark-box-alphabet
	R1*11
	r2 d8\ff r fis gis
	
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
	\new Staff \relative c''{\horn}
}

%\pageBreak
