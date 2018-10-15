
\header{
    title = \markup { \fontsize #6 \bold "REDUCTION" }
	subtitle = \markup{"  "}
	subsubtitle = \markup{"  "}
	tagline = ""
	composer = \markup { \fontsize #1 \bold "BRIAN ELLIS" }

	arranger = "  "
}

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}


\score {
\header{
    piece = \markup { \fontsize #4 \bold "INTRODUCTION" }
}
    \new Staff {
\relative c {
\clef "treble_8"
\numericTimeSignature
\tempo 2 = 50
	\key a \major
\time 16/4
	e4 gis e gis e gis e gis e gis e gis e gis e gis 
\time 14/4
	e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> 

\time 16/4
	e4 gis e gis e gis e gis e gis e gis e gis e gis 
\time 14/4
	e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> 
\time 12/4
	e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> 

\time 16/4
	e4 gis e gis e gis e gis e gis e gis e gis e gis 
\time 14/4
	e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> 
\time 12/4
	e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> 
\time 10/4
	<e gis> <cis' e> <e, gis> <cis' e> <e, gis><cis' e> <e, gis><cis' e> <e, gis><cis' e>

\time 16/4
	e,4 gis e gis e gis e gis e gis e gis e gis e gis 
\time 14/4
	e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> 
\time 12/4
	e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> 
\time 10/4
	<e gis> <cis' e> <e, gis> <cis' e> <e, gis><cis' e> <e, gis><cis' e> <e, gis><cis' e>
\time 8/4
	<e, gis cis> e' <e, gis cis> e' <e, gis cis> e' <e, gis cis> e' 
	
\time 16/4
	e,4 gis e gis e gis e gis e gis e gis e gis e gis 
\time 14/4
	e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> 
\time 12/4
	e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> 
\time 10/4
	<e gis> <cis' e> <e, gis> <cis' e> <e, gis><cis' e> <e, gis><cis' e> <e, gis><cis' e>
\time 8/4
	<e, gis cis> e' <e, gis cis> e' <e, gis cis> e' <e, gis cis> e' 
\time 6/4
	<gis, cis> e' <gis, cis> e' <gis, cis> e' 

\time 16/4
	e,4 gis e gis e gis e gis e gis e gis e gis e gis 
\time 14/4
	e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> e <gis cis> 
\time 12/4
	e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> e <gis cis e> 
\time 10/4
	<e gis> <cis' e> <e, gis> <cis' e> <e, gis><cis' e> <e, gis><cis' e> <e, gis><cis' e>
\time 8/4
	<e, gis cis> e' <e, gis cis> e' <e, gis cis> e' <e, gis cis> e' 
\time 6/4
	<gis, cis> e' <gis, cis> e' <gis, cis> e' 
\time 4/4
	cis e cis e
\bar "||" \mark \markup{\normalsize{\italic{"attacca"}}}

}


}
  \layout {
  ragged-last = ##f
}
  \midi { }
}


\score {
\header{
    piece = \markup { \fontsize #4 \bold "CONSTRUCTION" }
}

    \new Staff {
\relative c' {
\clef "treble_8"
\numericTimeSignature
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

\bar "||" \mark \markup{\normalsize{\italic{"attacca"}}}

}


}
  \layout {
  ragged-last = ##f
}
  \midi { }
}




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

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}


\score {
\header{
    piece = \markup { \fontsize #4 \bold "SONG" }
}
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
	<cis gis>4 d?
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
	e,,\breve s1*2*3
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










\score {
\header{
    piece = \markup { \fontsize #4 \bold "DECONSTRUCTION" }
}

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

