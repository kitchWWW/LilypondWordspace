#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  title = "vignettes"
  subtitle = ""
  subsubtitle = "Viola"
  composer = "Brian Ellis"
  tagline = ""
}
  \paper{
  indent = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}

  \layout {
    ragged-right = ##f
    \context {
      \Staff
      \omit TimeSignature
    }
  }

\score {
  \header { piece = "1." }
  \new Staff \relative c {
    \clef alto
    \key d \major
    \time 17/4
    \bar ".|:" 
    <d'^\2 d^\3>1\p\< s1\f\> <d^\3 d^\4>1\p\< s1\>\f s4\!
    \bar ":|." 
  }
}
\score {
  \header { piece = "2." }
  \new Staff \relative c'{
    \clef alto
    \key d \major
    \time 8/4
    \bar ".|:" 
    <d, a'>4\mp\<<d a'>4<d a'>4<d a'>4
    <d b'>4\mf\><d b'>4<d b'>4<d b'>4\mp
    \bar ":|." 
  }
}
\score {
  \header { piece = "3." }
  \new Staff \relative c'{
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
  \header { piece = "4." }
  \new Staff \with{
      \remove Staff_symbol_engraver
    }\relative c'{

      \override Staff.Clef.color = #white
      s1^\markup { "Whisper about something that brings you relief." }
  }
}

\score {
  \header { piece = "5." }
  \new Staff \relative c' {
    \clef alto
    \key d \major
    \time 100/4
    \bar ".|:" 
    b1^\markup{\column{\italic "sul pont. + overpressure" \italic "(more noise than pitch)"}}\<
    ~ b1 \> \fermata r4\!
    \repeat tremolo 8 { b16\<^\markup{\italic"clean"} d, }
    s4\>
    \repeat tremolo 8 { b'16 fis'\! }
    \bar ":|." 
  }
}

\score {
  \header { piece = "6." }
  \new Staff \relative c'{
    \clef alto
    s4^"coralle tba"
  }
}
\score {
  \header { piece = "7." }
  \new Staff \relative c'{
    \clef alto
    \time 100/4
    \key d \major
    \bar ".|:" 

    d2 ^\markup{\italic"embellish and improvise additional melodic content after first time"} 
    e4 d4 fis8 d2. b4 \grace a'8 (a,2) r2
    \times 2/3{b8 a b} a4 g fis \grace a8 (d,4.) e fis''2 g2. a8 [e] fis4 d4 e2 r4

    \bar ":|."  }
}