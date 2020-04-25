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

%DICE: 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
%TABLE DE MUSIQUE: 40, 17, 113, 85, 161, 2, 159, 100, 90, 176, 7, 34, 67, 160, 52, 170
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        c''16 b' c'' e'' g' c'' |
        c''16 g' c'' e'' g' c'' |
        f''8 d'' b' |
        c''8  e'' g' |
        <fis' d''>8 <fis' d''> <fis' d''> |
        a'8 fis'16 g' b' g'' |
        e''16 g'' d'' c'' b' a' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        fis''16 a'' d''' a'' fis'' a'' |
        a''16 g'' b'' g'' d'' g'' |
        e''16 c'' e'' g'' c''' g'' |
        e''16 c'' d'' b' g'8 |
        c''16 b' c'' e'' g' c'' |
        c''16 b' c'' e'' g' c'' |
        d''16( cis'') d'' f'' g' b' |
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
        <e g>4 r8 |
        <g b>4 r8 |
        <e g>4 r8 |
        c8 c c |
        <b, g>4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        <c a>4 <c a>8 |
        <b, d>4 <b, d>8  |
        <c g>4 r8 |
        g4 r8 |
        <c e>4 <e g>8 |
        <c e>4 <c e>8 |
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

