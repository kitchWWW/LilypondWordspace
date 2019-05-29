\version "2.18.0"

\header {
	title = "Opening"
	subtitle = "    "
	composer = "Philip Glass"
	arranger = "arr. Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c'{
	\clef "treble_8"
	\time 4/4
	\key g \major
	\tempo 4 = 92

\mark \default
\repeat volta 4 {<<{
	\tuplet 3/2 { a8\mp-3 c-1 a}
	\tuplet 3/2 { c a c}
	\tuplet 3/2 { a c a}
	\tuplet 3/2 { c a c}
\omit TupletNumber
	\tuplet 3/2 { e8-0 a, e'}
	\tuplet 3/2 { a, e' a,}
	\tuplet 3/2 { e' a, e'}
	\tuplet 3/2 { a, e' a,}
	\tuplet 3/2 { b-0 e-0 b}
	\tuplet 3/2 { e b e}
	\tuplet 3/2 { b e b}
	\tuplet 3/2 { e b e}
}\\{
	a,,8-0 e'-2 a, e' a, e' a, e'
	a,8 e' a, e' a, e' a, e'
	g,-3 d' b-2 d b d b d
}>>}

\alternative {
{<<{
\omit TupletNumber
	\tuplet 3/2 { c'-2 e-0 c}
	\tuplet 3/2 { e c e}
	\tuplet 3/2 { c e c}
	\tuplet 3/2 { e b-0 e}
}\\{
	f,,-1 d' b-3 d b d b d
}>>}

{<<{
\omit TupletNumber
	\tuplet 3/2 { b' e b}
	\tuplet 3/2 { e b e}
	\tuplet 3/2 { b e b}
	\tuplet 3/2 { e b e}
}\\{
	e,, d' b-2 d b d b d
}>>}
}

\break
\mark \default

\repeat volta 4 {
<<{
\omit TupletNumber
	\tuplet 3/2 { e^"II"-1 a-1 e}
	\tuplet 3/2 { a e a}
	\tuplet 3/2 { e a e}
	\tuplet 3/2 { a e a}
	\tuplet 3/2 { fis-3 a fis}
	\tuplet 3/2 { a fis a}
	\tuplet 3/2 { fis a fis}
	\tuplet 3/2 { a fis a}
	\tuplet 3/2 { d,-0 g-0 d}
	\tuplet 3/2 { g d g}
	\tuplet 3/2 { d g d}
	\tuplet 3/2 { g d g}
}\\{
	a,8-4 c-2 a c a c a c
	a c a c a c a c
	g-3 b-2 g b g b g b
}>>

}

\alternative {
{<<{
\omit TupletNumber
	\tuplet 3/2 { e-1 g e}
	\tuplet 3/2 { g e g}
	\tuplet 3/2 { e g e}
	\tuplet 3/2 { g e g}
}\\{
	g,8 b g b g b g b
}>>}
{<<{
\omit TupletNumber
	\tuplet 3/2 { d g d}
	\tuplet 3/2 { g d g}
	\tuplet 3/2 { d g d}
	\tuplet 3/2 { g d g}
}\\{
	g,8 b g b g b g b
}>>}
}

\break
\mark \default

\repeat volta 3 {<<{
\omit TupletNumber
	\tuplet 3/2 { fis''^"II"-1 a,-1 fis'}
	\tuplet 3/2 { a, fis' a,}
	\tuplet 3/2 { fis' a, fis'}
	\tuplet 3/2 { a, fis' a,}
	\tuplet 3/2 { c-4 fis c}
	\tuplet 3/2 { fis c fis}
	\tuplet 3/2 { c fis c}
	\tuplet 3/2 { fis c fis}
	\tuplet 3/2 { g-4 c,-1 g'}
	\tuplet 3/2 { c, g' c,}
	\tuplet 3/2 { g' c, g'}
	\tuplet 3/2 { c, g' c,}
	\tuplet 3/2 { g' c, g'}
	\tuplet 3/2 { c, g' c,}
	\tuplet 3/2 { g' c, g'}
	\tuplet 3/2 { c, g' c,}
}\\{
	d,8-3 fis-2 d fis d fis d fis
	d8 fis d fis d fis d fis
	c-3 g' e-2 g e g e g
	d-0 g d g c,-3 g' c, g'
}>>}

\mark \markup{"x3"}


<<{
\omit TupletNumber
	\tuplet 3/2 { fis'-4 b,-0 fis'}
	\tuplet 3/2 {b, fis' b,}
	\tuplet 3/2 { fis' b, fis'}
	\tuplet 3/2 {b, fis' b,}
	\tuplet 3/2 { fis' b, fis'}
	\tuplet 3/2 {b, fis' b,}
	\tuplet 3/2 { fis' b, fis'}
	\tuplet 3/2 {b, fis' b,}
}\\{
	b,8-2 a'-3 d, a' d, a' d, a'
	d, a' d, a' d, a' d, a'
}>>


<<{
\omit TupletNumber
	\tuplet 3/2 { fis'-3 c-1 fis}
	\tuplet 3/2 {c fis c}
	\tuplet 3/2 {fis c fis}
	\tuplet 3/2 {c fis c}
	\tuplet 3/2 {fis d-4 fis}
	\tuplet 3/2 {d fis d}
	\tuplet 3/2 {fis d fis}
  \set tieWaitForNote = ##t
	\tuplet 3/2 {d fis~ d~}
	<fis d>1
}\\{ 
  \set tieWaitForNote = ##t

	a,,8-0 a'-2 d,-0 a' d, a' d, a'
	d, a' d, a' d, a' d,~ a'~
	
	\bar ":|." 
	\mark \markup{\center-column{
	\normalsize "To begining,"
	\normalsize "with repeats"
	\vspace #.2
	"x3"}}

	<d, a'>1

}>>


\break




\bar "|."
\pageBreak

}	
}