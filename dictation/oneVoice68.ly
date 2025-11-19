#(set-global-staff-size 28)


spacer = \relative c' {
\override Staff.Clef.color = #white
\override Staff.Clef.layer = #-1

\override Staff.TimeSignature.stencil = ##f
  \clef treble
  \stopStaff
      \override NoteHead.transparent = ##t
      a'8 [a a] a [a a] 
      a [a a] a [a a] 
      a [a a] a [a a] 
      a [a a] a [a a] 
      \break
      a [a a] a [a a] 
      a [a a] a [a a] 
      a [a a] a [a a] 
      a [a a] a [a a] 
      \break
      a [a a] a [a a] 
      a [a a] a [a a] 
      a [a a] a [a a] 
      a [a a] a [a a] 
      \bar "|."
      
     % a'8 [a] a [a] a [a]
     % a [a] a [a] a [a]
     % a [a] a [a] a [a]
     % a [a] a [a] a [a]


     % a [a] a [a] a [a]
     % a [a] a [a] a [a]
     % a [a] a [a] a [a]
     % a [a] a [a] a [a]

     % a [a] a [a] a [a]
     % a [a] a [a] a [a]
     % a [a] a [a] a [a]
     % a [a] a [a] a [a]
}

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 6/8
  s2. s s s
  s2. s s s
  s2. s s s
}


\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}


\header {
  title = ""
  composer = "Brian Ellis"
    piece = ""

tagline = ""
}


\score {

\new GrandStaff
  <<
    \new Staff \spacer
    \new Staff \upper
  >>
  \layout { }
  \midi { }
}