\markup {
"{formattedTime}"
"  "
  \score {   
\relative c''' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
	\override Staff.TimeSignature.stencil = ##f
		\override Score.BarLine.stencil = ##f	
	e1\harmonic
	
}
    \layout {
      indent = 0.0\cm
      \context {
        \Score
        \override RehearsalMark
          #'break-align-symbols = #'(time-signature key-signature)
        \override RehearsalMark
          #'self-alignment-X = #LEFT
      }
      \context {
        \Staff
        \override TimeSignature
          #'break-align-anchor-alignment = #LEFT
      }
    }
  }
"  "
"{formatted text}"
}
