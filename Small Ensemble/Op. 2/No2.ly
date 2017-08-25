\version "2.18.2"
\header{
title ="Back Home"
subtitle="for Ukulele"
composer = "Brian Ellis"
tagline = ""
}
\score{
\midi {}
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
<<

\new Staff \with {
  instrumentName = #"Ukulele "
  shortInstrumentName = #"Uke "
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c''{
	\time 6/4
	\tempo 4 = 140
	\key g \major
	g4 \grace <g d>8 (<b c,>2.) (<b c,>2)
	g4 \grace <g d>8 (<b c,>2.) (<b c,>2)
	g4 \grace <g d>8 (<b c,>2.)
	b8 a g e
	\time 4/4
	<fis b,>4 <a g> <fis b,> <a g>8 b
	<g c,>4 g <g c,>8 g a b
	<g e>4 <b g> <g e> <b g>8 c
	a4 <a g> <a g fis b>4. b8
	<<{
	g2 r
	b2 a4 b8 a g2
	
	}\\{
	<g b,>16 <g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,>
	<g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,>
	<g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,>
	<g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,>
	<g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,> <g b,>
	}>>
	}
}

\new Staff \with {
  instrumentName = #"Violin"
  shortInstrumentName = #"Vln."
  midiInstrument = "violin"
}{
	\relative c' {
	\key g \major
	r1 r2
	r2 r4 d'4\p (c) r4
	r2 e4 (d) r2
	}	
}

\new Staff \with {
  instrumentName = #"Cello "
  shortInstrumentName = #"Cel. "
  midiInstrument = "cello"
}{
	\relative c {
	\clef "bass"
	\key g \major
	r2 r4 b,8 b r2
	r2 r4 

	}	
}

>>
}