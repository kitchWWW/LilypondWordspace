\layout {
  \context {
    \PianoStaff
    \consists "Span_stem_engraver"
  }
}

\new PianoStaff <<
  \new Staff = "up" {
    \voiceOne
    \clef percussion
    % Make space for fingering in the cross-staff voice
    \once\override DynamicLineSpanner.staff-padding = #4
    s1
    % e''2\p\< d''\>
    % c''1\!
  }
  \new Staff = "down" <<
    \relative c {
    } \\ \relative c {
      b''16 c d e f
      \change Staff = "up"
      f
      \change Staff = "down"
      f d b
    }
  >>
>>