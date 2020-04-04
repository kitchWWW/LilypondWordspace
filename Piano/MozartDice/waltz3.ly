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

%DICE: 5, 12, 4, 10, 9, 6, 9, 7, 7, 7, 5, 6, 5, 8, 9, 4
%TABLE DE MUSIQUE: 40, 130, 158, 156, 140, 97, 169, 91, 138, 71, 7, 125, 67, 168, 72, 79
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        c''16 b' c'' e'' g' c'' |
        <e' c''>8 <e' c''> <e' c''> |
        b'8 d''16 b' a' g' |
        c''16 g' e'' c'' g''8 |
        a'8 a'16 d'' fis''8 |
        g''16 fis'' g'' d'' b' g' |
        e''16 g'' d'' g'' a' fis'' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        <a' d'' fis''>8 fis''4\trill |
        g''16 b'' d''' b'' g''8 |
        e''16 c'' e'' g'' c''' g'' |
        g''16 e'' d'' b' g'8 |
        c''16 b' c'' e'' g' c'' |
        g''8 f''16 e'' d'' c'' |
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
        c8 c c |
        g,4 r8 |
        <e g>4 r8 |
        <c fis>8 <c fis> <c a> |
        <b, d>4 <b, g>8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        d,16 d cis d c d |
        <b, d>4 <b, d>8  |
        <c g>4 r8 |
        g8 g, r |
        <c e>4 <e g>8 |
        <c e>4 <e g>8 |
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

