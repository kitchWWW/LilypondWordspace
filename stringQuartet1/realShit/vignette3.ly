#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  subtitle = ""
  tagline = ""
  title = \markup{\normal-text"vignette 3"}
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
    "Material last between 4 and 20 seconds before beign repeated."
    " "
    \bold"Overal durration: 60-90 seconds."
    "After finishing your last swell, find silence. continue to vignette 4 together."
    " "
    \bold"TODO: correct phone material."
    " "
  }
}
\score {
  \new Staff \with { instrumentName = "Violin 1" } \relative c'{
    \time 100/4
    \key d \major
    \bar ".|:" 

    a'4^\markup{\italic"embellish and improvise additional melodic content after first time"} (b4 d1 fis8 d4 e4 d2) r4
    \times 2/3{b8 (a b} a4 g fis fis'2 g2. a8 [e] fis4 d4 e2) r4

    \bar ":|." 

  }
}


\score {
  \new Staff  \with { instrumentName = "Violin 2" } \relative c'{
      \override Hairpin.circled-tip = ##t
    \key d \major
    \time 91/4
    \bar ".|:" 
    <d fis>1 \mf\> s8\! r4 <d g>1\mf\> s8\! r4
    \bar ":|." 

  }
}


\score {
  \new Staff \with { instrumentName = "Viola" } \relative c'{
    \clef alto
    \key d \major
    \time 100/4
    \bar ".|:" 
    d8^\markup{\italic"embellish and improvise additional melodic content after first time"} fis g b4. a4 r4
    \times 2/3{fis,2 e d} e4 \grace fis8 (d2.) r4
    \grace a'8 (fis4) \grace d'8 (b4) \grace e8 (d4) a'2 a'1\harmonic  r2
    \bar ":|." 

  }
}


\score {
  \new Staff \with { instrumentName = "Cello" } \relative c'{
    \clef bass
          \override Hairpin.circled-tip = ##t

    \key d \major
    \time 100/4
    \bar ".|:" 
    b,1:32\< ~b1:\> r4\!
    b'2\p\fermata r4
    \bar ":|." 

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
