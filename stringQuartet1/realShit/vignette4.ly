#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  subtitle = ""
  tagline = ""
  title = \markup{\normal-text"vignette 4"}
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
    "Instructions:"
    "somethign some thing"
  }
}


\score {
  \new Staff \with { instrumentName = "Violin 1" } \with{
      \remove Staff_symbol_engraver
    }\relative c'{
      \override Staff.Clef.color = #white
      s1^\markup { "Whisper about something that brings you joy." }
  }
}


\score {
  \new Staff \with { instrumentName = "Violin 2" } \with{
      \remove Staff_symbol_engraver
    }\relative c'{
      \override Staff.Clef.color = #white
      s1^\markup { "Whisper about something that brings you clarity." }
  }
}

\score {
  \new Staff \with { instrumentName = "Viola" } \with{
      \remove Staff_symbol_engraver
    }\relative c'{

      \override Staff.Clef.color = #white
      s1^\markup { "Whisper about something that brings you relief." }
  }
}


\score {
  \new Staff \with { instrumentName = "Cello" } \with{
      \remove Staff_symbol_engraver
    }\relative c'{

      \override Staff.Clef.color = #white
      s1^\markup { "Whisper about something that brings you purpose." }
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

