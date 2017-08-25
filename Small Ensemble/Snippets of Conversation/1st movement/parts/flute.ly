flute = {
	\set Score.markFormatter = #format-mark-box-alphabet
	r4 d16\mf e fis r d e fis r g4~g e'4. fis,4. e2 d4 g8 fis r g,4. r2
	r4 d16 e fis r d e fis r g4~g e'4. fis,4.
		e2 d4 g8 fis r d'4. e8 d4. r4 d8 fis g d e4
	r8 d,8 r4 r2
	r4 d16\p e fis r d e fis r g4~g e'4. fis,4. 
	r4 d16 e fis r d e fis r g4~g e'4. fis,4. 
	a1 a a a a a r r f f a a

}


\score {
	\header{
title ="Snippets of Conversation"
subtitle="Flute"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	%\layout {}
	\new Staff \relative c'' {\flute}
}

%\pageBreak

