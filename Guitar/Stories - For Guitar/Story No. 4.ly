\version "2.18.2"
#(set-global-staff-size 24)

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
%  ragged-last-bottom = ##t
  indent = 0.0\cm
}

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Story No. 4" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "For Solo Classical Guitar" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}


\score{
\midi {}
\layout{}
\new Voice \with {
  \remove "Forbid_line_break_engraver"
} \relative c'''{
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\key a \major
	\time 2/4
	<<{a4( b gis a fis2 e)}
		\\{<e e cis>2 dis <e d,> ~ e}>>
	\break
	<<{a4( cis gis b fis4 d d2)}
		\\{<e e cis>2 <dis b> <e d,>  e}>>
	\break
	<<{a4( b gis a fis2 e)}
		\\{<e e cis>2 dis <e d,> ~ e}>>
	\break
	<<{a4( b gis a fis2 e)}
		\\{<e e cis>2 dis <e d,> ~ e}>>

	
	\bar "|."

}
}