

cello = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "bass"
	\key bes \major
	\new Voice \with {
	  \remove "Note_heads_engraver"
	  \consists "Completion_heads_engraver"
	  \remove "Rest_engraver"
	  \consists "Completion_rest_engraver"
	}
	{
		
	}

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


