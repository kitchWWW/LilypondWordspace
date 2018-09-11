
\header{
	title = "No. 6"
	subtitle = "Construction"
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
\relative c' {
\clef "treble_8"
\numericTimeSignature
\tempo 2 = 50
<<{
	\key a \major
\time 10/4
	cis4 e cis e cis e cis e cis e

\time 2/4
	cis e
\time 5/4
	cis4 e cis e cis
\time 2/4
	e cis
\time 7/4
	e cis e cis e cis e

\time 4/4
	cis e cis e
\time 5/4
	cis4 e cis e cis
\time 4/4
	e cis e cis
\time 7/4
	e cis e cis e cis e

\time 6/4
	cis e cis e cis e
\time 5/4
	cis4 e cis e cis
\time 6/4
	e cis e cis e cis
\time 7/4
	e cis e cis e cis e

\time 8/4
	cis e cis e cis e cis e
\time 5/4
	cis4 e cis e cis
\time 8/4
	e cis e cis e cis e cis
\time 7/4
	e cis e cis e cis e

\time 10/4
	cis e cis e cis e cis e cis e
\time 5/4
	cis4 e cis e cis
\time 10/4
	e cis e cis e cis e cis e cis
\time 7/4
	e cis e cis e cis e

\time 12/4
	cis e cis e cis e cis e cis e cis e
\time 5/4
	cis4 e cis e cis
\time 12/4
	e cis e cis e cis e cis e cis e cis
\time 7/4
	e cis e cis e cis e

\time 14/4
	cis e cis e cis e cis e cis e cis e cis e
\time 5/4
	cis4 e cis e cis
\time 14/4
	e cis e cis e cis e cis e cis e cis e cis
\time 7/4
	e cis e cis e cis e

\time 16/4
	cis e cis e cis e cis e cis e cis e cis e cis e
\time 6/4
	cis4 e cis e cis e
\time 5/4
	cis' e cis e cis
\time 16/4
	e cis e cis e cis e cis e cis e cis e cis e cis
\break
\time 15/4
	e cis e cis e cis e cis e cis e cis e cis e



}\\{
s4 s s s s s s s s s
e,,,2
s4 s s s s
e'2
s4 s s s s s s 

e,2 fis
s4 s s s s
e'2 gis,
s4 s s s s s s 

e2 fis d'
s4 s s s s
e2 gis, b
s4 s s s s s s 

e,2 fis d' a
s4 s s s s
e'2 gis, b cis
s4 s s s s s s 

e,2 fis d' a cis
s4 s s s s
e2 gis, b cis a
s4 s s s s s s 

e2 fis d' a cis b
s4 s s s s
e2 gis, b cis a d
s4 s s s s s s 

e,2 fis d' a cis b gis
s4 s s s s
e'2 gis, b cis a d fis,
s4 s s s s s s 

e2 fis d' a cis b gis e'
s4 s s s s s
s4 s s s s
e'2 gis, b cis a d fis, e
s4 s s s s s s 

}>>

\bar "|."

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
