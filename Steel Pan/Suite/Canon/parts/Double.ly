\header{
title =""
subtitle="DoubleTenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Double = {
\set Score.markFormatter = #format-mark-box-alphabet

	\tempo 4. = 100
	R1 * 8
	b4.\f a g4
	c4. b c8 cis
	d4. e d4
	a4. b a'8 g
	f4. g a4
	a2. g8 f
	g4. a g4
	f4. e d8 c
	<b g>1\p:32
	<c g>:32
	<d fis,>:32
	<d fis,>:32
	<c f,>:32
	<d f,>:32
	<d g,>:32
	<d f,>:32
	d8\mf [b] d [b] d [b] d [b]
	e [c] e [c] e [c] e [c]
	d [a] d [a] d [a] d [a] 
	d [c] d [c] d [c] d [c] 
	d [cis] d [cis] d [cis] d [cis] 
	e [c] e [c] e [c] e [c] 
	d [b] d [b] d [b] d [b] 
	d [a] d [a] d [a] d [a]
	g8\p\< g g gis gis gis a a
	g g g gis gis gis a a\mf
	a\p\< a a ais ais ais b b
	a a a ais ais ais b b\mf
	c\p\< c c cis cis cis d d
	c c c cis cis cis d d\mf
	d\p\< d d dis dis dis e e
	d d d dis dis dis e e\mf
	\xNotesOn
	\time 10/8
	\override NoteHead.style = #'cross
	g8_"rim" d'^"shell" d g, d' d
	\revert NoteHead.style
	d,4 d	
	\xNotesOn
	d'8 [d] d [d] d [d] d [d]
	\xNotesOff
	g,4
	\xNotesOn
	r8 d' d r d d r d d
	\xNotesOff
	a
	\xNotesOn
	g8 g16 g g8 g8 g16 g g8
	\xNotesOff
	g4 fis
	\xNotesOn
	g8 d' d r4.
	\xNotesOff
	g,4 fis
	r4. r4.
	g4
	\bar "|."
}



