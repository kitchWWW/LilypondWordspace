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

%DICE: 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9
%TABLE DE MUSIQUE: 119, 84, 114, 50, 140, 86, 169, 94, 120, 88, 48, 166, 51, 115, 72, 111
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        e''16 c'' g'' e'' c''' g'' |
        c''16 g' e'' c'' g'' e'' |
        <b' d''>8 <b' d''> <b' d''> |
        c''8 e''16 c'' g'8 |
        a'8 a'16 d'' fis''8 |
        d''8 d''16 g'' b''8 |
        e''16 g'' d'' g'' a' fis'' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        d'''8 a''16 fis'' d'' a' |
        g''16 d'' g'' b'' g'' d'' |
        e''8 c''16 e'' g'' c''' |
        d''16 b'' g'' d'' b'8 |
        c''16 g' e'' c'' g'' e'' |
        c''16 g' e'' c'' g'' e'' |
        f''16 e'' d'' c'' b' d'' |
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
        g8 g g |
        <e g>4 r8 |
        <c fis>8 <c fis> <c a> |
        <b, g>4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        <d fis>4 <c fis>8 |
        <b, d>4 <b, d>8  |
        <c g>4 <c e>8 |
        <g b>4 r8 |
        <c e>4 r8 |
        <c e>4 r8 |
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

