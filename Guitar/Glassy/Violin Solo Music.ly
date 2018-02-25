\version "2.18.0"

\header {
	title = "Violin Solo Music"
	subtitle = \markup{"(from"\italic"Einstine on the Beach" ")"}
	composer = "Philip Glass"
	arranger = "arr. Brian Ellis"
	tagline = ""
}

\paper{
  indent = 1\cm
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
\layout {
  \context {
    \Voice
    \consists "Horizontal_bracket_engraver"
  }
}
	\new Staff \relative c'{
	\clef "treble_8"
  \set Score.markFormatter = #format-mark-box-numbers
	\override Staff.TimeSignature.stencil = ##f
	\key d \minor
	\tempo 4 = 208
	\mark \default
	\bar ".|:"
		\time 3/4
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(1 1 1)

	bes8^"CI"-4 f-3 bes des-2 f-1 des
	bes^"CII"-2 ges-3 bes des ges des
	a^"CII"-1 fis-3 a d-2 fis d
	b-2 gis-4 b d-1 e d
	a-2 e-3 a cis-4 e cis
\bar ":|.|:"
\mark \default
\break
	\time 6/8
	f, bes d f d bes
	ges bes des ges des bes 
	fis a d fis d a
	gis b d e d b
	e, a cis e cis a
\bar ":|.|:"
\mark \default
\break
	\time 1/2
	f bes d f
	ges, bes des ges
	fis, a d fis
	gis, b d e 
	e, a cis e
\bar ":|.|:"
\mark \default
\break
	\time 3/8
	f,^\startGroup bes d\stopGroup
	ges, bes des
	fis, a d
	gis, b d
	e, a cis
\bar ":|.|:"
\mark \default
\break
	\time 3/4
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(1 1 1)
	f, bes f bes f bes
	ges bes ges bes ges bes
	fis a fis a fis a
	gis b gis b gis b
	e, a e a e a
\bar ":|.|:"
\mark \default
\break
	f f f f f f
	ges ges ges ges ges ges
	fis fis fis fis fis fis
	gis gis gis gis gis gis
	e e e e e e
\bar ":|."
\mark \default
\break

	\time 3/4
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(1 1 1)

\tempo "Meno mosso"
<<{
	d'8 f 
 		d f d f
	e g e g e g
	c, e c e c e
	c f c f c f
}\\{
	a,4 a a
	c c c
	a s s
	a s s
}>>
\break
<<{
	d8 a d f e d
	e c e g f e
	f e d c d e
	\grace g _(f) e d c d e
}\\{
	a,4 s s
	c s s
	a s s s s s
}>>
\break

\time 9/8
<<{
	a8 d f a f d a d f
	g, c e g e c g c e
	a, c e f e c a c e
	a, c e f e c a c e
	
}\\{
	a,4 s8 s2.
	g4 s8 s2.
	f4 s8 s2.
}\\{
	s2. s4.
	s2. s4.
	s2. s4.
	a'4 s8 s2.
}>>



}	
}










