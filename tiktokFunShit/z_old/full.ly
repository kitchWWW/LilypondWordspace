\version "2.18.2"
#(set-global-staff-size 20)

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
  ragged-last-bottom = ##f
  ragged-last = ##f
  indent = 1.0\cm
}

\header{
title ="that American Life"
subtitle=" "
tagline=""
composer = "Brian Ellis"
}

\score{
	\header{
		piece="intro loop"
	}
\midi{}
\layout{}

\new Staff  \with {
  instrumentName = "melodica"
}
\relative c''{
	\time 4/4
	\tempo 4 = 70
	\key c \major
	<c e>1 ~ <c e> ~ _\markup{\italic"breathe as needed"}
	<a c>1 ~ <a c> ~
	<c e>1 ~ <c e> \breathe
	<a c>1 ~ <a c> ~
	<c e>1 ~ <c e> ~
	<a c>1 ~ <a c> \breathe
	<c e>1 ~ <c e> ~
	<g c>1 ~ <g b>2 r2
	\bar "||"
}
}



\score{
	\header{
		piece="loop 1"
	}
\midi{}
\layout{}

\new Staff  \with {
  instrumentName = "crumple paper" %aluminum foil
}
\relative c'' {
	\omit  Staff.TimeSignature
	\time 16/4
	r2 \makeClusters {b1 <g d'> b} r2	
}
}



\score{
	\header{
		piece="loop 2"
	}
\midi{}
\layout{}

\new Staff  \with {
  instrumentName = \markup{\center-column {"toy piano" "or" "ukulele"}} %
}
\relative c' {
	\omit  Staff.TimeSignature
	\time 13/4
	\hide Stem
	s1
	c4^\markup{\column{"improvise with pitchs" "in any octave"}} d e g a s1
}
}




\score{
	\header{
		piece="loop 3"
	}
\midi{}
\layout{}

\new Staff  \with {
  instrumentName = \markup{\center-column {"melodica" "or" "harmonica"}} %
}
\relative c' {
	\omit  Staff.TimeSignature
	\time 16/4
	\hide Stem
	r2 g1 (f1 g) r2
}
}




\score{
	\header{
		piece="loop 3"
	}
\midi{}
\layout{}

\new Staff  \with {
  instrumentName = "aluminum foil"
}
\relative c'' {
	\omit  Staff.TimeSignature
	\time 16/4
	r2 \makeClusters {b1 <g d'> b} r2	
}
}


\score{
	\header{
		piece="loop 3"
	}
\midi{}
\layout{}

\new Staff  \with {
  instrumentName = "ukulele"
}
\relative c'' {
	\time 6/4
	\omit  Staff.TimeSignature
  \override Beam.grow-direction = #RIGHT
  r2 
  \featherDurations 2/3
  { <a c f a>32 [ <a c f a> <a c f a> <a c f a> <a c f a> <a c f a> <a c f a> <a c f a>] }
  \override Beam.grow-direction = #LEFT
  \featherDurations 2/3
  { <a c f a>32 [ <a c f a> <a c f a> <a c f a> <a c f a> <a c f a> <a c f a> <a c f a>] }
  r2
}
}


\score{
	\header{
		piece="loop 3"
	}
\midi{}
\layout{}

\new Staff  \with {
  instrumentName = "voice"
}
\relative c'' {
	\time 4/4
	\omit  Staff.TimeSignature
	s1^"hello" 
}
}
