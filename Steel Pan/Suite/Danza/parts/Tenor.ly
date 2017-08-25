\header{
title =""
subtitle="Tenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Tenor = {
\set Score.markFormatter = #format-mark-box-alphabet
			
	\time 5/4
	\tempo 4 = 160
	\partial 4 {a4}
	b2:32 c8 b a g f4
	g2:32 g8 f e fis g4
	fis2: g2.:
	fis2: d2:
	
	\mark \default
	\bar ":|.|:" 
	f4 g c e c8 b a4
	b2 d, g4
	a c e c8 b a4
	r4 b r a	
	
	\mark \default
	\bar ":|.|:" 
	
	a4
	r4 g2.: a8 b
	c2: b: a4
	r4 g2.: 
	
    }


