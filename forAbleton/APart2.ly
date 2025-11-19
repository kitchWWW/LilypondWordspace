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
	\tempo 4 = 45

<<{
	<c' e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
	<c e>1 ~
}\\{
	r1
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
}\\{
	r1
	a,2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
	a2. r4 
	g2. r4 
}>>


r1 r1

c''4 e g a
b, e g a
a, e' g a
b, e g a


} 
}
