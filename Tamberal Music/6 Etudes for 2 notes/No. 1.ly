\version "2.18.2"
#(set-global-staff-size 17)

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
         "Etude No. 1" }
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
	\bar ".|:"
	\time 2/4
	r2
	\time 3/16
	c'16 [a8] c8 [a16] c [a c] ~ c [a8]
	\time 2/4
	r2
	\bar ":|.|:"
\break
	\time 2/4
	r2
	\time 3/16
	a16 [c8]
	a16 [c8]
	a16 [c8]
	\time 4/16
	c16 [a8 c16]
	a16 [c8 a16]
	\time 5/16
	c16 [a c8 a16]
	\time 3/16
	a16 [c8]
	\time 2/4
	r2
	\bar ":|.|:"
\break


	\time 2/4
	r2
	\time 5/16
	a8 [~ a8.]
	c8 [a16 c8]
	\time 3/16
	c16 [c a]
	a [c8]
	a8 [c16]
	\time 4/16
	a16 [c8 a16]
	c16 [a8.]
\break
	a16 [c a8]
	\time 2/16
	a8
	\time 4/16
	a4
	a8 [c]
	a16 [c8.]
	~ c4
	\time 3/16
	r8. c16 [a8]
	\time 2/4
	r2
	\bar ":|.|:"
\break
	\time 2/4
	r2
	\time 3/16
	c16 [a c]
	\time 2/16
	c [a]
	c [a]
	\time 4/16
	c [a a a]
	\time 3/16
	c [a c]
	\time 5/16
	c [a] c [a c]
	a8. [~a8]
	\time 2/4
	r2
	\bar ":|.|:"
\break
	\time 2/4
	r2
	\time 4/16
	c16 [a8.]
	\time 3/16
	c16 [a8]
	\time 4/16
	c16 [a8 c16]
	\time 5/16
	c16 [a c8 c16]
	\time 4/16
	a16 [a c8]
	\time 5/16
	a16 [a c8.]
	\time 3/16
	a16 [c8]
	a16 [c8]
	a16 [c8] ~ c8.\fermata
	\time 2/4
	r2
	\bar ":|.|:"
\break
	\time 2/4
	r2
	\time 3/16
	a16 [c8]
	a16 [c8]
	a16 [c a]
	~a16 [c8]
	\time 2/4
	r2
	\bar ":|.|:"
\break





}
}