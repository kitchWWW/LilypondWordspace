\header{
tagline = " "
title = "Opera"
subtitle = "No. "
composer = "Brian Ellis"
}

\score{\header {piece = "One."tagline = " "}\absolute {
 \override Staff.StaffSymbol.line-count = #3
\clef "percussion"
\override Staff.TimeSignature.stencil = ##f
\time 12/4
a c' e' a c' e' a c' e' a c' e'
}}

\score{\header {piece = "Two."tagline = " "}\relative c'' {
a b c
}}

\score{\header {piece = "Three."tagline = " "}\relative c'' {
a b c
}}


\markup{\column{ \line{ \hspace #40 "Short Pause"} " "}}


\score{\header {piece = "One."tagline = " "}
\relative c {
\override Staff.Clef.color = #white
\override Staff.TimeSignature.color = #white
\stopStaff
s1^\markup{"hi?"}
}}
