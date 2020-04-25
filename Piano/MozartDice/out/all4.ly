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

%DICE: 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4
%TABLE DE MUSIQUE: 69, 95, 158, 13, 153, 55, 110, 24, 66, 139, 15, 132, 73, 58, 145, 79
DiceWaltz = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 3/8
      \key c \major
      {\tempo 8=150}
       \repeat volta 2 {
        g''8( e'' c'') |
        g''8 e'' c'' |
        b'8 d''16 b' a' g' |
        c''8( g' e') |
        d''16 a' fis'' d'' a'' fis'' |
        g''8 b'' d'' |
        <b' d''>16( <a' c''>) <a' c''>( <g' b'>) <g' b'>( <fis' a'>) |
      }
      \alternative {
        { <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }
      }

      \repeat volta 2 {
        fis''8  a'' fis'' |
        g''16 b'' g'' b'' d''8  |
        e''8 g''16 e'' c''8 |
        <c'' e''>8 <b' d''>16 <g' b'> g'8 |
        g''8 e'' c'' |
        g''8 e'' c'' |
        d''16 f'' a' d'' b' d'' |
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
        b,4 r8 |
        <c g>4 <c e>8 |
        g8 g, r |
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

