\version "2.18.2"
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Concerto" }
subtitle=""
composer =  \markup { 
         \override #'(font-name . "Avenir Light") "Brian Ellis"}
tagline=""
}

\paper{
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-page-number = ##f
}


solo = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
	\tempo 4 = 160
	\partial 4 f4
	e8 g' g g g f e d
	c g' g g g f e d
	c g' g g e g g g
	g a a a e a a a
	a f f f f c c c
	c f f f d f f f
	c g' g g e g g g
	f g g g g f e d
	cis d e cis b e f b,
	a f' g a, b d e b
	
	c8 g'16 g g g g g g8 e16 f g8 e16 d
	c8 e16 e e e e e e8 c16 d e8 \times 2/3 {c16 b a}
	g8 c16 b c b c8 e, g16 f g f g8
	g8 a16 g a g a8 c, e16 d e d e8
	e8 a16 g a g a8 c, f16 e f e f8
	a8 d16 a b c d8 f, a16 e f g a8
	c8 g'16 d e f g8 c, e16 b c d e8
	f8 g16 g g g g8 d f16 f f f f8
	e8 e16 e e e e e e2
	d8 d16 d d d d d d2
	c,8 e16 e e8 g16 g g8 b16 b b8 c16 c
	c4. f8 g4. d8
	cis4 d e r
	b e f r
	a, f' g r
	b, d e
	\bar ":|." f
	e
	
	

	
	
}


orch = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
	\partial 4 <g b d>4
	<c e g>4 r2.
	<c e g>4 r2.
	<c e g>4 r <c e g>4 r 
	<a' c e> r <a c e> r
	<f a c> r <f a c> r
	<d f a> r <d f a> r
	<g, c e g> r  <g c e g> r
	<g b d g> r <g b d g> r
	r1 r2 <g b d g>
	
	<c e g>4 r2.
	<c e g>4 r2.
	<c e g>4 r <c e g>4 r 
	<a' c e> r <a c e> r
	<f a c> r <f a c> r
	<d f a> r <d f a> r
	<g, c e g> r  <g c e g> r
	<g b d g> r <g b d g> r
	<c e g c> r <c e g c> r
	<d f b> r <d f b> r
	<e g c> r <e g c> r
	<g c e> r <g, b d> r
	<a cis e> <a cis e> <a cis e> r
	<b d f> <b d f> <b d f> r
	<a c e> <a c e> <a c e> r
	<g b d f> <g b d f> <g b d f> 
	
	

}

\score {
  <<
    \new Staff = "" \with {
  instrumentName = \markup { 
         \override #'(font-name . "Avenir Light")
		"Soloist" }
  shortInstrumentName = #""
  midiInstrument = "Steel Drums"
}
	{\solo}
\new Staff = "" \with {
  instrumentName = \markup { 
         \override #'(font-name . "Avenir Light")
		"Orchestra" }
  shortInstrumentName = #""
  midiInstrument = "Steel Drums"
}
    {\orch}
  >>
  \layout {
    \context { 
		\Score
    	\consists "Span_arpeggio_engraver"
	}
  }
  \midi { }
}