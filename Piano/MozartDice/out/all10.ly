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

%DICE: 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
%TABLE DE MUSIQUE: 98, 142, 42, 156, 75, 129, 62, 123, 65, 77, 19, 82, 137, 38, 149, 8
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        c''8 g' e'' |
        c''8 g' e'' |
        b'16 c'' d'' b' a' g' |
        c''16 g' e'' c'' g''8 |
        <d'' fis''>8 <d'' fis''> <d'' fis''> |
        a''16 g'' fis'' g'' d''8 |
        e''16 c'' b' g' a' fis' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        d''16 a' d''8 fis'' |
        g''16 b'' g''8 d''8 |
        e''16 c'' e''8 g'' |
        d''16[ b' g'8] g'' |
        c''8 g' e'' |
        c''8 g' e'' |
        f''16 d'' a'8  b' |
        c''4 r8 |
      }
    }

    \new Staff = "LH acoustic grand" {
      \clef treble
      \clef bass
      \time 3/8
      \key c \major
      \repeat volta 2 {
        <c e>16 g <c e> g <c e> g |
        <c e>4 r8 |
        g,4 r8 |
        <e g>4 r8 |
        c8 c c |
        <b, d>8 <b, d> <b, g> |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        <d fis>4 r8 |
        <b, d>4 <b, g>8  |
        <c g>4 <c e>8 |
        <b, g>4 <b, d>8 |
        <c e>16 g <c e> g <c e> g |
        <c e>16 g <c e> g <c e> g |
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

