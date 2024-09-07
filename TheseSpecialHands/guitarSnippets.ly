% #(set-default-paper-size "ansi a" 'landscape)
#(set-default-paper-size '(cons (* 8.5 in) (* 11 in)))

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
  ragged-last-bottom = ##t
  ragged-last = ##t
}

\score {
  \new Staff \relative c' {
    \key d \major
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
\set Staff.forceClef = ##t
      \clef treble
      \time 7/1

      d1\mp\< d2 \times 2/3{d2 d4} d2 d,2\f d'8 d d d8~d2 d,1

      \times 2/3{d'4 d, d'~} d4 d
      d,8 d'8~d4~d8 d,8 d'4
      
\break
\time 4/4
s1
\break   
\time 4/4
s1
\break

      \time 6/4
      d4 b2 d r4
      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 7/4
      d4 b8 a8 \times 2/3{b4 a2} d r4

      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 8/4
      \times 2/3{d,8 fis d fis d fis} d4 fis2 d2 r4

      \stopStaff
      \time 4/4
      s1
  \break
      \startStaff
      \time 7/4
      d'4 e d e fis2 r4

      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 15/8
      d4 g4. fis8 e4 fis8 d2 r4


      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 8/4
      d4 \times 2/3{d, d' d,}~d4 a'4 d2 r4

\break
  \time 5/4
      <d, a' d g b e>
      \glissando <d' a' d g b e>
      \glissando <e, b' e a cis fis>
      \glissando <a e' a d fis b>
      r4

      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 4/4
      <cis gis' cis fis ais dis>4
      \glissando <e, b' e a cis fis>
      \glissando <d' a' d g b e>
    
      r4      
      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 3/4
      <cis gis' cis fis ais dis>4
      \glissando <d, a' d g b e>
      r4


\break
  \time 4/4
    d'''8\mp fis d fis d fis d fis d\< fis d fis d fis d fis
    d g d g d g d g d g d g d g d g
    d\f a' d, a' d, a' d, a' d, a' d, a' d, a' d, a' 
  \break
    \times 2/3{d,,\3\p\< e\1 fis\2} \times 2/3{d e fis} \times 2/3{d e fis} \times 2/3{d e fis}
    \times 2/3{d\mf e g} \times 2/3{d e g} \times 2/3{d\> e g} \times 2/3{d e g}
    \times 2/3{d\mp e fis} \times 2/3{d e fis} \times 2/3{d\< e fis} \times 2/3{d e fis} 
    \times 2/3{d\mf e e} \times 2/3{d e e}  \times 2/3{d e e} \times 2/3{d e e} 


\break
  \time 21/2
  <d,\5 d\4>1:32\< ~ <d d>:32\> s2\! s1
  <d d>1:32\< ~ <d d>:32\> s2\! s1 
  <d d>1:32\< ~ <d d>:32\> s2\! s1


\pageBreak

      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 9/4
      







      \clef bass
      a,2(\mp \glissando g \glissando bes \glissando a) r4
      \break

      \time 120/4
      \override Hairpin.circled-tip = ##t
     f'1\< ~ f\f\> r4\! s1 r4 f1\< ~ f\f\> r4\!  s1 r4 f1\< ~ f\f\> r4\! s1 s1 
     \break



      % \stopStaff
      % \time 4/4
      % s1
      % \startStaff   

  }
  \layout {
    ragged-right = ##f
    \context {
      \Staff
      \omit TimeSignature
    }
  }
}

