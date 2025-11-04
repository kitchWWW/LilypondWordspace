#(set-default-paper-size "ansi a" )

\header {
  dedication = \markup{\column{\italic"for finding stillness" " "}}
  title = "Meditation"
  subtitle = ""
  subsubtitle = "for any voice in any instrument"
  composer = "Brian Ellis"
  tagline = ""
}
  \paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  % ragged-last-bottom = ##f
}
upper = \absolute {
  \clef treble
  \key c \major
  \time 4/4
       \hide Stem

  <<{
   e'4 g' c'' e''
   }\\{
   c'4 c' g' g'
   }>>
}

lower = \absolute {
  \clef bass
  \key c \major
  \time 4/4
     \hide Stem

   <<{
   g4 g4 g c'
   }\\{
   e4
   }>>
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
\layout {
    ragged-right = ##t
    \context {
      \Staff
      \omit TimeSignature
    }
  }
    \midi { }
}