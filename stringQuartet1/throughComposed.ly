global= {
  \time 4/4
  \key d \major
}

violinOne = \new Voice \relative c'' {
  \bar "||" \mark \default

  d8\p\< (fis d fis d fis d fis)
  d8\f\> (fis d fis d fis d fis
  d8\!) r2.. r1
  r1 r1
  r1 r1

  d8\p\< (fis d fis d fis d fis)
  d8\f\> (fis d fis d fis d fis
  d8\!) r2.. r1
  r1 r1
  r1 r1

  d8\p\< (fis d fis d fis d fis)
  d8\f\> (a' d, a' d, a' d, a'
  d,8\!) r2.. r1
  r1 r1
  r1 r1
  r1
  \bar "||" \mark \default
   
  \hide Stem
  a'4^\markup{\italic "frantically alternate among pitches"}\< cis d s4
  s2 s2\> s1
  r1\! r1 r1
  
  b,4\< cis d s4
  s2 s2\> s1
  r1\! r1 r1

  \bar "|."
}

violinTwo = \new Voice \relative c'' {
  \bar "||" \mark \default
  r1 r1
  b8\p\< (d b d b d b d)
  b\f\> (d b d b d b d
  b8\!) r2.. r1
  r1 r1

  r1 r1
  b8\p\< (d b d b d b d)
  b\f\> (d b d b d b d
  b8\!) r2.. r1
  r1 r1

  r1 r1
  b8\p\< (d b d b d b d)
  b8\f\> (fis' b, fis' b, fis' b, fis'
  b,8\!) r2.. r1
  r1 r1
  r1
  \bar "||" \mark \default
  \hide Stem
  d4^\markup{\italic "frantically alternate among pitches"}\< fis a s4
  s2 s2\> s1
  r1\! r1 r1

  \break
  e,4\< g a s4
  s2 s2\> s1
  r1\! r1 r1
  
  \bar "|."
}

viola = \new Voice \relative c'' {
  \bar "||" \mark \default

  \clef alto
  r1 r1 r1 r1
  g8\p\< (b g b g b g b )
  g\f\> (b g b g b g b 
  g\!) r2.. r1

  r1 r1 r1 r1
  g8\p\< (b g b g b g b )
  g\f\> (b g b g b g b 
  g\!) r2.. r1

  r1 r1 r1 r1
  g8\p\< (b g b g b g b )
  g\f\> (e' g, e' g, e' g, e'
  g,\!) r2.. r1
  r1
  \bar "||" \mark \default
  r1 r1 r1

  \hide Stem
  d4^\markup{\italic "frantically alternate among pitches"}\< fis g s4
  s2 s2\> s1
  r1\! r1 r1

  fis,4\< a b  s4
  s2 s2\> s1
  r1\! r1 r1
  
  
  
  \bar "|."
}

cello = \new Voice \relative c' {
  \bar "||" \mark \default

  \clef bass
  r1 r1 r1 r1 r1 r1
  d8\p\< (fis d fis d fis d fis)
  d8\f\> (fis d fis d fis d fis
  d8\!) r2.. r1

  r1 r1 r1 r1
  d8\p\< (g d g d g d g)
  d8\f\> (fis d fis d fis d fis
  d8\!) r2.. r1

  r1 r1 r1 r1
  d8\p\< (fis d fis d fis d fis)
  d8\f\> (fis d fis d fis d fis\!)
  r1
  \bar "||" \mark \default
   r1 r1 r1

   \hide Stem
  g,4^\markup{\italic "frantically alternate among pitches"}\< b d s4
  s2 s2\> s1
  r1\! r1 r1

  \undo \hide Stem  
  \repeat tremolo 8 { d,,16\< d' } 
  s2 s2\> s1 r1\!

  \bar "|."
}

phone = \new Voice \relative c' {
  \clef treble
  
  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Violin 1" }
    << \global \violinOne >>
    \new Staff \with { instrumentName = "Violin 2" }
    << \global \violinTwo >>
    \new Staff \with { instrumentName = "Viola" }
    << \global \viola >>
    \new Staff \with { instrumentName = "Cello" }
    << \global \cello >>
    \new Staff \with { instrumentName = "Phone" }
    << \global \phone >>
  >>
  \layout { }
  \midi { }
}