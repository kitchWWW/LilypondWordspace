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

%DICE: 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
%TABLE DE MUSIQUE: 152, 60, 171, 53, 99, 133, 21, 127, 16, 155, 57, 175, 43, 168, 89, 172
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        g''8 f''16 e'' d'' c'' |
        g''8 f''16 e'' d'' c'' |
        b'16 c'' d'' e'' f'' d'' |
        <c'' e''>8 <c'' e''>16 <d'' f''> <e'' g''>8 |
        fis''8 a'' d'' |
        d''8 g''16 d'' b' d'' |
        c''16 e'' g'' d'' a' fis'' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        a''8( fis'' d'') |
        g''16 b'' g'' d'' b' g' |
        e''8 c'' g' |
        e''16 c'' b' d'' g''8 |
        g''8 f''16 e'' d'' c'' |
        g''8 f''16 e'' d'' c'' |
        f''16 e'' d''8 g'' |
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
        <g, g>4 <b, g>8 |
        c4 r8 |
        <c a>4 <c a>8 |
        <b, g>4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        <d fis>4 <c fis>8 |
        <b, d>4 r8 |
        <c e>16 g <c e> g <c e> g |
        g8 g, r |
        <c e>4 r8 |
        <c e>4 <e g>8 |
        f16 e d8 g |
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

