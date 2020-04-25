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

%DICE: 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12
%TABLE DE MUSIQUE: 54, 130, 10, 103, 28, 37, 106, 5, 35, 20, 108, 92, 12, 124, 44, 131
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        <e' c''>8 <e' c''> <e' c''> |
        <e' c''>8 <e' c''> <e' c''> |
        b'16 a' b' c'' d'' b' |
        c''16 e'' c'' g' e'8 |
        fis''16 d'' a' a'' fis'' d'' |
        g''16 b'' g'' d'' b'8 |
        a'8 d''16 c'' b' a' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        a'8 d'' fis'' |
        g''8 b''16 d''' d''8 |
        e''8( g'' c''') |
        <b'd''>8 g''16 b'' d''8 |
        <e' c''>8 <e' c''> <e' c''> |
        <e' c''>8 <e' c''> <e' c''> |
        a'8 f''16 d'' a' b' |
        c''4 r8 |
      }
    }

    \new Staff = "LH acoustic grand" {
      \clef treble
      \clef bass
      \time 3/8
      \key c \major
      \repeat volta 2 {
        c8 c c |
        c8 c c |
        g4 r8 |
        <e g>4 r8 |
        <c a>4 r8 |
        <b, d>4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        <d fis>4 <c a>8 |
        b,4 r8 |
        <c g>4 <c e>8 |
        <g, g>4 g8 |
        c8 c c |
        c8 c c |
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

