\header{
title =""
subtitle="DoubleTenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Double = {
\set Score.markFormatter = #format-mark-box-alphabet

	\tempo 4 = 160
	\time 5/4
	\partial 4 {r4}
	r8 <b d> r <b d> <b d> <b d> r <a c> <a c> <a c>	r8 <b d> r <b d> <b d> <b d> r <a cis> <a cis> <a cis>
	r <a d> r <g c> r <g c> r <g c> r <g c>
	r <a d> r <g b> <g b> <g b> r <g b>
	\mark \default
	\bar ":|.|:" 
	<g b> <g b>
	r <g c> r <g c> <g c> <g c> r <a c> <a c> <a c>
	r <b fis'> r <b d> r <b d> r <b d> r <b d>
	r <a c> r <a c> <a c> <a c> r <a d> <a d> <a d>
	r4 <c e> r <b d>
	
	\mark \default
	\bar ":|.|:" 
	<c d> 
	\xNotesOn
	g'4_"rim" r d'8^"shell" d d d r4
	r4 g, r d' r
	g,4 r d'8 d d d r4
	g,8 g r4 g g r
}



