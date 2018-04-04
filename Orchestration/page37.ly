\score {
  \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"V. I" }
\relative c'' {
\time 2/4
\tempo "Presto, ma non troppo"
\key d \major
\partial 8 a8\f a4 (fis8-.) d' d4 (cis8-.) e-. e8.( fis16 g8-.) g-. g4 (fis8)
}

        \new Staff = "Staff_violinII" \with { instrumentName = #"V II" }
\relative c' {
\key d \major
s8
d16\f fis d fis d fis d fis
cis fis cis fis cis fis cis fis
cis fis cis fis cis fis cis fis
d fis d fis d fis d fis
}
      >>

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla." }
\relative c' {
\clef alto
\key d \major
s8 a8^"pizz."\f d fis d
a e' g e
a, e' g e
a, d fis d
}

      \new Staff = "Staff_cello" \with { instrumentName = #"V.C." }
\relative c {
\clef bass
\key d \major
r8 d2\f e cis d2

}

      \new Staff = "Staff_bass" \with { instrumentName = #"D.B." }
\relative c, {
\clef "bass_8"
\key d \major
r8 d2\f e cis d2
}
    >>
\header {
      subtitle = "11.4"
    }
  \layout { }
}
