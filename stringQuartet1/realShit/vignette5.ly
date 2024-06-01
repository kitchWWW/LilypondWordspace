#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  subtitle = ""
  tagline = ""
  title = \markup{\normal-text"vignette 5"}
}
  \paper{
  indent = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  print-all-headers = ##f
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
    "Each performer repeats segment in their own time."
    "Each swell can be between 4 and 20 seconds."
    "Overlap, playing with coming in and out of the overal texture."
    "At least 2 players should be playing at any given point."
    " "
    \bold"Overal durration: 60-90 seconds."
    "After finishing your last swell, continue attacca to vignette 2."
    " "
    " "
  }
}

global= {
    \override Hairpin.circled-tip = ##t

  \time 4/4
  \tempo 4 = 120
  \key d \major
}

violinOne = \new Voice \relative c'' {
  \override Hairpin.circled-tip = ##t

  \bar "||" \mark \default
  r1 r1 r1 r1

  \bar "|."
}

violinTwo = \new Voice \relative c'' {
    \override Hairpin.circled-tip = ##t
  
  \bar "||" \mark \default

r1 r1 r1 r1

  \bar "|."
}

viola = \new Voice \relative c'' {
  \override Hairpin.circled-tip = ##t
  \bar "||" \mark \default

  \clef alto


r1 r1 r1 r1

  \bar "|."
}

cello = \new Voice \relative c' {
  \override Hairpin.circled-tip = ##t

  \bar "||" \mark \default

  \clef bass

r1 r1 r1 r1 


  \bar "|."
}

phone = \new Voice \relative c' {
  \clef percussion  

  \bar "|."
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
  \midi { }
}
\markup{
  \column{
    " "
    "Phone 1 (following Violin 1): Melody"
    "Phone 2 (following Violin 2): Melody"
    "Phone 3 (following Viola): Melody"
    "Phone 4 (following Cello): Melody"
  }
}
