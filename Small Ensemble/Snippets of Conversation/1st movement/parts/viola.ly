

viola = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "alto"
	\key d \major
	a2\mf ~a8 b8 cis4
	d2. cis8 b r d, a' b a2
	r1
	a2 ~a8 b8 cis4
	d4 d,8 d'~d4 cis8 b r d, a' b a2 
	cis8 d a,16 b cis8~cis2 a1
	r8 d8 (~d4 ~d2 d,1 ~d1)
	a'2 b4. cis8 r d a' b a2
}


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

%\pageBreak


