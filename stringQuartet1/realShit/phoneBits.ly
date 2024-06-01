
violinOnePhone = \new Voice \relative c'' {
  \override Hairpin.circled-tip = ##t

  \bar "||" \mark \default

  d1 ~d2 r2 
  d1_\markup{\italic"sempre"} ~d2 r2
  d1 ~d2 r2
  d1 ~d2 r2
  d1 ~d2 r2

  d2. <d d,>4  ~ <d d,>2 r2 
  d2. <d d,>4~ <d d,>2 r2 
  <d fis>1~<d fis>4  r2.
  \override Hairpin.circled-tip = ##f

  <d fis>1:32 ~<d fis>1:32

  \bar "||" \mark \default
  d8  fis d fis d fis d fis 
    \override Hairpin.circled-tip = ##t
  d8 fis d fis d fis d fis
  d8   r2.. R1
  R1 R1
  R1 R1

  d8  fis d fis d fis d fis 
  d8 fis d fis d fis d fis
  d8   r2.. R1
  R1 R1
  R1 R1

  d8  fis d fis d fis d fis 
  d8 a' d, a' d, a' d, a'
  d,8   r2.. R1
  R1 R1
  R1 R1
  R1 

  \bar "||" \mark \default
    \override Score.TimeSignature.style = #'topsy-turvy
    \override Score.TimeSignature.extra-offset = #' (0 . -1.5 )

  \time 24/4
  \hide Stem
  b1 <g d'>1 <g d'>1 <a c>2 b2  r1 s1
  
  \break
    b1 <g d'>1 <g d'>1 <a c>2 b2  r1 s1

\break
    b1 <g d'>1 <g d'>1 <a c>2 b2  r1 s1

  \break
    b1 <g d'>1 <g d'>1 <a c>2 b2  r1 s1


\undo     \override Score.TimeSignature.style = #'topsy-turvy
\undo    \override Score.TimeSignature.extra-offset = #' (0 . -1.5 )
  \numericTimeSignature


  \time 4/4
  \bar "||" \mark \default

  \undo \hide Stem
  r2. b'4  ~ b2 a2 g4 
  r2. R1 R1


  r2.
  \override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { b,,64  [d b' fis'  fis  b, d, b  b  d b' fis'  fis  b, d, b  b  d b' fis'  fis  b, d, b ] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { b64   [d b' fis'  fis  b, d, b  b  d b' fis'  fis  b, d, b  b  d b' fis'  fis  b, d, b   ] }

  r2
  R1 R1
  r2. <d' d'>4:32 ~
  <d d'>1:32
  ~<d d'>4^\markup{\italic" let ring "}  r2.
  

  \bar "|."
}

violinTwoPhone = \new Voice \relative c'' {
    \override Hairpin.circled-tip = ##t
  
  \bar "||" \mark \default


  R1 R1
  e2. fis4 ~ fis2 r2 
  
  e2._\markup{\italic"sempre"} fis4 ~ fis2 r2

  e2. fis4 ~ fis2 r2
  
  e2 fis2 g2 r2

  e2 fis2 g2  r2 

  e4 fis2 g4fis4 e r2 

  <e g,>1~ <e g,>4 r2.
  <e g,>1:32 ~ <e g,>4 r2.




  \bar "||" \mark \default
  R1 R1
  b8  d b d b d b d 
  b d b d b d b d
  b8   r2.. R1
  R1 R1

  R1 R1
  b8  d b d b d b d 
  b d b d b d b d
  b8   r2.. R1
  R1 R1

  R1 R1
  b8  d b d b d b d 
  b8 fis' b, fis' b, fis' b, fis'
  b,8   r2.. R1
  R1 R1
  R1 
  \bar "||" \mark \default
  \hide Stem

    b1 <g d'>1 <g d'>1 <a c>2 b2  r1 s1


  \break
    b1 <g d'>1 <g d'>1 <a c >2 b2  r1 s1

  
    b1 <g d'>1 <g d'>1 <a c>2 b2  r1 s1


  \break
    b1 <g d'>1 <g d'>1 <a c>2 b2  r1 s1

  
  \bar "||" \mark \default
  \undo \hide Stem

  R1 R1 r2 \times 2/3{g8 b g} \times 2/3{b g b}
  \times 2/3{g8 b g} \times 2/3{b g b}
  \times 2/3{g8b g} \times 2/3{b g b}
  \times 2/3{g8 b g} \times 2/3{b g b}
  r2 
  R1
  r4
  \xNotesOn
  b2.^\markup{\italic\column{"pont." "more noise than pitch"}} ~ b2 b2 ~ b2
  r2 
  \xNotesOff

  r4 <b fis'>2.:32 ~ <b fis'>1:
  ~<b fis'>4   r2. 





  \bar "|."
}

violaPhone = \new Voice \relative c'' {
  \override Hairpin.circled-tip = ##t
  \bar "||" \mark \default

  \clef alto



  R1 R1 R1 R1
  b1 a2 r2 
  b1_\markup{\italic"sempre"} a2 r2
  b1 a2 r2
  b1 a2  r2 
  b1 a2r2 
  <b b,>1~<b b,>4 r2.
  <b b,>1:32 ~<b b,>4 r2.

  \bar "||" \mark \default


  R1 R1 R1 R1
  g8  b g b g b g b  
  g b g b g b g b 
  g   r2.. R1

  R1 R1 R1 R1
  g8  b g b g b g b  
  g b g b g b g b 
  g   r2.. R1

  R1 R1 R1 R1
  g8  b g b g b g b  
  g e' g, e' g, e' g, e'
  g,   r2.. R1
  R1 
  \bar "||" \mark \default
  s1 r1 s1

  \hide Stem
  c,1 <a e'>1 <a e'>1 <b d>2 c2  r1 s1

  c1 <a e'>1 <a e'>1 <b d>2 c2  r1 s1
  
  c1 <a e'>1 <a e'>1 <b d>2 c2  r1 s1

  c1 <a e'>1 <b d>2. c4

  \bar "||" \mark \default
  R1  R1 R1
  

  \undo   \hide Stem


  \xNotesOn
  r2 r8 <a a'>^\markup{\italic"pizz"} r <a a'> r
  <a a'> r <a a'> r <a a'> r <a a'> r <a a'> r <a a'> r <a a'> r <a a'>
  r <a a'> r2.
  \xNotesOff

  \override Hairpin.circled-tip = ##f
  
  r2
  <a a'>:32 ~ <a a'>1: ~ <a g'>: ~ <a g'>: ~
  <a g'>4   r2. 



  \bar "|."
}

celloPhone = \new Voice \relative c' {
  \override Hairpin.circled-tip = ##t

  \bar "||" \mark \default

  \clef bass


  R1 R1 R1 R1 R1 R1

  g1 ~ g2 r2 
  g2_\markup{\italic"sempre"} ~ g8 fis4. ~fis2 r2
  
  g2 ~ g8 fis4.  ~fis2 r2 
  g2 ~ g8 fis4.~fis2 r2 
  <e a,>1~ <e a,>4 r2.
  <e a,>1:32 ~ <e a,>4 r2.


  \bar "||" \mark \default

  R1 R1 R1 R1 R1 R1
  d'8  fis d fis d fis d fis 
  d8 fis d fis d fis d fis
  d8   r2.. R1

  R1 R1 R1 R1
  d8  g d g d g d g 
  d8 fis d fis d fis d fis
  d8   r2.. R1

  R1 R1 R1 R1
  d8  fis d fis d fis d fis 
  d8 fis d fis d fis d fis  
  R1 

\pageBreak
  \bar "||" \mark \default
   s1 r1 s1

   \hide Stem
  d,1 <b f'>1 <b f'>1 <c e>2 d2 r1 s1

  d1 <b f'>1 <b f'>1 <c e>2 d2 r1 s1


  d1 <b f'>1 <b f'>1 <c e>2 d2 r1 s1

  d1 <b f'>1 <b f'>1
 
  \undo \hide Stem  
   <b f'>1
   <b f'>1 <b f'>1 <b f'>1 <b f'>1 <b f'>1 <b f'>1 <b f'>1 <b f'>1 <b f'>1 <b f'>1
   <b f'>4 r2.
}