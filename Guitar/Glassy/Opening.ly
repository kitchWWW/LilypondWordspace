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
	\tuplet 3/2 { a8\mp c a}
	\tuplet 3/2 { c a c}
	\tuplet 3/2 { a c a}
	\tuplet 3/2 { c a c}
\omit TupletNumber
	\tuplet 3/2 { e8 a, e'}
	\tuplet 3/2 { a, e' a,}
	\tuplet 3/2 { e' a, e'}
	\tuplet 3/2 { a, e' a,}
	\tuplet 3/2 { b e b}
	\tuplet 3/2 { e b e}
	\tuplet 3/2 { b e b}
	\tuplet 3/2 { e b e}
}\\{
	a,,8 e' a, e' a, e' a, e'
	a,8 e' a, e' a, e' a, e'
	g, d' b d b d b d
}>>}

\alternative {
{<<{
\omit TupletNumber
	\tuplet 3/2 { c' e c}
	\tuplet 3/2 { e c e}
	\tuplet 3/2 { c e c}
	\tuplet 3/2 { e b e}
}\\{
	f,, d' b d b d b d
}>>}

{<<{
\omit TupletNumber
	\tuplet 3/2 { b' e b}
	\tuplet 3/2 { e b e}
	\tuplet 3/2 { b e b}
	\tuplet 3/2 { e b e}
}\\{
	e,, d' b d b d b d
}>>}
}

\break
\mark \default

\repeat volta 4 {
<<{
\omit TupletNumber
	\tuplet 3/2 { e a e}
	\tuplet 3/2 { a e a}
	\tuplet 3/2 { e a e}
	\tuplet 3/2 { a e a}
	\tuplet 3/2 { fis a fis}
	\tuplet 3/2 { a fis a}
	\tuplet 3/2 { fis a fis}
	\tuplet 3/2 { a fis a}
	\tuplet 3/2 { d, g d}
	\tuplet 3/2 { g d g}
	\tuplet 3/2 { d g d}
	\tuplet 3/2 { g d g}
}\\{
	a,8 c a c a c a c
	a c a c a c a c
	g b g b g b g b
}>>

}

\alternative {
{<<{
\omit TupletNumber
	\tuplet 3/2 { e g e}
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
	\tuplet 3/2 { fis'' a, fis'}
	\tuplet 3/2 { a, fis' a,}
	\tuplet 3/2 { fis' a, fis'}
	\tuplet 3/2 { a, fis' a,}
	\tuplet 3/2 { c fis c}
	\tuplet 3/2 { fis c fis}
	\tuplet 3/2 { c fis c}
	\tuplet 3/2 { fis c fis}
	\tuplet 3/2 { g c, g'}
	\tuplet 3/2 { c, g' c,}
	\tuplet 3/2 { g' c, g'}
	\tuplet 3/2 { c, g' c,}
	\tuplet 3/2 { g' c, g'}
	\tuplet 3/2 { c, g' c,}
	\tuplet 3/2 { g' c, g'}
	\tuplet 3/2 { c, g' c,}
}\\{
	d,8 fis d fis d fis d fis
	d8 fis d fis d fis d fis
	c g' e g e g e g
	d g d g c, g' c, g'
}>>}

\mark \markup{"x3"}


<<{
\omit TupletNumber
	\tuplet 3/2 { fis' b, fis'}
	\tuplet 3/2 {b, fis' b,}
	\tuplet 3/2 { fis' b, fis'}
	\tuplet 3/2 {b, fis' b,}
	\tuplet 3/2 { fis' b, fis'}
	\tuplet 3/2 {b, fis' b,}
	\tuplet 3/2 { fis' b, fis'}
	\tuplet 3/2 {b, fis' b,}
}\\{
	b,8 a' d, a' d, a' d, a'
	d, a' d, a' d, a' d, a'
}>>


<<{
\omit TupletNumber
	\tuplet 3/2 { fis' c fis}
	\tuplet 3/2 {c fis c}
	\tuplet 3/2 {fis c fis}
	\tuplet 3/2 {c fis c}
	\tuplet 3/2 {fis d fis}
	\tuplet 3/2 {d fis d}
	\tuplet 3/2 {fis d fis}
  \set tieWaitForNote = ##t
	\tuplet 3/2 {d fis~ d~}
	<fis d>1
}\\{ 
  \set tieWaitForNote = ##t

	a,,8 a' d, a' d, a' d, a'
	d, a' d, a' d, a' d,~ a'~
	
	\bar ":|." 
	\mark \markup{\center-column{
	\normalsize "To begining"
	\normalsize "with repeats."
	\teeny" "
	"x3"}}

	<d, a'>1

}>>


\break




\bar "|."
\pageBreak

}	
}