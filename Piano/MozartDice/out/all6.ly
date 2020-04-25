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

%DICE: 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
%TABLE DE MUSIQUE: 148, 74, 163, 45, 80, 97, 36, 107, 25, 143, 64, 125, 76, 136, 1, 93
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        c'''16 b'' c''' g'' e'' c'' |
        c'''16 b'' c''' g'' e'' c'' |
        g''16 fis'' g'' d'' b' g' |
        c''16 b' c'' g' e' c' |
        d''8 a'\turn fis'' |
        g''16 fis'' g'' d'' b' g' |
        a'16 e'' d'' g'' fis'' a'' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        d'16 fis' a' d'' fis'' a'' |
        g''8 d''16 b' g'8 |
        e''16 g'' c''' g'' e'' c'' |
        g''16 e'' d'' b' g'8 |
        c'''16 b'' c''' g'' e'' c'' |
        c'''16 b'' c''' g'' e'' c'' |
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
        <c e>4 r8 |
        <b, d>4 r8 |
        <e g>4 r8 |
        c4 r8 |
        <b, d>4 <b, g>8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        d4 c8 |
        <b, d>4 <b, d>8  |
        <c g>4 <c g>8 |
        g8 g, r |
        <c e>4 <c g>8 |
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

