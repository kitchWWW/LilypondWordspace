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
         "Etude No. 2" }
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
	\time 3/4
	\clef percussion
	\acciaccatura b16 (d2.)
	\acciaccatura {b16 (d b} d4) d b
	<<{ \acciaccatura b16 (\stemUp d2.)
	}\\{r4 b b}>>
	\acciaccatura b16 (d2.)
	\times 2/3 {d8 d d} b4 d
	<<{ \stemUp d2.
	}\\{r4 b8 b b4}>>
\breathe
	b2 b8 d
	\times 2/3 {b8 d b}
	\acciaccatura {b16 (d} b2)
	b8 b b b b d
	b d b d
	\times 2/3 {b d b}
	\acciaccatura b16 (d2.)
\bar ":|."
	\time 10/16
	d16 [d d d d d] d16 [d b8]
	b16 [d d] b[d d] b [d d d]
	d[b8] b[ b] d16 [d d]
	b8 [b b] d16 [b d b]
	d16[d d d] ~ d4.
	
	d16 [d d d d d] d16 [d b8]
	b16 [d d] b[d d] b [d d d]
	d[b8] b[ b] d16 [d d]
	
	b8 [d d] b[d]
	b[ d16 d d8] b16[d d8]
	b16[d d8 d16 d] b8[d16 d]
	b8 [d d] d16[b8 d16]~d16[b8 d16 d8] b8[d]
	
	b8 [d] b16 [d8 d16 d8]
	d8 [b] d[b16 b b8]
	b8[b] r d[b]
	b16 [b b8] d8 [b16 b b8]
	d8 [b16 b b8]
	d16 [b b b]

	b8[b b] d16[ d d b]
	b8 [b16 d] d[b8 d16 b8]
	d16 [d d] b[d d] b [d d d] 
	d [b8]  b8 [b] d16 [d d] 
	b8 [b b ] d16 [b d b]
	d16 [ d d d] d4.

\time 3/4
	\acciaccatura d16 (b2.))
	b4 b d8 [b] 
	 \repeat tremolo 4{b32 d} b8 d~d4
	b8 b b b b4
	d8 b d b~ b4
	r8 d b2
	
\bar "|."
		
	
	
}
}