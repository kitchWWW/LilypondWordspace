#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  subtitle = "...so that all the memories come flooding back at once"
  tagline = ""
  title = \markup{\normal-text"vignette 6"}
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
    "Overlap, playing with coming in and out of the overal texture."
    " "
    \bold"Overal duration: 75-90 seconds."
    " "
    \line{\bold"Ending:" "All players build via crecendo, and, following cue from violin 2, end together."}
    " "
    " "
  }
}

\score {
  \new Staff \with { instrumentName = "Violin 1" } \relative c'{
    \key d \major
    \time 12/4
    \bar ".|:" 
  \override Hairpin.circled-tip = ##t

    fis4\< ^\markup{\italic"vary tempo and # of notes on each repeat"} fis4 fis4 fis4 fis4 fis4\>\f fis4 fis4 fis4 fis4\! r2\fermata
     \bar ":|." 
 }
}


\score {
  \new Staff \with { instrumentName = "Violin 2" }  \relative c'{
        \time 100/4
    \key d \major
    \bar ".|:" 

    d2 ^\markup{\italic"embellish and improvise additional melodic content after first time"} 
    e4 d4 fis8 d2. b4 \grace a'8 (a,2) r2
    \times 2/3{b8 a b} a4 g fis' \grace a8 (d,4.) e fis''2 g2. a8 [e] fis4 d4 e2 r4

    \bar ":|."
 }
}


\score {
  \new Staff \with { instrumentName = "Viola" }  \relative c'{
    \clef alto

\key d \major
    \time 42/4
    \romanStringNumbers
    \bar ".|:" 
      \override Hairpin.circled-tip = ##t

    <a'\1 a\2>1^\markup{\italic \column{ "alternate clean and" "sul pont. + overpressure" "(more noise than pitch)"}}
        \< s1\f\> s1 r2\! <a\2 a\3>1\< s1\>\f s1 r4\!
     <d,\2 d\3>1\< s1\f\> s1 r2\!
     \bar ":|." 


  }
}




\score {
  \new Staff \with { instrumentName = "Cello" }  \relative c'{
  \override Hairpin.circled-tip = ##t
    \clef bass
    \key d \major
    \time 1/4
    s4^\markup{\italic\column{"repeat cells in any order," "or play a nice melody." "-- whatever feels right."}}
    \bar "||"
    \time 5/4
    <d,, d'>1\f\> r4\!
    \bar "||"
    \time 9/4
    <d' a'>1:32\< s1\f\> r4\!

    \bar "||"
    \time 9/4
    d'1 \harmonic \< s1\f\> r4\!
    \bar "||"
  }
}


\markup{
  \column{
    " "
    "Phone 1 (following Violin 1): Noise"
    "Phone 2 (following Violin 2): Melody"
    "Phone 3 (following Viola): Speech"
    "Phone 4 (following Cello): Drone"
  }
}
