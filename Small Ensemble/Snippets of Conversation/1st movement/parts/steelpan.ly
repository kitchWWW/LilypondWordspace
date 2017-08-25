

steelpan = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #3
 	\textLengthOn
	R1*9
	r1 fis16 g a g a4. d e16 c b cis e8 d r4 r 
}

\score {
\header{
title ="Snippets of Conversation"
subtitle="Steel Pan"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	%\layout {}
	\new Staff \relative c' {\steelpan}
}

%\pageBreak

