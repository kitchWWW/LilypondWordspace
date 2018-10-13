
\header{
	title = "No. 6"
	subtitle = "Deconstruction"
	tagline = ""
	composer = "Brian Ellis"
	arranger = "  "
}

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}


\score {
    \new Staff {
\relative c {
\clef "treble_8"
\numericTimeSignature
\tempo 2 = 50
	\key a \major
	\time 4/2
\bar ".|:"
	\times 4/6{fis,8 cis' fis a fis cis}
	\times 4/6{fis,8 cis' fis a fis cis}
	\times 4/6{fis,8 cis' fis a fis cis}
	\times 4/6{fis,8 cis' fis a fis cis}
	\times 4/6{e, cis' e gis e cis}
	\times 4/6{e, cis' e gis e cis}
	\times 4/6{e, cis' e gis e cis}
	\times 4/6{e, cis' e gis e cis}
\bar ":|.|:"
	\times 4/5{fis,8 cis' fis a fis}
	\times 4/5{fis,8 cis' fis a fis}
	\times 4/5{fis,8 cis' fis a fis}
	\times 4/5{fis,8 cis' fis a fis}
	\times 4/5{e, cis' e gis e}
	\times 4/5{e, cis' e gis e}
	\times 4/5{e, cis' e gis e}
	\times 4/5{e, cis' e gis e}
\bar ":|.|:"
	\times 4/4{fis,8 [cis' fis a]}
	\times 4/4{fis,8 [cis' fis a]}
	\times 4/4{fis,8 [cis' fis a]}
	\times 4/4{fis,8 [cis' fis a]}
	\times 4/4{e,[ cis' e gis]}
	\times 4/4{e,[ cis' e gis]}
	\times 4/4{e,[ cis' e gis]}
	\times 4/4{e,[ cis' e gis]}
\bar ":|.|:"
	\times 4/3{cis, fis a}
	\times 4/3{cis, fis a}
	\times 4/3{cis, fis a}
	\times 4/3{cis, fis a}
	\times 4/3{cis, e gis}
	\times 4/3{cis, e gis}
	\times 4/3{cis, e gis}
	\times 4/3{cis, e gis}
\bar ":|.|:"
	\times 4/2{fis [a]}
	\times 4/2{fis [a]}
	\times 4/2{fis [a]}
	\times 4/2{fis [a]}
	\times 4/2{e [gis]}
	\times 4/2{e [gis]}
	\times 4/2{e [gis]}
	\times 4/2{e [gis]}
\bar ":|.|:"

}


}
  \layout {
  ragged-last = ##f
}
  \midi { }
}


\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}



\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

