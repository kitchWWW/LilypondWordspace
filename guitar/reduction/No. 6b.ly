
melody = \relative c''{
<cis gis>4 e 
	<cis gis>4 e 
	<cis gis>4 e 
	<cis gis>4 e 
	<cis gis>4 dis
	<cis gis>4 dis
	<cis gis>4 dis
	<cis gis>4 dis
	<cis gis>4 fis
	<cis gis>4 fis
	<cis gis>4 fis
	<cis gis>4 fis
	<cis gis>4 e 
	<cis gis>4 e 
	<cis gis>4 e 
	<cis gis>4 e 

}

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
\relative c'' {
\clef "treble_8"
\numericTimeSignature
\tempo 2 = 50
<<{
	\key a \major
\time 4/2
	\melody
	\melody
	\melody
	\melody
	\melody
	<cis gis>4 e 
	<cis gis>4 e 
	<cis gis>4 e 
	<cis gis>4 e 
	<cis gis>4 dis
	<cis gis>4 dis
	<cis gis>4 dis
	<cis gis>4 dis
	<cis gis>4 d
	<cis gis>4 d
	<cis gis>4 d
	<cis gis>4 d
  \arpeggioArrowUp
	<fis, a cis>1.\arpeggio
		\stemDown
	<fis a cis>4-. r
	<e gis cis>\breve\arpeggio
}\\{
	s1*2*4
	e,,,\breve s1*2*3
	a\breve s1*2*3
	e\breve s1*2*3
	a\breve s1*2*3
	d\breve s1*2*2
}>>

\bar "||" \mark \markup{\normalsize{\italic{"attacca"}}}

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
