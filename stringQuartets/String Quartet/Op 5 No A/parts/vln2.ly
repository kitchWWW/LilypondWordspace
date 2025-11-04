

vlnT = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "treble"
	\key bes \major
	\new Voice \with {
	    \remove "Note_heads_engraver"
	    \consists "Completion_heads_engraver"
	    \remove "Rest_engraver"
	   	\consists "Completion_rest_engraver"
  	}{
  		r2. f2 f2. ees2 f2. ~f4 fis4
  		ees2. ~ees2 ees2
  	}
  	
}

%{
\score {
\header{
title ="Snippets of Conversation"
subtitle="Violin 2"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	\layout {}
	\new Staff \relative c'{\vlnT}
}
%}
%\pageBreak


