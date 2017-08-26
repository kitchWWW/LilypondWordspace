\version "2.18.2"
#(set-global-staff-size 24)

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
         "Etude No. 5" }
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
	\clef percussion
	r1\fermata
	b1 ^"0:10"
	r1\fermata
	\time 1/4
	d16^"0:45" d d d
	\time 4/4
	r1\fermata
	\time 3/16
	b16^"1:03" [d8]
	\time 4/4
	r1\fermata
	\time 3/16
	b16^"1:10" [d8]
	b16 [d8]
	~
	\time 3/4
	d2.
	\time 4/4	
	r1\fermata
	\time 3/4
	b4-.^"1:40" b4-. b4-. 
	\time 4/4
	r1\fermata
	d1^"2:05"
	r1\fermata
	\time 5/4
	d8^"2:46" d b d ~ d4 r d-.
	\time 4/4
	r1\fermata
	\time 3/16
	d16^"3:02" [b8]
	\time 4/4
	r1\fermata
	\time 1/4
	d4^"3:17"
	\time 4/4
	r1\fermata
	b1^"3:29"
	r1 \fermata
\bar "|." \mark \markup{ \normalsize{"3:41"}}
		
	
	
}
}