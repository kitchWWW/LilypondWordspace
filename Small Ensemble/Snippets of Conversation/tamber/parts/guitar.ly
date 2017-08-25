

guitar = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2
	\clef "treble_8"
	\time 6/8
\mark \default
R2.*5
\repeat percent 5 {	a,8 f' a c a f}
\repeat percent 5 {	a,8 f' a c a f}
\repeat percent 5 {	a, e' g c g e}
\repeat percent 5 {	a, e' bes' c bes e,}
\repeat percent 5 {	a, f' bes c bes f}
\repeat percent 5 {	a, e' bes' c bes e,}
\repeat percent 5 {	a,8 f' a c a f}
\repeat percent 5 {	a,8 f' a c a f}
\repeat percent 10 {a, e' a c a e}
\mark \default
R2.*8
	<a, c'>4. r
	<a d'> r
	<a c'> r
	<a d'> r
	<bes des'> r
	<a des'> r
	<bes des'> r
	<a des'> r
	R2.*6
}


\score {
\header{
title ="Snippets of Conversation"
subtitle="Guitar"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	%\layout {}
	\new Staff \relative c' {\guitar}
}

\pageBreak


