\header{
title =""
subtitle="Four Bass"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Bass = {
\set Score.markFormatter = #format-mark-box-alphabet

	\time 4/4
	\clef bass
	\tempo 4 = 160
	\key d \minor

\repeat volta 2 {	
	d,8 d d d d d d d d d d d d-> des-> c-> b->
	bes-> bes bes bes bes bes bes bes aes bes bes bes 
	bes-> b-> c-> cis-> 
	}
	d-> d d d d d d d
	
	d d d d d d d d
	g g g g g g g g
	c, c c c c c c c
	d d d d d d d d
	d-> d d d d d d d
	g g g g g g g g
	c, c c c c c c c
	d d d d d d d d
	d d d d d d d d
	bes bes bes bes bes bes bes bes 
	c c c c c c c c
	d d d d d d d d
	d d d d d d d d
	d d d d d d d d
	d d d d d d d d
	bes bes bes bes bes bes bes bes 
	bes bes bes bes bes bes bes bes 
	d8 d d d d d d d d d d d d-> des-> c-> b->
	bes-> bes bes bes bes bes bes bes aes bes bes bes
	des c b bes g' g g g g g g g
	


}

