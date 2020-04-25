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

%DICE: 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
%TABLE DE MUSIQUE: 96, 22, 141, 41, 105, 122, 11, 30, 70, 121, 26, 9, 112, 49, 109, 14
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        e''8 c'' g' |
        e''8 c'' g' |
        d''16 e'' f'' d'' c'' b' |
        c''16 b' c'' e'' g'8 |
        fis''8 a''16 fis'' d'' fis'' |
        g''16 fis'' g'' b'' d''8 |
        e''16 c'' b' a' g' fis' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        fis''8 a''16 fis'' d'' fis'' |
        g''8 b''16 g'' d''8 |
        <c''e''>8 <c'' e''> <c'' e''> |
        <c'' e''>8 <b' d''> r |
        e''8 c'' g' |
        e''8( c'' g') |
        d''16 f'' d'' f'' b' d'' |
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
        <b, g>4 g,8 |
        <c e>4 r8 |
        c4 r8 |
        <b, d>8 <b, d> <b, g> |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        d4 c8 |
        <b, g>4 r8 |
        c16 e g e c' c |
        g4 g,8 |
        <c e>16 g <c e> g <c e> g |
        <c e>16 g <c e> g <c e> g |
        <f a>4 <g d'>8 |
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

