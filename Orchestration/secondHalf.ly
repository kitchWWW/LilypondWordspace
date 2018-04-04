\header{
title="Page 37 #6-9"
tagline = ""
composer = "Brian Ellis"
}

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
%  ragged-last-bottom = ##t
  indent = 2.0\cm
	print-page-number = ##f

}

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

        \new Staff = "Staff_violinII" \with { instrumentName = #"V. II" }
\relative c' {
\key des \major
\times 4/3 { aes16\p (des f)}
\times 4/3 { aes (f des)}
\times 4/3 { aes (des f)}
\times 4/3 { aes (f des)}
}
      >>

      \new Staff = "Staff_viola" \with { instrumentName = #"Vla." }
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

        \new Staff = "Staff_violinII" \with { instrumentName = #"V. II" }
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
        \new Staff = "Staff_violinII" \with { instrumentName = #"V. II" }
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

        \new Staff = "Staff_violinII" \with { instrumentName = #"V. II" }
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


