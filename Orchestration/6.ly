\score {
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"V. I" }
\relative c'' {
\time 4/4
\tempo "Allegro"
\key des \major
r4 aes8-.\p r bes -. r des-. r
}

        \new Staff = "Staff_violinII" \with { instrumentName = #"V II" }
\relative c' {
\key des \major
\times 4/3 { aes16\p (des f)}
\times 4/3 { aes (f des)}
\times 4/3 { aes (des f)}
\times 4/3 { aes (f des)}
}
      >>

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla. div" }
\relative c {
\clef alto
\key des \major
<<{
f16^"div"\p aes f aes f aes f aes
f16 aes f aes f aes f aes
}\\{
des,16 f des f des f des f
des f des f des f des f
}>>
}


      \new Staff = "Staff_cello" \with { instrumentName = #"V.C." }
\relative c, {
\clef bass
\key des \major
\times 4/3 { des16\p (aes' f')}
\times 4/3 { des' (f, aes,)}
\times 4/3 { des, (aes' f')}
\times 4/3 { des' (f, aes,)}
}

      \new Staff = "Staff_bass" \with { instrumentName = #"D.B." }
\relative c, {
\clef "bass_8"
\key des \major
des1\p
}
    >>
  \layout { }
\midi{}
}

