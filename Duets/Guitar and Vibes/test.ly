
#(define (myTimeSigDeluxe grob)
  (let* ((fraction (ly:grob-property grob 'fraction))
         (num (car fraction))
         (denom (cdr fraction)))
     #{ 
       \markup {
	 \abs-fontsize #20 \bold \override #'(baseline-skip . 0)
	 \center-column {
	   \line { #(number->string num) }
	   \line { #(number->string denom) } 
	 }
       }
     #}))

\new Staff {
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #myTimeSigDeluxe
  \time 16/4
  \repeat unfold 16 c''4
  \time 15/4
  \repeat unfold 15 c''4
  \time 5/8
  c''8 c'' c'' c'' c''
}
