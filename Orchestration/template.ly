\score {
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"V. I" }
\relative c'' {
\time 2/4
\tempo "Presto, ma non troppo"
\key f \major

}

        \new Staff = "Staff_violinII" \with { instrumentName = #"V II" }
\relative c' {
\key f \major
}
      >>

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla." }
\relative c' {
\clef alto
\key f \major

}

      \new Staff = "Staff_cello" \with { instrumentName = #"V.C." }
\relative c {
\clef bass
\key f \major

}

      \new Staff = "Staff_bass" \with { instrumentName = #"D.B." }
\relative c, {
\clef "bass_8"
\key f \major

}
    >>
  \layout { }
}

