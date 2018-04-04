\score {
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"V. I" }
\relative c'' {
\time 4/4
\tempo "Maestoso"
\key ees \major

<<{\stemDown <bes' ees,>2\downbow\f
}\\{<bes,, g'>4}>>
<<{\stemDown <c'' ees,>2\downbow
}\\{<aes, c,>4}>>
<<{\stemDown <bes' ees,>2.\downbow
}\\{<bes,, g'>4}>>


}

        \new Staff = "Staff_violinII" \with { instrumentName = #"V II" }
\relative c' {
\key ees \major
<<{\stemDown <g'' bes,>2\downbow\f
}\\{<g,, ees'>4}>>
<<{\stemDown <aes'' c,>2\downbow
}\\{<aes,, ees'>4}>>
<<{\stemDown <g'' bes,>2.\downbow
}\\{<g,, ees'>4}>>
}
>>

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla." }
\relative c' {
\clef alto
\key ees \major
<<{\stemDown <g' bes,>2\downbow\f
}\\{<ees,>4}>>
<<{\stemDown <aes' c,>2\downbow
}\\{<ees,>4}>>
<<{\stemDown <g' bes,>2.\downbow
}\\{<ees,>4}>>
}

      \new Staff = "Staff_cello" \with { instrumentName = #"V.C." }
\relative c {
\clef bass
\key ees \major
	<ees ees'>2\f\downbow
	<ees ees'>2\downbow
	<ees ees'>2.\downbow
}

      \new Staff = "Staff_bass" \with { instrumentName = #"D.B." }
\relative c, {
\clef "bass_8"
\key ees \major
	ees2\f\downbow aes,\downbow ees'2.\downbow
}
    >>
  \layout { }
}

