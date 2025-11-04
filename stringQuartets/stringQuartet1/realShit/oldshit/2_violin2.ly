#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  title = "vignettes"
  subtitle = ""
  subsubtitle = "Violin 2"
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
    \key d \major
    \time 9/4
    \bar ".|:" 
    <g' g'>1 \pp\< (<g g'>1\mp\>) s4\pp
    \bar ":|." 
  }
}
\score {
  \header { piece = "2." }
  \new Staff \relative c'{
    \key d \major
    \time 12/4
    \bar ".|:" 
    d8\p\<^\markup{\italic"vary tempo and # of notes on each repeat"} [fis'] d, [fis'] d, [fis'] d, [fis'] d, [fis'] d,\f\> [fis'] d, [fis'] d, [fis'] d, [fis'] d, [fis'] d, [fis'] d, [fis']\p
    \bar ":|." 
  }
}
\score {
  \header { piece = "3." }
  \new Staff \relative c'{
    \key d \major
    \time 9/4
    \bar ".|:" 
    <d fis>1 \mf\> s8\! <d g>1\mf\> s8\!
    \bar ":|." 

  }
}
\score {
  \header { piece = "4." }
  \new Staff \with{
      \remove Staff_symbol_engraver
    }\relative c'{
      \override Staff.Clef.color = #white
      s1^\markup { "Whisper about something that brings you clarity." }
  }
}

\score {
  \header { piece = "5." }
  \new Staff \relative c' {
    \key d \major
    \time 9/4
    \bar ".|:" 
    <b' d>2 \pp\< (<b d>2\mp\>) <b e>\pp\< (<b e>2\mp\>) s4\!
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
    \time 17/4
    \bar ".|:" 
    <a' a>1^\markup{\italic"clean"}\p\< s1\f\> <a a>1^\markup{\column{\italic "sul pont. + overpressure" \italic "(more noise than pitch)"}}\p\< s1\>\f s4\!
     \bar ":|." 
 }
}