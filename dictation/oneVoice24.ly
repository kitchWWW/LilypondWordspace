#(set-global-staff-size 28)


spacer = \relative c' {
\override Staff.Clef.color = #white
\override Staff.Clef.layer = #-1

\override Staff.TimeSignature.stencil = ##f
  \clef treble
  \stopStaff
      \override NoteHead.transparent = ##t
      % a'8 [a a] a [a a] 
      % a [a a] a [a a] 
      % a [a a] a [a a] 
      % a [a a] a [a a] 
      
      % a [a a] a [a a] 
      % a [a a] a [a a] 
      % a [a a] a [a a] 
      % a [a a] a [a a] 
      
      % a [a a] a [a a] 
      % a [a a] a [a a] 
      % a [a a] a [a a] 
      % a [a a] a [a a] 
      
     a'8 [a] a [a] a [a]
     a [a] a [a] a [a]
     a [a] a [a] a [a]
     a [a] a [a] a [a]


     a [a] a [a] a [a]
     a [a] a [a] a [a]
     a [a] a [a] a [a]
     a [a] a [a] a [a]

     \bar "|."
}

upper = \relative c'' {
  \clef treble
  \key a \minor
  \time 2/4
  s2 s2 s2 s2 \break
  s2 s2 s2 s2 \break
  s2 s2 s2 s2 
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