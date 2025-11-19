\version "2.24.3"

#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  subtitle = "~~ super secret ~~"
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
  ragged-last = ##f
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
    "Pause, lower bows, and whisper."

    "spend ~15 seconds on each instruction"
    "move together through each numbered instruction"
    " "
    \bold"Overal duration: 45 seconds."
    "Continue to vignette 5 together after a brief pause"
    " "
    " "
    " "
  }
}


\markup{\line{
  "Violin 1"
  "  "
  \column{
    "1. Whisper about something that brings you joy." 
    "2. While still whispering, pluck some sparse pizz. with pitches: B, C#, D."
    "3. Go back to just whispering."
    " "
    " "
    " "
  }
  }}



\markup{\line{
  "Violin 2"
  "  "
  \column{
    "1. Whisper about something that brings you clarity." 
    "2. While still whispering, pluck some sparse pizz. with pitches: D, E, F#."
    "3. Go back to just whispering."
    " "
    " "
    " "
  }
  }}



\markup{\line{
  "Viola"
  "  "
  \column{
    "1. Whisper about something that brings you relief." 
    "2. While still whispering, pluck some sparse pizz. with pitches: A#, B, C#"
    "3. Go back to just whispering."
    " "
    " "
    " "
  }
  }}


\markup{\line{
  "Cello"
  "  "
  \column{
    "1. Whisper about something that brings you purpose." 
    "2. While still whispering, pluck some sparse pizz. with pitches: B, F#."
    "3. Go back to just whispering."
    " "
    " "
    " "
  }
  }}



\markup{
  \column{
    " "
    "Phone 1 (following Violin 1): (silent)"
    "Phone 2 (following Violin 2): (silent)"
    "Phone 3 (following Viola): (silent)"
    "Phone 4 (following Cello): (silent)"
  }
}

