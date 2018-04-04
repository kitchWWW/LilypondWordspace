\score {
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"V. I" }
\relative c'' {
\time 3/4
\tempo "Allegro"
\key f \major
\partial 4
a8.\f (f16)
c'2 e8.\trill (d32 c) f2
}

        \new Staff = "Staff_violinII" \with { instrumentName = #"V II" }
\relative c' {
\key f \major
<c f>4\f ~ <c f>2. ~ <c f>2
}
      >>

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla." }
\relative c {
\clef alto
\key f \major
	c16\f (a' f' a,)
	c, (a' f' a,)
	c, (a' f' a,)
	c, (a' f' a,)
	c, (a' f' a,)
	c,
}

      \new Staff = "Staff_cello" \with { instrumentName = #"V.C." }
\relative c {
\clef bass
\key f \major
	<f, f'>4\f ~ <f f'>2. ~<f f'>2
}

      \new Staff = "Staff_bass" \with { instrumentName = #"D.B." }
\relative c, {
\clef "bass_8"
\key f \major
f4\f f f f f f
}
    >>
  \layout { }
	\midi{}
}

