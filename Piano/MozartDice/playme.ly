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

%DICE: 4, 11, 6, 10, 3, 6, 8, 4, 6, 7, 3, 7, 3, 9, 6, 8
%TABLE DE MUSIQUE: 69, 87, 163, 156, 146, 97, 21, 24, 25, 71, 126, 29, 174, 115, 1, 172
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        g''8( e'' c'') |
        g''8 c'' e'' |
        g''16 fis'' g'' d'' b' g' |
        c''16 g' e'' c'' g''8 |
        <fis' d''>8 <d'' fis''> <fis'' a''> |
        g''16 fis'' g'' d'' b' g' |
        c''16 e'' g'' d'' a' fis'' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        d'16 fis' a' d'' fis'' a'' |
        g''16 b'' d''' b'' g''8 |
        c''16 g' c'' e'' g'' <c'' e''> |
        b'16 d'' g'' d'' b'8 |
        g'8 c'' e'' |
        c''16 g' e'' c'' g'' e'' |
        f''8 d'' g'' |
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
        <c e>4 <c g>8 |
        <b, d>4 r8 |
        <e g>4 r8 |
        c8 c c |
        <b, d>4 <b, g>8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        d4 c8 |
        <b, d>4 <b, d>8  |
        e4 e16 c |
        g4 g,8 |
        <c e>16 g <c e> g <c e> g |
        <c e>4 r8 |
        f8 d g |
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

