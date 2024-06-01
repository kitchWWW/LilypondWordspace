#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  subtitle = ""
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
    "Each swell can be between 4 and 20 seconds."
    "Overlap, playing with coming in and out of the overal texture."
    "At least 2 players should be playing at any given point."
    " "
    \bold"Overal durration: 60-90 seconds."
    "TODO: WRITE ENDING"
    " "
    " "
  }
}

\score {
  \new Staff \with { instrumentName = "Violin 1" } \relative c'{
    \key d \major
    \time 12/4
    \bar ".|:" 

    fis4\pp\< ^\markup{\italic"vary tempo and # of notes on each repeat"} fis4 fis4 fis4 fis4 fis4\>\f fis4 fis4 fis4 fis4\pp r2\fermata
     \bar ":|." 
 }
}


\score {
  \new Staff \with { instrumentName = "Violin 2" }  \relative c'{
    \key d \major
    \time 17/4
    \bar ".|:" 
    <a' a>1^\markup{\italic"clean"}\p\< s1\f\> <a a>1^\markup{\column{\italic "sul pont. + overpressure" \italic "(more noise than pitch)"}}\p\< s1\>\f s4\!
     \bar ":|." 
 }
}


\score {
  \new Staff \with { instrumentName = "Viola" }  \relative c'{
    \clef alto
    \time 100/4
    \key d \major
    \bar ".|:" 

    d2 ^\markup{\italic"embellish and improvise additional melodic content after first time"} 
    e4 d4 fis8 d2. b4 \grace a'8 (a,2) r2
    \times 2/3{b8 a b} a4 g fis \grace a8 (d,4.) e fis''2 g2. a8 [e] fis4 d4 e2 r4

    \bar ":|."  }
}




\score {
  \new Staff \with { instrumentName = "Cello" }  \relative c'{
    \clef bass
    \key d \major
    \time 1/4
    s4^\markup{\italic"repeat cells in any order"}
    \bar "||"
    \time 5/4
    <d,, d'>1\f\> r4\!
    \bar "||"
    \time 9/4
    <d' a'>1:32\p\< s1\f\> r4\!

    \bar "||"
    \time 9/4
    d'1 \harmonic \p\< s1\f\> r4\!
    \bar "||"
    \time 3/4
    d,2\p r4
    \bar "||"

}
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
