violinIMusic = \relative c'' {
\time 2/4
\key d \major
\partial 8 a8 a4 fis8 d' d4 cis8 e e8. fis16 g8 g g4 fis8
}

violinIIMusic = \relative c' {
\key d \major
s8
d16 fis d fis d fis d fis
cis fis cis fis cis fis cis fis
cis fis cis fis cis fis cis fis
d fis d fis d fis d fis
}

violaMusic = \relative c' {
\clef alto
\key d \major
s8 a8 d fis d
a e' g e
a, e' g e
a, d fis d
}

celloMusic = \relative c {
\clef bass
\key g \major
r8 d2 e cis d2

}

bassMusic = \relative c, {
\clef "bass_8"
\key d \major
r8 d2 e cis d2
}

\score {
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"V. I" }
        \violinIMusic

        \new Staff = "Staff_violinII" \with { instrumentName = #"V II" }
        \violinIIMusic
      >>

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla." }
      \violaMusic

      \new Staff = "Staff_cello" \with { instrumentName = #"V.C." }
      \celloMusic

      \new Staff = "Staff_bass" \with { instrumentName = #"D.B." }
      \bassMusic
    >>
  \layout { }
}
