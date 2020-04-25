\version "2.14.2"
\pointAndClickOff

\header {
  dedication = "Musikalisches Würfelspiel K.V. Anhang 294d (516f), Wien 1778"
  title = "Contredanse"
}

\paper {
  #(set-paper-size "a4")
  top-margin = 2\cm
}

%DICE: 10, 10, 7, 9, 5, 5, 10, 6, 2, 9, 9, 4, 7, 9, 5, 7
%TABLE DE MUSIQUE: 99, 68, 112, 69, 111, 39, 143, 130, 155, 124, 26, 126, 128, 103, 17, 74
DiceContredanse = {
  \new PianoStaff <<
    \new Staff = "RH acoustic grand" {
      \clef treble
      \time 2/4
      \key c \major
      {\tempo 8=150}
      \repeat volta 2 {
        g'8 c''4 e''8  |
        g''8 g''16 e'' c''8 c''16 e''  |
        f''8 [ d'' b' g' ]   |
        c''8 g'16 e' c'8 c'  |
        d'8 fis'16 a' d''8 fis''  |
        g''16 fis'' e'' d'' c'' b' a' g'  |
        e''8 [ c'' a' fis' ]  |
      }
      \alternative {
        {<g' b' g''>4 r}{<g' b' g''>4 r} 
      }

      \repeat volta 2 {
        a''4 g''16 fis'' e'' d''  |
        b'8 [ d'' g'' b'' ]  |
        e''8 [c'' g'' e'']  |
        b'8 d'' g'4  |
        g'8 c''4 e''8  |
        g''16 c''' g'' f'' e'' c'' e'' g''  |
        d''16 e'' f'' e'' f'' d'' c'' b'  |
        c''4 c'  |
      }
    }

    \new Staff = "LH acoustic grand" {
      \clef treble
      \clef bass
      \time 2/4
      \key c \major
      \repeat volta 2 {
        c16 g e g c g e g  |
        c4 r  |
        g4 g,  |
        c4 r  |
        d4 d  |
        <b, g>4 r  |
        c4 c  |
      }
      \alternative {
        {g,4 g16 f e d}{g,4 g,16 a, b, cis} 
      }

      \repeat volta 2 {
        d16 fis a fis d8 c  |
        g4 g,  |
        c4 c  |
        g,4 g16 f e d  |
        c16 g e g c g e g  |
        c4 r  |
        g,4 g,  |
        c4 c,  |
      }
    }
  >>
}

\score {
  \DiceContredanse
  \layout {#(layout-set-staff-size 18)}
}

\include "articulate.ly"
\score {
  \unfoldRepeats \articulate <<
    \DiceContredanse	
  >>
  \midi {}
}

