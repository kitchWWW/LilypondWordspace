\header{
title =""
subtitle="Tenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Tenor = {
\set Score.markFormatter = #format-mark-box-alphabet

	\time 8/8
	\tempo 4. = 100
	b4.\f a g4
	c4. b c8 cis
	d4. e d4
	a4. b a8 g
	f4. g a4
	a2. g8 f
	g4. a g4
	f'4. e d8 c
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
	c,\p\< c c cis cis cis d d
	c c c cis cis cis d d\mf
	d\p\< d d dis dis dis e e
	d d d dis dis dis e e\mf
	\xNotesOn
	g4._"rim"^"div. (percussive, normal)" g d'4_"shell"
	g,4. g d'4
	d4 d d d
	g,4 g g g
	g8 d' d g, d' d d-> d->
	g, d' d g, d' d d-> d->
	g, [d'] g, [d' ]g, [d'] g,[ d']
	g, d' d g, d' d d-> d->
	\time 10/8
	\override NoteHead.style = #'cross
	g,8^"together, percussive" d' d g, d' d
	\revert NoteHead.style
	g,4 g
	\xNotesOn
	d'4 g, d' g,
	\xNotesOff
	c
	\xNotesOn
	r8 d d r d d r d d
	\xNotesOff
	d
	\xNotesOn
	g,8 g16 g g8 g8 g16 g g8
	\xNotesOff
	d'4 c
	\xNotesOn
	g8 d' d r4.
	\xNotesOff
	b4 a
	r8 a r r a r
	g4
	\bar "|."
		
	
		
	

	
    }


