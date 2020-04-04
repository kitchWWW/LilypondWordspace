\version "2.14.2"
\pointAndClickOff

\header {
  dedication = "Musikalisches Würfelspiel K.V. Anhang 294d (516f), Wien 1778"
  title = "Waltz"
}

\paper {
  #(set-paper-size "a4")
  top-margin = 2\cm
}

%DICE: 8, 7, 11, 5, 8, 7, 12, 9, 6, 4, 9, 7, 4, 7, 3, 10
%TABLE DE MUSIQUE: 152, 157, 165, 85, 99, 68, 106, 94, 25, 139, 48, 29, 73, 162, 116, 8
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        g''8 f''16 e'' d'' c'' |
        e''16 d'' e'' g'' c''' g'' |
        d''8( b' g') |
        c''8  e'' g' |
        fis''8 a'' d'' |
        g''8 b''16 g'' d'' g'' |
        a'8 d''16 c'' b' a' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        d'16 fis' a' d'' fis'' a'' |
        g''16 b'' g'' b'' d''8  |
        e''8 c''16 e'' g'' c''' |
        b'16 d'' g'' d'' b'8 |
        g''8 e'' c'' |
        e''16 d'' e'' g'' c''' g'' |
        d''16 f'' a'' f'' d'' b' |
        c''4 r8 |
      }
    }

    \new Staff = "LH acoustic grand" {
      \clef treble
      \clef bass
      \time 3/8
      \key c \major
      \repeat volta 2 {
        <c e>4 r8 |
        c4 r8 |
        b,4 r8 |
        <e g>4 r8 |
        <c a>4 <c a>8 |
        b,4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        d4 c8 |
        b,4 r8 |
        <c g>4 <c e>8 |
        g4 g,8 |
        <c e>16 g <c e> g <c e> g |
        <c g>4 <c e>8 |
        f4 g8 |
        c8 g, c, |
      }
    }
  >>
}

\score {
  \DiceWaltz
  \layout {#(layout-set-staff-size 18)}
}

\include "articulate.ly"
\score {
  \unfoldRepeats \articulate <<
    \DiceWaltz
  >>
  \midi {}
}

