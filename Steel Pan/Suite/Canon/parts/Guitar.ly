\header{
title =""
subtitle="Guitar"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Guitar = {
\set Score.markFormatter = #format-mark-box-alphabet

	\clef bass
	\tempo 4. = 100
	g'1\pp ~ g ~ g ~ g ~ g ~ g ~ g ~ g ~ g ~ g ~ g ~ g ~ g ~ g ~ g ~ g
	b4.\f a g4
	c4. b c8 cis
	d4. e d4
	a4. b a8 g
	f4. g a4
	a2. e8 f
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
	\time 10/8
	\override NoteHead.style = #'cross
	g8_"rim" d'^"shell" d g, d' d
	\revert NoteHead.style
	b4 b
	\xNotesOn
	d4 g, d' g,
	\xNotesOff
	e'
	\xNotesOn
	g,4. g g
	\xNotesOff
	fis'8
	<g b,>4. <g b,>4. <g b,>4 <fis a,>
	\xNotesOn
	g,8 d' d r4.
	\xNotesOff
	b4 a
	r4. r4.
	g4
	\bar "|."
}


