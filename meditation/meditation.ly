% #(set-default-paper-size "ansi a" 'landscape)
#(set-default-paper-size '(cons (* 13 in) (* 5.5 in)))

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  % title = "Attention Meditation"
  % subtitle = ""
  % subsubtitle = "map for any voice in any instrument"
  % composer = "Brian Ellis"
  tagline = ""
}
  \paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  ragged-last = ##f
}

\score {
  \new Staff \relative c'' {
      \override Score.BarNumber.break-visibility = ##(#f #f #f)

     \hide Stem
     \bar "||" \mark "1."
     \time 3/4
      e4 f e
     \bar "||"
      e4 d e
     \bar "||"
     \time 3/4
      e4 c e
     \bar "||"
      \time 4/4
      e4 c d e
      \stopStaff
      \time 4/4
      s1
      \startStaff
     \bar "||" \mark "2."
     \time 3/4
      e4 d c
     \bar "||"
        \time 4/4
      e4 c d c
     \bar "||"
      e4 d e c
     \bar "||"
        \time 3/4
      e4 f c
      \stopStaff
      \time 4/4
      s1
      \startStaff
     \bar "||" \mark "3."
     \time 3/4
      e4 f g
     \bar "||"
        \time 4/4
      e4 g f g
     \bar "||"
        \time 3/4
      e4 a g
     \bar "||"  
        \time 4/4
      e4 f e g
     \bar "||"      
     \break


     \bar "||" \mark "4."
     \time 3/4
      c,4 d c
     \bar "||"
      c a c
     \bar "||"
      \time 4/4
      c d b c
     \bar "||"
      \time 4/4
      c b a c
      \stopStaff
      \time 4/4
      s1
      \startStaff
     \bar "||" \mark "5."
     \time 3/4
      c4 a g
     \bar "||"
      \time 4/4
      c4 b a g
     \bar "||"
      \time 3/4
      c4 b g
     \bar "||"
      \time 3/4
      c d g,
      \stopStaff
      \time 4/4
      s1
      \startStaff
     \bar "||" \mark "6."
     \time 3/4
      c4 d e
     \bar "||"
        \time 3/4
      c f e
     \bar "||"
        \time 4/4
      c b d e
     \bar "||"
        \time 2/4
      c e
     \bar "||"      

\break
     \bar "||" \mark "7."
     \time 3/4
      g,4 a g
     \bar "||"
      g f g
     \bar "||"
      \time 4/4
      g b a g
     \bar "||"
      \time 4/4
      g a f g
      \stopStaff
      \time 4/4
      s1
      \startStaff
     \bar "||" \mark "8."
     \time 3/4
      g4 f e
     \bar "||"
        \time 4/4
      g f g e
     \bar "||"
        \time 3/4
      g d e
     \bar "||"
        \time 2/4
      g e
      \stopStaff
      \time 4/4
      s1
      \startStaff
     \bar "||" \mark "9."
     \time 3/4
      g4 a c
     \bar "||"
     \time 3/4
      g b c
     \bar "||"
      \time 4/4
      g a b c
     \bar "||"
      \time 3/4
      g d' c
     \bar "||"      

  }
  \layout {
    ragged-right = ##t
    \context {
      \Staff
      \omit TimeSignature
    }
  }
}

