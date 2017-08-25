\header{
title =""
subtitle="Tenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Tenor = {
\set Score.markFormatter = #format-mark-box-alphabet

	\time 4/4
	\tempo 4 = 160
	\key d \minor
	
\repeat volta 2 {	
	
	<d a>1:32 ~<d a>2:
	<d a>8 <des aes> <c g> <b fis>
	<bes f>1:
	<aes ees>8 <bes f> ~ <bes f>4:
	<bes f>8 <b fis> <c g> <cis gis>
	
	}
	<d a>1:
	R1*2
	d1:
	r2 d2:
	R1*2
	d1:
	r2 d2:	


}


