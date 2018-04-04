\score {
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"V. I" }
\relative c'' {
\time 2/4
\tempo "Presto"
\key f \major
des'16]\f des des des des des c c b b b b b [b]
}

        \new Staff = "Staff_violinII" \with { instrumentName = #"V II" }
\relative c' {
\key f \major
<des' f,>16\f <des f,> <des f,>  <des f,><des f,><des f,> <c f,> <c f,>
<b f> <b f> <b f> <b f> <b f> [<b f>]
}
      >>

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla." }
\relative c' {
\clef alto
\key f \major
f,16\f f f f f f f f f f f f f [f] 
}

      \new Staff = "Staff_cello" \with { instrumentName = #"V.C." }
\relative c {
\clef bass
\key f \major
bes16\f bes bes bes bes bes c c des des des des des [des]
}

      \new Staff = "Staff_bass" \with { instrumentName = #"D.B." }
\relative c, {
\clef "bass_8"
\key f \major
bes8\f bes bes c des des des
}
    >>
  \layout { }
}

