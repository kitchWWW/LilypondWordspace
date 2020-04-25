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

%DICE: 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7
%TABLE DE MUSIQUE: 104, 157, 27, 167, 154, 68, 118, 91, 138, 71, 150, 29, 101, 162, 23, 151
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        e''16 d'' e'' g'' c''' g'' |
        e''16 d'' e'' g'' c''' g'' |
        f''16 e'' f'' d'' c'' b' |
        c''8 c''16 d'' e''8 |
        d''16 cis'' d'' fis'' a'' fis'' |
        g''8 b''16 g'' d'' g'' |
        e''16 a'' g'' b'' fis'' a'' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        <a' d'' fis''>8 fis''4\trill |
        g''16 b'' d''' b'' g''8 |
        <g' c'' e''>8 e''4\trill |
        b'16 d'' g'' d'' b'8 |
        e''16 d'' e'' g'' c''' g'' |
        e''16 d'' e'' g'' c''' g'' |
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
        c4 r8 |
        c4 r8 |
        <g b>4 r8 |
        <c e>4 r8 |
        c4 r8 |
        b,4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        d,16 d cis d c d |
        <b, d>4 <b, d>8  |
        c16 b, c d e fis |
        g4 g,8 |
        <c g>4 <c e>8 |
        <c g>4 <c e>8 |
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

