

vlnO = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "treble"
	\key a \major
	\unfoldRepeats {
		a16\3 a\2 a\3 a\2
		\repeat percent 3 { a a a a }
		\repeat percent 4 { a16 a cis a }
		\repeat percent 4 { gis16 a cis a }
		\repeat percent 3 { g16 a d a }
			gis16 a d a 
		\repeat percent 4 { a16 a cis a }
		\time 1/4
		r4
		\time 4/4
		
	}

	
}

%{
\score {
\header{
title ="Snippets of Conversation"
subtitle="Viola"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	\layout {}
	\new Staff \relative c''{\vlnO}
}
%}

%\pageBreak


