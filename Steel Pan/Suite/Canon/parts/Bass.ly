\header{
title =""
subtitle="Four Bass"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Bass = {
\set Score.markFormatter = #format-mark-box-alphabet

	\clef bass
	\tempo 4. = 100
	d1\pp~d~d~d~d~d~d~d
	~d~d~d~d~d~d~d~d
	~d~d~d~d~d~d~d~d
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
	\time 10/8
	\override NoteHead.style = #'cross
	g,8_"rim" d'^"shell" d g, d' d
	\revert NoteHead.style
	g,4 g
	\xNotesOn
	g4 g g g
	\xNotesOff
	c
	d4. d d2
	d4. d d4 d
	\xNotesOn
	g,8 d' d r4.
	\xNotesOff
	d4 d
	r4. r4.
	g4
	\bar "|."
	
}


