

cello = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "bass"
	\key a \major
	r1 r1 r1 r1 r1
	\time 1/4
	r4
	\time 4/4
}


%{
\score {
\header{
title ="Snippets of Conversation"
subtitle="Cello"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	\layout {}
	\new Staff \relative c''{\cello}
}
%}

%\pageBreak


