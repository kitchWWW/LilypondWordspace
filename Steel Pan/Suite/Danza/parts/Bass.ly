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
	\tempo 4 = 160
	\time 5/4
	\partial 4 {d4}
	g,4 g4 r a4 a	
	b4 b r cis cis
	d c c c c
	d g, r g

	\mark \default
	\bar ":|.|:" 
	g
	c c r d d
	b g g g g
	c c r d d
	c r b r	
	
	\mark \default
	\bar ":|.|:" 
	a
	g g r b b
	g g r c c
	g g r b b
	e, e r f
	
	\mark \default
	\bar ":|.|:" 
	fis
}


