

vlnT = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "treble"
	\key a \major
	\unfoldRepeats {
		r1 r1 r1 r1 r1
		\time 1/4
		r4
		\time 4/4
		
	}
}

%{
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
%}
%\pageBreak


