

viola = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "alto"
	\new Voice \with {
	    \remove "Note_heads_engraver"
	    \consists "Completion_heads_engraver"
	    \remove "Rest_engraver"
	    \consists "Completion_rest_engraver"
  	}
  	\key bes \major
	{
		r2. d2 d2. c2 d2. ~d4 fis4
		g2 c2. bes2 g4 f2
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
	\new Staff \relative c''{\viola}
}
%}

%\pageBreak


