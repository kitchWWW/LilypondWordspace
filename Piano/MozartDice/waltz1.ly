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

%DICE: 6, 2, 6, 6, 8, 11, 9, 6, 7, 4, 10, 3, 7, 8, 7, 9
%TABLE DE MUSIQUE: 148, 22, 163, 45, 99, 47, 169, 107, 138, 139, 19, 56, 101, 168, 23, 111
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        c'''16 b'' c''' g'' e'' c'' |
        e''8 c'' g' |
        g''16 fis'' g'' d'' b' g' |
        c''16 b' c'' g' e' c' |
        fis''8 a'' d'' |
        g''8 g''16 d'' b''8 |
        e''16 g'' d'' g'' a' fis'' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        <a' d'' fis''>8 fis''4\trill |
        g''16 b'' g'' b'' d''8  |
        e''16 c'' e''8 g'' |
        d''16 b' g'8 r8 |
        e''16 d'' e'' g'' c''' g'' |
        g''8 f''16 e'' d'' c'' |
        f''16 e'' d'' e'' f'' g'' |
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
        <b, d>4 r8 |
        <e g>4 r8 |
        <c a>4 <c a>8 |
        <b, d>4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        d,16 d cis d c d |
        b,4 r8 |
        <c g>4 <c e>8 |
        <g, g>4 g8 |
        <c g>4 <c e>8 |
        <c e>4 <e g>8 |
        f16 e d e f g |
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

