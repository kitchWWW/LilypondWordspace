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
         "Story No. 1" }
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
} \relative c'{
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\key d \major
	\compoundMeter #'((2 4) (5 8))
	d8 [a'] a' [d,] d,16 [a' d a'] ~a [d,16 fis8 d]
	\break
	d,8 [a'] a' [cis,] d,16 [a' cis a'] ~a [cis,16 fis8 e] 
	\break
	g,, [g'] g' [b,] g,16 [g' b g'] ~g [b,16 g8 e]
	a, [a'] e' [cis] a,16 [a' cis fis] ~fis [cis16 a8 cis]
	\bar ":|."
	d,8 [a'] a'4-- fis2 r8
	\bar "|."

}
}