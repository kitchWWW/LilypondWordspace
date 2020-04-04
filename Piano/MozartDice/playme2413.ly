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

%DICE: 12, 4, 2, 5, 4, 3, 12, 2, 4, 3, 5, 2, 3, 4, 5, 6
%TABLE DE MUSIQUE: 54, 95, 141, 85, 153, 46, 106, 30, 66, 39, 7, 9, 174, 58, 52, 93
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        <e' c''>8 <e' c''> <e' c''> |
        g''8 e'' c'' |
        d''16 e'' f'' d'' c'' b' |
        c''8  e'' g' |
        d''16 a' fis'' d'' a'' fis'' |
        g''8 b''16 g'' d'' b' |
        a'8 d''16 c'' b' a' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        fis''8  a'' fis'' |
        g''8 g' g' |
        e''16 c'' e'' g'' c''' g'' |
        <c'' e''>8 <b' d''> r |
        g'8 c'' e'' |
        g''8 e'' c'' |
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
        c8 c c |
        <c e>4 r8 |
        <b, g>4 g,8 |
        <e g>4 r8 |
        c4 r8 |
        <b, d>4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        << { a8 fis d } \\ { d8 d c } >> |
        b,16 d g d b, g, |
        <c g>4 r8 |
        g4 g,8 |
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

