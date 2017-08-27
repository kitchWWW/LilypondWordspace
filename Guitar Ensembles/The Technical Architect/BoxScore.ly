\version "2.18.2"
	
#(set-global-staff-size 20)
\paper{
  paper-width = 11\in
  paper-height = 8.5\in
  left-margin = 1\cm
  right-margin = 5.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1\cm
  ragged-last-bottom = ##f
  indent = 0.0\cm
}

largeSectionA = \relative c {
	\bar "[|:" 
	f,16 [a f' g]
	f,16 [a f' g]
	f,16 [a f' g]
	f,16 [a d]
	f,16 [a f' g]
	f,16 [a f' g]
	c, [d g b]
	c, [d g b]
	e [d gis,]
	c, [d g b]
	c, [d g b]
	c, [d g b ^\markup{ \larger"x2"} ]
	\bar ":|][|:"

}

thinSectionA = \relative c {
	f,8 [a] f [a] f [a] f [d'16] f,8 [a] f [a]
	c [g'] c, [g'] e [gis16] c,8 [g'] c,8 [g'] c,8 [g'] 
}

largeSectionB = \relative c' {
	a16 [c e]
	f, [a c]
	a [c e]
	f, [a c]
	e [d e]
	a,16 [c e]
	f, [a c]
	a [c]

	e [c g]
	c [g f]
	e' [c]
	e, [gis b]
	c [g d]
	e' [c g]
	c [g e]	
	e' [c g ^\markup{ \larger"x2"} ]
	\bar ":|]"
}

thinSectionB = \relative c {
	a'8 [e'16]
	f,8 [c'16]
	a8 [e'16]
	f,8 [c'16]
	e [d e]
	a,8 [e'16]
	f,8 [c'16]
	a8 e' [g,16]
	c8 [f,16]
	e'8 [e,16 gis b]
	c8 [d,16]
	e'8 [g,16]
	c8 [e,16]
	e'8 [g,16]
	
}

one = \relative c' { e4 c }

\header{
title ="The Technical Architect"
composer = "Brian Ellis"
arranger = "  "
dedication = \markup{\column{\line{\italic "For Christian Clark"}\line{" "}}}
tagline =\markup{
\center-column{

\line{* specifies lower system. If unmarked, perform upper system.}
\line{Duet origionally for two guitars: One playing ostenato (A or B), the other a melody (1, 2, 3, 4, or 0).}
\line{All movements attacca.}
}
}
}


\markup {
\line {
\column {

\score{
\midi {}
\layout{}
<<
\new Staff {
	\relative c' {
	\omit Staff.TimeSignature
	\clef "treble_8"
	\time 2/4
	\bar "[|:" \mark "1"
	e4 c
	\bar ":|]" \mark \markup{ \magnify #1 "x11"}
	g'
	\bar "||"
\stopStaff
s4
\time 5/4
s1 s4
\startStaff
	\bar "[|:" \mark "2"	
	a,4 c d
	\bar ":|]"\mark \markup{ \magnify #1 "x7"}
	c g'
	\bar "||"
\stopStaff
s1 s4
\time 7/4
s1 s2.
\startStaff
	\bar "[|:" \mark "3"
	a,4 e' c f a, c d
	\bar ":|]"\mark \markup{ \magnify #1 "x3"}
	c g'
	\bar "||"
\stopStaff
\time 14/4
\startStaff
	\bar "[|:" \mark "4"
	f4 c d f d a c d e g c,
	\bar ":|]" \mark \markup{ \magnify #1 "x2"}
	g'
	\bar "||"

\stopStaff
s1 s1 s1
\time 1/4
\startStaff
	\bar "[|:" \mark "0"
	f4
	\bar ":|]" \mark \markup{ \magnify #1 "x22"}
	g
	\bar "||"
}
}
\new Staff {
	\relative c'' {
	\omit Staff.TimeSignature
	\clef "treble_8"
	\time 2/4
  \ottava #1
	\bar "[|:"
	e8 e c c
	\bar ":|]"
	g'4
	\bar "||"
  \ottava #0

\stopStaff
s4
\time 5/4
s1 s4
\startStaff
  \ottava #1
	\bar "[|:"	
	a,8 [f] c' [g] d' [e,]
	\bar ":|]"
	c'4 g'
	\bar "||"
  \ottava #0

\stopStaff
s1 s4
\time 7/4
s1 s2.
\startStaff
	\ottava #1
	\bar "[|:"	
	a,8 [f] e' [g,] c [e,] f [d'] a [e] c' [f,] d' [g,]
	\bar ":|]"
	c4 g'
	\bar "||"
  \ottava #0
\stopStaff
\break
\time 14/4
\startStaff
	\ottava #1
	\bar "[|:"	
	f8 [f] c [c] d [d] f [f] d [d] a [a] c [c] d [d] e [e] g [g] c, [c]
	\bar ":|]"
	g'4
	\bar "||"
  \ottava #0
	\stopStaff

	}
}
>>
}


\score {
\layout {}
<<
\new Staff {
	\relative c {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
	\time 23/16
	\clef "treble_8"
	\mark "A"
	\largeSectionA
\break
	 \mark "B"
	\largeSectionB
	
	}
}

\new Staff {
	\relative c'' {
	\clef "treble_8"
	\thinSectionA
	\thinSectionB
	
	}
}
>>
}


}

\column { \line { "      "} }
\raise #10
\column {
	\line { \huge "Slow Movement"}
	\line {A (solo)}
	\line {A + 1}
	\line {A + 2}
	\line {A + 3}
	\line {A + 4}
	\line {A* + 0}
	\line {A* + 4}
	\line {A + 1}
	\line {A + 2}
	\line {A + 3}
	\line {"   "}
	\line { \huge "Transition"}
	\line {A* + 3}
	\line {B* + 3}
	\line {B* + 3*}
	\line {B + 3*}
	\line {"   "}
	\line { \huge "Fast Movement"}
	\line {B + 1*}
	\line {B + 2*}
	\line {B + 3*}
	\line {B + 4*}
	\line {B* + 0}
	\line {B* + 4}
	\line {B + 4}
	\line {B + 3}
	\line {B + 2*}
	\line {B + A}
	\line {B* + A*}
	}

}
}
