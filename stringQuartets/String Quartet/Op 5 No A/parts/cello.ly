

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
		bes2. ~ bes2 a2. c2 d2. ~d4 d4
		c2. ~c2 ees2 c4 d2
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


