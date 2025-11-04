#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  subtitle = "calm waves, a bit faster than the tides"
  tagline = ""
  title = \markup{\normal-text"vignette 1"}
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
    "Each swell should be between 6 and 20 seconds."
    "Overlap, playing with coming in and out of the overal texture."
    "At least 2 players should be playing at any given point."
    " "
    \bold"Overal duration: 60-90 seconds."
    "After finishing your last swell, continue attacca to vignette 2."
    " "
    " "
  }
}

\score {

  \new Staff \with { instrumentName = "Violin 1" } \relative c'{
      \override Hairpin.circled-tip = ##t
    \key d \major
    \time 11/4
    \bar ".|:" 
    <fis' fis'>1\< (<fis fis'>1\f\>)
    r2\!
    \bar ":|." 
  }
}

\score {
  \new Staff \with { instrumentName = "Violin 2" } \relative c{
  \override Hairpin.circled-tip = ##t

    \key d \major
    \time 100/4
    \bar ".|:" 
    <g' g'>1 \< (<g g'>1\f\>) s4\! r1
    \bar ":|." 
  }
}

\score {
  \new Staff \with { instrumentName = "Viola" } \relative c {
    \romanStringNumbers

    \clef alto
      \override Hairpin.circled-tip = ##t

    \key d \major
    \time 19/4
    \bar ".|:" 
    <d'^\2 d^\3>1\< s1\f\>  r4\! <d^\3 d^\4>1\< s1\>\f s4\! r4
    \bar ":|." 
  }
}

\score {
  \new Staff \with { instrumentName = "Cello" } \relative c {
    \clef bass
    \key d \major
    \override Hairpin.circled-tip = ##t
    \time 19/4
    \bar ".|:" 
    <a d>1\< s1\f\> s1 s1 s4\! r2
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
