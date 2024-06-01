#(add-simple-time-signature-style 'topsy-turvy
   (lambda (fraction)
     (make-scale-markup '(1.3 . 2) (markup "X"))))

\version "2.24.3"

\header{
  tagline=" "
}

global= {
    \override Hairpin.circled-tip = ##t
  \numericTimeSignature

  \time 4/4
  \tempo 4 = 120
  \key d \major
}

violinOne = \new Voice \relative c'' {
  \override Hairpin.circled-tip = ##t

  \bar "||" \mark \default

  d1\< ~d2\mp\> r2\!
  d1_\markup{\italic"sempre"} ~d2 r2
  d1 ~d2 r2
  d1 ~d2 r2
  d1 ~d2 r2

  d2.\< <d d,>4\mf\> ~ <d d,>2 r2\!
  d2.\< <d d,>4\f\> ~ <d d,>2 r2\!
  <d fis>1\f ~<d fis>4 \upbow r2.
  \override Hairpin.circled-tip = ##f

  <d fis>1:32 ~<d fis>1:32\>^\markup{\italic\column{"gradual transition" "to alternating 8ths..."}}

  \bar "||" \mark \default
  d8\mp\< (fis d fis d fis d fis)
    \override Hairpin.circled-tip = ##t
  d8\f\> (fis d fis d fis d fis
  d8\!) r2.. R1
  R1 R1
  R1 R1

  d8\< (fis d fis d fis d fis)
  d8\f\> (fis d fis d fis d fis
  d8\!) r2.. R1
  R1 R1
  R1 R1

  d8\< (fis d fis d fis d fis)
  d8\f\> (a' d, a' d, a' d, a'
  d,8\!) r2.. R1
  R1 R1
  R1 R1
  R1\fermata

  \bar "||" \mark \default
    \override Score.TimeSignature.style = #'topsy-turvy
    \override Score.TimeSignature.extra-offset = #'(0 . -1.5)

  \time 24/4
  \hide Stem
  a'4-.^\markup{\italic\column{
    "franetic 16th notes, alternating among specified pitches."
    "no common pulse, unmetered."
    "each swell lasts ~8 seconds."
    "swells should be together with partner."}}\< cis-. d-. s4
  s2\mp\> s2 s1
  s2 s2\! r1 s1
  
  \break
  b,4-.\< cis-. d-. s4
  s2\mp\> s2 s1
  s2 s2\! r1 s1
\break
  b'4-.\< cis-. e-. s4
  s2\mf\> s2 s1
  s2 s2\! r1 s1
  \break
  b,4-.\< cis-. fis-. s4
  s2\f\> s2 s1
  s2 s2\! r1 s1

\undo     \override Score.TimeSignature.style = #'topsy-turvy
\undo    \override Score.TimeSignature.extra-offset = #'(0 . -1.5)
  \numericTimeSignature


  \time 4/4
  \bar "||" \mark \default

  \undo \hide Stem
  r2. b4\f ( ~ b2 a2 g4)
  r2. R1 R1


  r2.
  \override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { b,,64(\< [d b' fis') fis (b, d, b) b (d b' fis') fis (b, d, b) b (d b' fis') fis (b, d, b)] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { b64\ff(\> [d b' fis') fis (b, d, b) b (d b' fis') fis (b, d, b) b (d b' fis') fis (b, d, b)\! ] }

  r2
  R1 R1
  r2. <d' d'>4:32\< ~
  <d d'>1:32
  ~<d d'>4^\markup{\italic"(let ring)"}\ff\upbow r2.
  

  \bar "|."
}

violinTwo = \new Voice \relative c'' {
    \override Hairpin.circled-tip = ##t
  
  \bar "||" \mark \default


  R1 R1
  e2.\< fis4\mp\> ~ fis2 r2\!
  
  e2._\markup{\italic"sempre"} fis4 ~ fis2 r2

  e2. fis4 ~ fis2 r2
  
  e2 fis2 g2 r2

  e2\< fis2 g2\mf\> r2\!

  e4\< fis2 g4\f\> fis4 e r2\!

  <e g,>1\f ~ <e g,>4\upbow r2.
  <e g,>1:32 ~ <e g,>4\upbow r2.




  \bar "||" \mark \default
  R1 R1
  b8\< (d b d b d b d)
  b\f\> (d b d b d b d
  b8\!) r2.. R1
  R1 R1

  R1 R1
  b8\< (d b d b d b d)
  b\f\> (d b d b d b d
  b8\!) r2.. R1
  R1 R1

  R1 R1
  b8\< (d b d b d b d)
  b8\f\> (fis' b, fis' b, fis' b, fis'
  b,8\!) r2.. R1
  R1 R1
  R1\fermata
  \bar "||" \mark \default
  \hide Stem

  d4-.^\markup{\italic "franetic 16th notes, see above"}\< fis-. a-. s4
  s2\mp\> s2 s1
  s2 s2\! r1 s1

  \break
  e,4-.\< g-. a-. s4
  s2\mp\> s2 s1
  s2 s2\! r1 s1
  
  d4\< fis-. a-. s4
  s2\mf\> s2 s1
  s2 s2\! r1 s1

  \break
  e,4-.\< g-. a-. s4
  s2\f\> s2 s1
  s2 s2\! r1 s1
  
  \bar "||" \mark \default
  \undo \hide Stem

  R1 R1 r2 \times 2/3{g8\< b g} \times 2/3{b g b}
  \times 2/3{g8 b g} \times 2/3{b g b}
  \times 2/3{g8\f\> b g} \times 2/3{b g b}
  \times 2/3{g8 b g} \times 2/3{b g b}
  r2\!
  R1
  r4
  \xNotesOn
  b2.\<^\markup{\italic\column{"pont." "more noise than pitch"}} ~ b2 b2\> ~ b2
  r2\!
  \xNotesOff

  r4 <b fis'>2.:32\< ~ <b fis'>1:
  ~<b fis'>4\ff\upbow (r2.)





  \bar "|."
}

viola = \new Voice \relative c'' {
  \override Hairpin.circled-tip = ##t
  \bar "||" \mark \default

  \clef alto



  R1 R1 R1 R1
  b1\< a2\mp\> r2\!
  b1_\markup{\italic"sempre"} a2 r2
  b1 a2 r2
  b1\< a2\mf\> r2\!
  b1\< a2\f\> r2\!
  <b b,>1\f ~<b b,>4\upbow r2.
  <b b,>1:32 ~<b b,>4\upbow r2.

  \bar "||" \mark \default


  R1 R1 R1 R1
  g8\< (b g b g b g b )
  g\f\> (b g b g b g b 
  g\!) r2.. R1

  R1 R1 R1 R1
  g8\< (b g b g b g b )
  g\f\> (b g b g b g b 
  g\!) r2.. R1

  R1 R1 R1 R1
  g8\< (b g b g b g b )
  g\f\> (e' g, e' g, e' g, e'
  g,\!) r2.. R1
  R1\fermata
  \bar "||" \mark \default
  s1 r1 s1

  \hide Stem
  d4-.^\markup{\italic "franetic 16th notes, see above"}\< fis-. g-. s4
  s2\mp\> s2 s1
  s2 s2\! r1 s1

  fis,4-.\< a-. b-.  s4
  s2\mp\> s2 s1
  s2 s2\! r1 s1
  
  d4-.\< fis-. g-. s4
  s2\mf\> s2 s1
  s2 s2\! r1 s1

  fis,4-.\< g-. a-.  s4
  s2 s2\f\> s1

  \bar "||" \mark \default
  R1\! R1 R1
  

  \undo   \hide Stem


  \xNotesOn
  r2 r8 <a a'>\f^\markup{\italic"pizz"} r <a a'> r
  <a a'> r <a a'> r <a a'> r <a a'> r <a a'> r <a a'> r <a a'> r <a a'>
  r <a a'> r2.
  \xNotesOff

  \override Hairpin.circled-tip = ##f
  
  r2
  <a a'>:32\mp ~ <a a'>1: ~ <a g'>:\< ~ <a g'>: ~
  <a g'>4\ff\upbow (r2.)



  \bar "|."
}

cello = \new Voice \relative c' {
  \override Hairpin.circled-tip = ##t

  \bar "||" \mark \default

  \clef bass


  R1 R1 R1 R1 R1 R1

  g1\< ~ g2\mp\> r2\!
  g2_\markup{\italic"sempre"} ~ g8 fis4. ~fis2 r2
  
  g2\< ~ g8 fis4.\mf\> ~fis2 r2\!
  g2\< ~ g8 fis4.\f\> ~fis2 r2\!
  <e a,>1\f ~ <e a,>4\upbow r2.
  <e a,>1:32 ~ <e a,>4\upbow r2.


  \bar "||" \mark \default

  R1 R1 R1 R1 R1 R1
  d'8\< (fis d fis d fis d fis)
  d8\f\> (fis d fis d fis d fis
  d8\!) r2.. R1

  R1 R1 R1 R1
  d8\< (g d g d g d g)
  d8\f\> (fis d fis d fis d fis
  d8\!) r2.. R1

  R1 R1 R1 R1
  d8\< (fis d fis d fis d fis)
  d8\f\> (fis d fis d fis d fis\!)
  R1\fermata

\pageBreak
  \bar "||" \mark \default
   s1 r1 s1

   \hide Stem
  g,4-.^\markup{\italic "franetic 16th notes, see above"}\< b-. d-. s4
  s2\mp\> s2 s1
  s2 s2\! r1 s1

  d,,4-.\< d'-. s4 s4
  s2\mp\> s2 s1
  s2 s2\! r1 s1

  g4-.\< b-. d-. s4
  s2\mf\> s2 s1
  s2 s2\! r1 s1
 
  <<{
    \override Hairpin.circled-tip = ##t
       \hide Stem
    d,,4\<-. d'-. s4 s4
      \override Hairpin.circled-tip = ##f
  s2 s2\f\>_\markup{\italic"transition to tremolo..."} s1


\pageBreak
  \bar "||" \mark \default

  \undo \hide Stem  
  \repeat tremolo 8 { d,16\mp d'^( } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 

     \repeat tremolo 8 { d,16\< d' } 
  \repeat tremolo 8 { d,16 d' } 
  \repeat tremolo 8 { d,16 d' } 
<d, d'>4\ff) \upbow ~
    \hideNotes
<d d'>
    }\\{
      s1 s s s s s s s s s s
      s1 s s 
      s4 d'2.\rest
      }>>



  \bar "|."
}

phone = \new Voice \relative c' {
  \clef percussion  

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
    \new Staff \with {
      instrumentName = "Phone 1" 
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
    }
    << \global \phone >>

    % \new Staff \with {
    %   instrumentName = "Phone 2" 
    %   fontSize = #-3
    %   \override StaffSymbol.staff-space = #(magstep -3)
    % }
    % << \global \phone >>
    % \new Staff \with {
    %   instrumentName = "Phone 3" 
    %   fontSize = #-3
    %   \override StaffSymbol.staff-space = #(magstep -3)
    % }
    % << \global \phone >>
    % \new Staff \with {
    %   instrumentName = "Phone 4" 
    %   fontSize = #-3
    %   \override StaffSymbol.staff-space = #(magstep -3)
    % }
    % << \global \phone >>
  >>
  \layout { }
  \midi { }
}