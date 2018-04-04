\score {
    \new StaffGroup = "StaffGroup_strings" <<

 \new Staff = "Staff_violinI_solo" \with { instrumentName = #"V. I solo" }
\relative c''' {
\key bes \major
	<bes ees, g,>8 (a16 g) f4 <ees >8 (d16 c) bes4
}


      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"V. I" }
\relative c'' {
\time 3/4
\tempo "Moderato"
\key bes \major
	bes8 (a16 g) 
}

        \new Staff = "Staff_violinII" \with { instrumentName = #"V II" }
\relative c' {
\key bes \major
}
      >>

      \new Staff = "Staff_viola_solo " \with { instrumentName = #"Vla. solo" }
\relative c' {
\clef alto
\key bes \major

}

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla." }
\relative c' {
\clef alto
\key bes \major

}

      \new Staff = "Staff_cello" \with { instrumentName = #"V.C." }
\relative c {
\clef bass
\key bes \major
	<ees bes>4 <bes f> fis g

}

      \new Staff = "Staff_bass" \with { instrumentName = #"D.B." }
\relative c, {
\clef "bass_8"
\key bes \major
	ees4 bes fis g

}
    >>
  \layout { }
}

