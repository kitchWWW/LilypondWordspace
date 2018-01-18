\version "2.18.0"
#(set-global-staff-size 18)


\header {
	title = "A Part"
	subtitle = "For Guitar"
	subsubtitle = ""
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  print-all-headers = ##t
}

\score {
	\midi {}
	\layout {}
	\header {
	title = "   "
	subtitle = ""
	composer = ""
	tagline = ""
	piece = "          with purpose"}
	\new Staff \relative c{
	\numericTimeSignature
	\key c \major
	\time 6/8
	\clef "treble_8"
	\tempo 4. = 60
	g'8\mp b e e b g \breathe
<<{
	g8 b e e b g
	g c e e c g
}\\{
	b,2. c
}>>
	g'8 b e e b g \breathe
<<{
	g b e e b g
	g b e e b g
	g b e e b g
	g c e e c g
	g c e e c g
	g c e e c g
}\\{
	b,2. a b c d c 
}>>
	g'8 b e e b g
	g8 b e e b g \breathe
<<{
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g c e e c g
	g c e e c g
	g c e e c g
	g c e e c g
	g c e e c g
}\\{
	b,2. a g a b c d e d c
}>>
	g'8 b e e b g
	g b e e b g
	g8 b e e b g \breathe

<<{
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g c e e c g
	g c e e c g
	g c e e c g
	g c e e c g
	g c e e c g
	g c e e c g
	g c e e c g
}\\{
	b,2. a g fis g a b c d e f e d c
}>>
	g'8 b e e b g
	g b e e b g
	g b e e b g
	g8 b e e b g \breathe

<<{
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g b e e b g
	g c e e c g
	g c e e c g
	g c e e c g
	g c e e c g
	g c e e c g
	g c e e c g
	g c e e c g
}\\{
	b,2. a g fis e fis g a b c d e f f f f
}>>

<<{
	g8 b e e b g
	g c e e c g
	g8 b e e b g
	g c e e c g
	g8 b e e b g g2. (s)
}\\{
	g2. g g g g g2. (s)
}>>

\bar "|."

} 
}
