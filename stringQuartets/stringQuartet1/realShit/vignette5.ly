#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  subtitle = "the crystal light that shatters the bottle..."
  tagline = ""
  title = \markup{\normal-text"vignette 5"}
}
  \paper{
  indent = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
  print-all-headers = ##f
  print-page-number=##f
}

  \layout {
    ragged-right = ##f
    \context {
      \Staff
      \omit TimeSignature
    }
  }

\markup{
  \column{
    " "
    " "
    \bold"Instructions:"
    "Violin 1, 2 and Cello perform alternating swells to accompany viola melody."
    "Each swell should be about 8 seconds."
    "Repeat for a total of 12 swells before continuing to the final swell with everyone."
    " "
    "After finishing the last swell, continue to vignette 6 together."
    " "
    " "
  }
}

global= {
    \override Hairpin.circled-tip = ##t
\time 12/4
}

violinOne = \new Voice \relative c' {
  \override Hairpin.circled-tip = ##t

      \omit Score.BarNumber
      
  \bar ".|:" 
  <<{
    fis16 [\harmonic g\harmonic a\harmonic 
          \override NoteHead.transparent = ##t
          g b a g a b a b g b a g b a g b g b a g a b a b g b a g ]
    }\\{
    d1:32 ~ d1:
  }>>
  r1
  s1 r1 s1 ^\markup{\huge { \hspace #10 "x6" }}
  \bar ":|."

 <<{
    b16 [\harmonic c\harmonic d\harmonic 
          \override NoteHead.transparent = ##t
          e d f e d e f d e f d f e e d f e d f f d f e f d f e d  ]
    }\\{
    g,1:32 ~ g1:
  }>>
  s1
  \bar "||"

}

violinTwo = \new Voice \relative c' {
    \override Hairpin.circled-tip = ##t
s1 r1 s1
<<{
    b16 [\harmonic c\harmonic d\harmonic 
          \override NoteHead.transparent = ##t
          e d f e d e f d e f d f e e d f e d f f d f e f d f e d  ]
    }\\{
    g,1:32 ~ g1:
  }>>
  r1
  \bar ":|."

  <<{
    cis'16 [\harmonic d\harmonic e\harmonic 
          \override NoteHead.transparent = ##t
          d f e f e d f d e f e d f e f e d f d f e d f d e f e d]
    }\\{
    a1:32 ~ a1:
  }>>

  r1
}

viola = \new Voice \relative c'' {
  \override Hairpin.circled-tip = ##t
  \clef alto
s1^"improvise some fun, beautiful, and lyrical melody material in D major." s1 s1 s1 s1 s1
s1 s1 s1

}

cello = \new Voice \relative c {
  \override Hairpin.circled-tip = ##t
  \clef bass
  <d a' d\harmonic a'\harmonic>1:32 ~ 
  <d a' d\harmonic a'\harmonic>1:32
  r1
  <g, d' g\harmonic d'\harmonic>1:32 ~ 
  <g d' g\harmonic d'\harmonic>1:32
  r1
  <a' a'\harmonic>:32~ <a a'\harmonic>
  r1

}


\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Violin 1" }
    << \global \violinOne >>
    \new Staff \with { instrumentName = "Violin 2" }
    << \global \violinTwo >>
    \new Staff \with { instrumentName = "Viola" }
    << \global \viola >>
    \new Staff \with { instrumentName = "Cello" }
    << \global \cello >>
    % \new Staff \with {
    %   instrumentName = "Phone 1" 
    %   fontSize = #-3
    %   \override StaffSymbol.staff-space = #(magstep -3)
    % }
    % << \global \phone >>

    % \new Staff \with {
    %   instrumentName = "Phone 2" 
    %   fontSize = #-3
    %   \override StaffSymbol.staff-space = #(magstep -3)
    % }
    % << \global \phone >>
    % \new Staff \with {
    %   instrumentName = "Phone 3" 
    %   fontSize = #-3
    %   \override StaffSymbol.staff-space = #(magstep -3)
    % }
    % << \global \phone >>
    % \new Staff \with {
    %   instrumentName = "Phone 4" 
    %   fontSize = #-3
    %   \override StaffSymbol.staff-space = #(magstep -3)
    % }
    % << \global \phone >>
  >>
  \layout { }
  % \midi { }
}
\markup{
  \column{
    " "
    "Phone 1 (following Violin 1): Sparkles in D"
    "Phone 2 (following Violin 2): Sparkles in A"
    "Phone 3 (following Viola): Talking"
    "Phone 4 (following Cello): Drone in D"
  }
}
