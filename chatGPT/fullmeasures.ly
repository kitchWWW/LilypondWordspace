\version "2.20.0"  % Make sure this version is compatible with your LilyPond installation

\header {
  title = "Simple Melody with Full Measures"
  composer = "ChatGPT"
}

\score {
  \new Staff {
    \key c \major
    \time 4/4
    \relative c' {
      c4 d e f | % 1st measure: 4 quarter notes = 4 beats
      g2 e4 d | % 2nd measure: 1 half note (2 beats) + 2 quarter notes = 4 beats
      e4 f g a | % 3rd measure: 4 quarter notes = 4 beats
      a2 g4 f | % 4th measure: 1 half note (2 beats) + 2 quarter notes = 4 beats
      e2. r4 | % 5th measure: 1 dotted half note (3 beats) + 1 quarter rest = 4 beats
    }
  }
  \layout { }
  \midi { }
}
