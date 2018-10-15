\header{
title =""
subtitle="Tenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Tenor = {
\set Score.markFormatter = #format-mark-box-alphabet
 \mark \default
	\time 4/4
	\tempo 4 = 122
	\key f \major
	f,4^"F"\f f c' c d^"Bb" d c2^"F":32
	bes4^"Bb"\> bes a^"F" a g^"C" g f2^"F"\p
\break
\bar "||" \mark \default
	f4\mf f c' c d d c2:32
	bes4\> bes a a g g f2\p
\bar "||" \mark \default

	f4 f c' c d d c2:
\break
\bar "||" \mark \default
	f,4 f c' c d d c2:

\bar "||" \mark \default
	f,4 f c' c d d c2:

\bar "||" \mark \default
	r4 f, r c' r d8 c8~c2:
\break
\bar "||" \mark \default
	f,4 f c' c d d c2:

\bar "||" \mark \default
	<a c>1: <bes d>2: <a c>:

\bar "||" \mark \default
	<f a c f a>1:^"Div."\mp
	<f bes d f bes>2:
	<f a c f a>2:
\break
\bar "||" \mark \default
	f'4^"unison"\mf f c' c d d c2:

\bar "||" \mark \default
	f,4 f c' c d d c2:
\bar "|."
}


