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

%DICE: 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11
%TABLE DE MUSIQUE: 3, 87, 165, 61, 135, 47, 147, 33, 102, 4, 31, 164, 144, 59, 173, 78
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        g''8 c'' e'' |
        g''8 c'' e'' |
        d''8( b' g') |
        c''8 e''16 c'' g''8 |
        fis''8 fis''16 d'' a''8 |
        g''8 g''16 d'' b''8 |
        e''16 c''' b'' g'' a'' fis'' |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        fis''16[ d'' a'8] fis''8  |
        g''8 d''4\trill |
        e''16[ c'' g'8] e''8 |
        d''8 g'4 |
        g''8 c'' e'' |
        g''8 c'' e'' |
        f''16[ a''] a'8 b'16[ d''] |
        c''8 c' r |
      }
    }

    \new Staff = "LH acoustic grand" {
      \clef treble
      \clef bass
      \time 3/8
      \key c \major
      \repeat volta 2 {
        <c e>4 r8 |
        <c e>4 <c g>8 |
        b,4 r8 |
        <e g>4 r8 |
        << { d8 d d } \\ { c8 c c } >>  |
        <b, d>4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        <c a>4 <c a>8 |
        g,16 b, g8 b, |
        <c g>4 <c g>8 |
        g16 fis g d b, g, |
        <c e>16 g <c e> g <c e> g |
        <c e>16 g <c e> g <c e> g |
        f4 g8 |
        c4 c,8 |
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

