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
	\tempo 4 = 160
	\time 5/4
	\partial 4 {fis4}
	g g r f f
	g g r a a
	a g g g g
	a d, r d
	
	\mark \default
	\bar ":|.|:" 
	d
	e e r f f
	fis d d d d
	e e r f f
	g r fis r 
	
	\mark \default
	\bar ":|.|:" 
		
	<d fis>4
	r8 <g d> r <g d> <g d> <g d>
	
}	


