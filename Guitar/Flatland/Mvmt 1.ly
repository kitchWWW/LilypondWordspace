\header{
title ="Flatland"
subtitle = "Movement 1"
tagline=""
composer = "Brian Ellis"
}

main = {
	\xNotesOn
	gis2
	\override NoteHead.style = #'mensural
	\times 2/3 {fes8 fes fes} r4
	\xNotesOn
	gis2
	\override NoteHead.style = #'mensural
	\times 2/3 {fes8 fes fes} r4
	\xNotesOn
	gis2
	\override NoteHead.style = #'mensural
	\times 2/3 {bes8 bes bes} r4
	\xNotesOn
	gis2
	\override NoteHead.style = #'mensural
	\times 2/3 {fes8 fes fes} r4
}

\score{
\midi {}
<<
\chords { a1:m a1:m a1:sus4 a1:m}
\relative c''{
	\tempo 4 = 170
	\time 4/4
	\main
	
}
>>
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 16)
    }
}
}
