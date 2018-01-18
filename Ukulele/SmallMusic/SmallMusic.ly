\version "2.18.2"
#(set-global-staff-size 22)

\paper{
  paper-width = 11\in
  paper-height = 8.5\in
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  ragged-last-bottom = ##t
  indent = 0.0\cm
}

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Small Music" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "For Ukulele and Live Electronics" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}


\score{
\header{
tagline=""
piece = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1
         "Cycle:" }
}
\midi {}
\layout{}
\new Voice \with {
  \remove "Forbid_line_break_engraver"
} \relative c'{
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\key d \major
 \once \hide Staff.TimeSignature 
 \override Score.BarLine.stencil = ##f 
   \override Score.BarNumber.break-visibility = ##(#f #f #f) 
	\time 1/4

	d'4\2 e\1-0 g, a-1 fis'\4-3
		e\1 a-4 ^\markup{\magnify #2 "*" } d,\4-0 b\2-0 g'
	a, e'\1
	 b'-4 a-2 cis,\3-3 b-0 \break g'-2 fis-3\4 cis-1
	e-0 a-1 b-3 g-2\2 d\4-0 e\1-0 fis\4-3 g,-0 b-0 e-0
 \revert Score.BarLine.stencil

	\bar ":|."
	g^"break"
	\bar "||"
}
}



\markup{
\line{
  \hspace #30

\column{
\huge "Performance Instructions:"
" "
" "
\small "NEXT can be triggered"
\small "with the space bar after"
\small "cues have been enabled."
" "
\small "Score transposed to be"
\small "read like guitar in"
\small "first position."
" "
\small "first position."
" "
\small "~4:00 total"



}


  \hspace #6

\column{
"Begin playing cycle""At *, NEXT""At end of cycle, NEXT""Play cycle 3 more times""On 3rd time at *, NEXT""After finishing, repeat break""After 9 repeats, NEXT"
"Repeat break 5 times""Begin playing cycle""At *, NEXT""Play cycle 2 more times""On 2nd time at *, NEXT""Play break once""Wait 1 second, NEXT""Wait 3 seconds, NEXT"
}

}
}
\markup{
}



