global= {
  \time 4/4
  \tempo 4 = 120
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


  b'4\< cis e s4
  s2 s2\> s1
  r1\! r1 r1
  
  b,4\< cis fis s4
  s2 s2\> s1
  r1\! r1 r1

  \bar "||" \mark \default

  \undo \hide Stem
  r2. b4 ( ~ b2 a2 g4)
  r2. r1 r1


  r2.
  \override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { b,,64\p\< [d b' fis' fis b, d, b b d b' fis' fis b, d, b b d b' fis' fis b, d, b] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { b64\ff\> [d b' fis' fis b, d, b b d b' fis' fis b, d, b b d b' fis' fis b, d, b\p\! ] }

  r2
  r1 r1
  r2. <d' d'>4:32 ~
  <d d'>1:32

  r1

  d1 ~d2 r2
  d1 ~d2 r2
  d1 ~d2 r2
  d1 ~d2 r2
  d1 ~d2 r2

  d2. <d d,>4 ~ <d d,>2 r2
  d2. <d d,>4 ~ <d d,>2 r2
  <e a,>1 ~<e a,>1 r1

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
  
  d4\< fis a s4
  s2 s2\> s1
  r1\! r1 r1

  \break
  e,4\< g a s4
  s2 s2\> s1
  r1\! r1 r1
  
  \bar "||" \mark \default
  \undo \hide Stem

  r1 r1 r2 \times 2/3{g8\< b g} \times 2/3{b g b}
  \times 2/3{g8 b g} \times 2/3{b g b}
  \times 2/3{g8\!\> b g} \times 2/3{b g b}
  \times 2/3{g8 b g} \times 2/3{b g b\!}
  r2
  r1
  r4
  \xNotesOn
  b2.\<^\markup{\italic\column{"pont." "more noise than pitch"}} ~ b2 b2\> ~ b2\!
  r2
  \xNotesOff

  r4 <b fis'>2.:32 ~ <b fis'>1:

  r1





  r1 r1
  e2. fis4 ~ fis2 r2
  
  e2. fis4 ~ fis2 r2

  e2. fis4 ~ fis2 r2
  
  e2 fis2 g2 r2

  e2 fis2 g2 r2

  e4 fis2 g4 fis4 e r2

  <d g,>1 ~ <d g,>1 r1
  


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
  
  d4\< fis g s4
  s2 s2\> s1
  r1\! r1 r1

  fis,4\< g a  s4
  s2 s2\> s1

  \bar "||" \mark \default
  r1\! r1 r1
  

  \undo   \hide Stem

  \xNotesOn
  r2 r8 <a a'>^\markup{\italic"pizz"} r <a a'> r
  <a a'> r <a a'> r <a a'> r <a a'> r <a a'> r <a a'> r <a a'> r <a a'>
  r <a a'> r2.
  \xNotesOff

  r2
  <a a'>:32 ~ <a a'>1 ~ <a g'> ~ <a g'>
  r1

  r1 r1 r1 r1
  b'1 a2 r2
  b1 a2 r2
  b1 a2 r2
  b1 a2 r2
  b1 a2 r2
  <b b,>1 ~<b b,>1 r1





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

  d,,4\< d' s4 s4
  s2 s2\> s1
  r1\! r1 r1


  g4\< b d s4
  s2 s2\> s1
  r1\! r1 r1

  d,,4\< d' s4 s4
  s2 s2\> s1



  \bar "||" \mark \default

  \undo \hide Stem  
  \repeat tremolo 8 { d,16\! d'^( } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d') } 

  r1



  r1 r1 r1 r1 r1 r1

  g'1 ~ g2 r2
  g2 ~ g8 fis4. ~fis2 r2
  
  g2 ~ g8 fis4. ~fis2 r2
  g2 ~ g8 fis4. ~fis2 r2
  <e a,>1 ~ <e a,>1 r1

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