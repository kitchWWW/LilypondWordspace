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

%DICE: 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3, 4
%TABLE DE MUSIQUE: 32, 95, 128, 13, 146, 55, 134, 24, 117, 139, 126, 132, 174, 58, 116, 79
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        g'8 c'' e'' |
        g''8 e'' c'' |
        b'8 d'' g'' |
        c''8( g' e') |
        <fis' d''>8 <d'' fis''> <fis'' a''> |
        g''8 b'' d'' |
        a'16 e'' <b' d''> <a' c''> <g' b'> <fis' a'> |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        d''16 a' d'' fis'' a'' fis'' |
        g''16 b'' g'' b'' d''8  |
        c''16 g' c'' e'' g'' <c'' e''> |
        <c'' e''>8 <b' d''>16 <g' b'> g'8 |
        g'8 c'' e'' |
        g''8 e'' c'' |
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
        <c e>4 r8 |
        g,4 r8 |
        <e g>4 r8 |
        c8 c c |
        <b, d>4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        <d fis>4 r8 |
        b,4 r8 |
        e4 e16 c |
        g8 g, r |
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

