\version "2.18.2"
#(set-global-staff-size 20)

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
  ragged-last-bottom = ##f
  indent = 0.0\cm
}

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Etude No. 3" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "For insturments with two ways to play one note" }
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
} \relative c'{
	 \override Staff.StaffSymbol.line-count = #2
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\time 2/4
	\clef percussion
	b16 [d d d] d d d d
	d d d d d d d d 
	b [d d] b [d d] b [d]
	b d d d d d d d
	d d d d d b d d
	b [d d] b [d d] b [d]
	b d d d d d d d 
	b d d d d b d d
	d d b d d d d b
	\bar ":|.|:"
	b d d d b d d b
	b d d d d b d d
	b [d d] b [d d ] b [d]
	d d b d d d d b
	d d d b d d d b
	d d b d d b d b
	\bar ":|.|:"
	d b b b b b b b
	b b b b b b b b
	d d b d d b d d
	d d d b d d d d
	d d d d b d b d
	b [d d] b[d d] b[d]
	d d d d b d d d
	d b d d d b d d
	d b d d b d d b
	d b d d d d b d
	d d d b b d d d
	b [d d] b [d d] b [d]
	d b d d b d d b
	d d b d b d d b
	d d d d d d d d
	b d d d b d d d
	b [d d] b[d] b[d d]
	d b d d b d d d
	d b b d b d d d
	d b d d d d b d
	d d d b d d d d
	d d d d d d d d
	d d d d d d d b
\bar ":|."
}
}