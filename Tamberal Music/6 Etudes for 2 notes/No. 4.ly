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
         "Etude No. 4" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "For any instrument with two ways of playing one note" }
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
	\clef percussion
\bar ".|:"
	\acciaccatura b16 (d4) b b b
	b b b b
	d d d b b b b b
\bar ":|.|:" \break
	\acciaccatura b16 (d4) b b b->
	b b b-> b b d d d
	b b b b
\bar ":|.|:" \break
	<<{
	d4 d d d
	}\\{
	\times 2/3 {b4 b b}
	\times 2/3 {b4 b b}
	}>>
	\times 2/3 {d4 d d}
	b4 b
	\times 2/3 {<b d>4 d d}
	b4 d
	b b b b
\bar ":|.|:" \break
	\times 2/3 {b4 b b}
	\times 2/3 {b4 b b}
	d4 d d b
	<<{
	d4 d d d
	}\\{
	\times 2/3 {b4 b b}
	\times 2/3 {b4 b b}
	}>>
	b4 b2.
	b4 b b b
\bar ":|.|:" \break
	b4 b \times 2/3 {b4 b b}
	\times 2/3 {b4 b b} d8 d d d
	b8 [b b] b [b b] b [b]
	d4 d2. ~ d4 d d2
	<b d>4 b b b
	b b b b d d d b
\bar ":|.|:" \break
	<<{
	d4 d d d
	}\\{
	\times 2/3 {b4 b b}
	\times 2/3 {b4 b b}
	}>>
	<<{
	\times 2/3 {d4 d d}
	\times 2/3 {d4 d d}
	}\\{
	b4 b b b
	}>>
	\times 2/3 {d4 d d}
	b8 b b b
	\times 2/3 {<b d>4 d d}
	b8 b d4~ d1
\bar ":|.|:" \break
	b4 b b r
	b b b r
	b d d d
	b b b b
	




\bar "|."
		
	
	
}
}