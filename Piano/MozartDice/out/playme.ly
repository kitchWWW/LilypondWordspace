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

%DICE: 10, 3, 8, 8, 6, 8, 4, 9, 4, 7, 10, 2, 8, 10, 7, 10
%TABLE DE MUSIQUE: 98, 6, 171, 53, 80, 133, 110, 94, 66, 71, 19, 9, 43, 38, 23, 8
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        c''8 g' e'' |
        g'8 c'' e'' |
        b'16 c'' d'' e'' f'' d'' |
        <c'' e''>8 <c'' e''>16 <d'' f''> <e'' g''>8 |
        d''8 a'\turn fis'' |
        d''8 g''16 d'' b' d'' |
        <b' d''>16( <a' c''>) <a' c''>( <g' b'>) <g' b'>( <fis' a'>) |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        fis''8  a'' fis'' |
        g''16 b'' d''' b'' g''8 |
        e''16 c'' e''8 g'' |
        <c'' e''>8 <b' d''> r |
        g''8 f''16 e'' d'' c'' |
        c''8 g' e'' |
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
        <c e>16 g <c e> g <c e> g |
        <c e>4 r8 |
        <g, g>4 <b, g>8 |
        c4 r8 |
        c4 r8 |
        <b, g>4 r8 |
        c8 d d, |
      }
      \alternative {
        { g,8 g16 f! e d } { g,8 b16 g fis e }
      }

      \repeat volta 2 {
        << { a8 fis d } \\ { d8 d c } >> |
        <b, d>4 <b, d>8  |
        <c g>4 <c e>8 |
        g4 g,8 |
        <c e>4 r8 |
        <c e>16 g <c e> g <c e> g |
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

