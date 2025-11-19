#(set-global-staff-size 30)
\paper{

  print-page-number = ##f
  #(set-paper-size "letter" 'landscape)
  left-margin = 2.5\cm
  right-margin = 2.5\cm
  top-margin = 3\cm
  bottom-margin = 1\cm
  system-separator-markup = \slashSeparator
  ragged-last = ##f
}

\header{
  tagline=""
title = \markup{ \column{\normal-text\italic"From Our Garden" " "}}
composer = \markup{\column{"Brian Ellis" " " " "}}
subtitle = \markup{\normal-text\italic"for any four or more players"}
}

global= {
  \time 4/4
  \key c \major
}

violinOne = \new Voice \relative c'' {
  \override Staff.Clef.stencil = ##f
   \override Staff.TimeSignature.stencil = ##f

  s1
  \bar "|."
}

violinTwo = \new Voice \relative c'' {
   \override Staff.Clef.stencil = ##f
   \override Staff.TimeSignature.stencil = ##f

   s1

  \bar "|."
}

viola = \new Voice \relative c' {
   \override Staff.Clef.stencil = ##f
   \override Staff.TimeSignature.stencil = ##f

   s1 

  \bar "|."
}

cello = \new Voice \relative c' {
  \override Staff.Clef.stencil = ##f
   \override Staff.TimeSignature.stencil = ##f

    s1

  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = " 1" }
    << \global \violinOne >>
    \new Staff \with { instrumentName = " 2" }
    << \global \violinTwo >>
    \new Staff \with { instrumentName = "3" }
    << \global \viola >>
    \new Staff \with { instrumentName = "4" }
    << \global \cello >>
  >>
  \layout { }
  \midi { }
}