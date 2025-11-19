#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  title = "vignettes"
  subtitle = ""
  subsubtitle = "Cello"
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
    \clef bass
    \key d \major
    \time 17/4
    \bar ".|:" 
    <a d>1\p\< s1\f\> s1 s1 s4\!
    \bar ":|." 
  }
}
\score {
  \header { piece = "2." }
  \new Staff \relative c{
    \clef bass
    \key d \major
    \time 100/4
    \bar ".|:" 
    a4\<_\markup{\italic{"pizz."}}^\markup{\italic"improvise similar chaotic rhythms after first time"}  a16 a8. \times 2/3{r4 a a'}
    r4. \times 4/5{r8 a,8 a4 a'8\f\>} a,4 a r2 \times 2/3{a8 a a}r8 a8\! r4
    \bar ":|." 
  }
}
\score {
  \header { piece = "3." }
  \new Staff \relative c'{
    \clef bass
    \key d \major
    \time 100/4
    \bar ".|:" 
    b,1:32\< ~b:1\> r4\!
    b'2\p\fermata r4
    \bar ":|." 

  }
}
\score {
  \header { piece = "4." }
  \new Staff \with{
      \remove Staff_symbol_engraver
    }\relative c'{

      \override Staff.Clef.color = #white
      s1^\markup { "Whisper about something that brings you purpose." }
  }
}

\score {
  \header { piece = "5." }
  \new Staff \relative c {
    \clef bass
    \key d \major
    \time 400/4
    \bar ".|:" 
    b4^\markup{\italic"embellish and improvise additional melodic content after first time"} d2
    a4 d fis4. g8
    \times 2/3 {b8 ais b} d,2 e4 cis ais b g fis\fermata r4

    % b4 d2.
    % a4 d2.
    % g,4 d'2.
    % fis,2. r4

    % b4 fis'2.
    % b,4 g'2.
    % b,4 e2.
    % \time 5/4
    % b4 fis'4. d4.
    % r4 \fermata
    % \break
    % \time 4/4
    % b4 <d d'>2.:32 
    % a4 <e' d' >2.:32
    % g,4 <fis' d'>2.:32
    % fis,2. r4
    

    \bar ":|." 
  }
}

\score {
  \header { piece = "6." }
  \new Staff \relative c'{
    \clef bass
    s4^"coralle tba"
  }
}
\score {
  \header { piece = "7." }
  \new Staff \relative c'{
    \clef bass
    \key d \major
    \time 1/4
    s4^\markup{\italic"repeat cells in any order"}
    \bar "||"
    \time 5/4
    <d,, d'>1\f\> r4\!
    \bar "||"
    \time 9/4
    <d' a'>1:32\p\< s1\f\> r4\!

    \bar "||"
    \time 9/4
    d'1 \harmonic \p\< s1\f\> r4\!
    \bar "||"
    \time 3/4
    d,2\p r4
    \bar "||"

}
}