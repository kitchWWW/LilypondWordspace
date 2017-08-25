

steelpan = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #3
 	\textLengthOn

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

