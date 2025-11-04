

vlnO = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "treble"
	\key bes \major
	\new Voice \with {
	  \remove "Note_heads_engraver"
	  \consists "Completion_heads_engraver"
	  \remove "Rest_engraver"
	  \consists "Completion_rest_engraver"
	}
	{
		\time 5/4
		\tempo 4 = 100
		r2. bes2 a2. g2 bes2. ~bes4 a4
		g2. g2 g2 
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


