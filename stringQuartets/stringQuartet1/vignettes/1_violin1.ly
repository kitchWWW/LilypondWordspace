#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  title = "vignettes"
  subtitle = ""
  subsubtitle = "Violin 1"
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
  \new Staff \relative c'{
    \key d \major
    \time 9/4
    \bar ".|:" 
    <fis' fis'>1^\markup{\column{\italic "visibly consistent bow speed"}} \mp (<fis fis'>1)
    \bar ":|." 
  }
}
\score {
  \header { piece = "2." }
  \new Staff \relative c'{
    \key d \major
    \time 13/4
    \bar ".|:" 
    <a fis'>1:32^\markup{\column{\italic "sul pont. + overpressure" \italic "(more noise than pitch)"}} \mp\< (<a fis'>1:32\f\>) s4\mp
    r1
    \bar ":|." 
  }
}
\score {
  \header { piece = "3." }
  \new Staff \relative c'{
    \time 100/4
    \key d \major
    \bar ".|:" 

    a'4^\markup{\italic"embellish and improvise additional melodic content after first time"} (b4 d1 fis8 d4 e4 d2) r4
    \times 2/3{b8 (a b} a4 g fis fis'2 g2. a8 [e] fis4 d4 e2) r4

    \bar ":|." 

  }
}
\score {
  \header { piece = "4." }
  \new Staff \with{
      \remove Staff_symbol_engraver
    }\relative c'{
      \override Staff.Clef.color = #white
      s1^\markup { "Whisper about something that brings you joy." }
  }
}

\score {
  \header { piece = "5." }
  \new Staff \relative c' {
    \key d \major
    \time 106/4
    \bar ".|:" 
    % b'2 \pp\< (b2\mp\>) b,\pp\< (b2\mp\>) s4\!


    r1
    \override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { b64\p\< [d b' fis' fis b, d, b b d b' fis' b, d, b b d b' fis' b, d, b] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { b64\ff\> [d b' fis' b, d, b b d b' fis' fis b, d, b b d b' fis' fis b, d, b\p\! ] }
  r1\fermata
  \break

    r1
    \override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { g64\p\< [d' b' g' g b, d, g, g d' b' g' g b, d, g, g d' b' g' g b, d, g,] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { g 64\ff\> [d' b' g' g b, d, g, g d' b' g' g b, d, g, g d' b' g' g b, d, g, \p\! ] }
  r1\fermata

    \bar ":|." 
  }
}

\score {
  \header { piece = "6." }
  \new Staff \relative c'{
    s4^"coralle tba"
  }
}
\score {
  \header { piece = "7." }
  \new Staff \relative c'{
    \key d \major
    \time 12/4
    \bar ".|:" 

    fis4\pp\< ^\markup{\italic"vary tempo and # of notes on each repeat"} fis4 fis4 fis4 fis4 fis4\>\f fis4 fis4 fis4 fis4\pp r2\fermata
     \bar ":|." 
 }
}