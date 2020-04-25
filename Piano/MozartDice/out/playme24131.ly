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

%DICE: 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
%TABLE DE MUSIQUE: 32, 6, 128, 63, 146, 46, 134, 81, 117, 39, 126, 56, 174, 18, 116, 83
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        g'8 c'' e'' |
        g'8 c'' e'' |
        b'8 d'' g'' |
        e''16 c'' b' c'' g'8 |
        <fis' d''>8 <d'' fis''> <fis'' a''> |
        g''8 b''16 g'' d'' b' |
        a'16 e'' <b' d''> <a' c''> <g' b'> <fis' a'> |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        d''16 a' d'' fis'' a'' fis'' |
        g''8 g' g' |
        c''16 g' c'' e'' g'' <c'' e''> |
        d''16 b' g'8 r8 |
        g'8 c'' e'' |
        g'8( c'' e'') |
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
        c4 r8 |
        c8 c c |
        <b, d>4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        <d fis>4 r8 |
        b,16 d g d b, g, |
        e4 e16 c |
        <g, g>4 g8 |
        <c e>16 g <c e> g <c e> g |
        <c e>4 <c g>8 |
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

