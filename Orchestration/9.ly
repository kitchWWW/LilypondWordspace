\score {
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"V. I" }
\relative c'' {
\time 12/8
\tempo "Andante molto"
\key c \major
<c c'>4.\p <c c'> <b b'> <b b'>
<g g'> <e e'>4 <f f'>8 <g g'>4.
}

        \new Staff = "Staff_violinII" \with { instrumentName = #"V II" }
\relative c' {
\key c \major
e'16\pp g e g e g
e g e g e g
d g d g d g
d g d g d g
c, e c e c e
g, c g c g c

}
      >>

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla." }
\relative c' {
\clef alto
\key c \major
<<{
<g' c,>2.^"div."\pp <g b,> <e g,>
}\\{
<e g,> <d g,> <c e,>
}>>
}

      \new Staff = "Staff_cello" \with { instrumentName = #"V.C." }
\relative c {
\clef bass
\key c \major
c,16\pp (g' e') c'( e, g, )
c,16 (g' e') c'( e, g, )
c, (g' d') b' (d, g,)
c, (g' d') b' (d, g,)
c,16 (g' e') c'( e, g, )
c,16 (g' e') c'( e, g, )

}

      \new Staff = "Staff_bass" \with { instrumentName = #"D.B." }
\relative c, {
\clef "bass_8"
\key c \major
	c2.\p c c ees4.
}
    >>
  \layout { }
	\midi{}
}

