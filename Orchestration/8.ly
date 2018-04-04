\score {
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"V. I" }
\relative c'' {
\time 3/8
\tempo "Andante"
\key des \major
\partial 32
des32\p^"dolce" \upbow
\bar ""
\partial 8 
c16. c32
bes16. r32
r16.
bes32 c16.
[c32] f16. r32 r 16.
}
        \new Staff = "Staff_violinII" \with { instrumentName = #"V II" }
\relative c'' {
\key des \major
r32 r32 ges\p^"dolce" c, r32
r32 f bes, r
r8
r32 ges' c, r32
r32 bes f' r r32 f [bes]
}
      >>

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla." }
\relative c' {
\clef alto
\key des \major
\autoBeamOff
	r32 <ges c>8\p^"dolce"\upbow <f bes>
	f32 [bes f'16] <ges, c>8
	<f bes>8 <f bes>16.
}

      \new Staff = "Staff_cello" \with { instrumentName = #"V.C." }
\relative c {
\clef bass
\key des \major
\autoBeamOff
	r32 ees8\upbow\p^"dolce" des16. [e32] f8
ees8 des16. [a'32] bes16.

}

      \new Staff = "Staff_bass" \with { instrumentName = #"D.B." }
\relative c, {
\clef "bass_8"
\key des \major
	r32 ees8^"pizz."\p^"dolce" des r ees des r16.
}
    >>
  \layout { }
\midi{}
}

