\header{
title =""
subtitle="DoubleTenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Double = {
\set Score.markFormatter = #format-mark-box-alphabet

	\time 4/4
	\tempo 4 = 160
	\key d \minor

\repeat volta 2 {	
	<d f>1:32 ~<d f>2:
	<d f>8 <des fes> <c ees> <b dis>
	<bes d>1:
	<aes c>8 <bes d> ~ <bes d>4:
	<bes d>8 <b dis> <c ees> <cis e>
	}
	<d a>1:
	
	r4 a4 d a c4. bes8 bes2: ~bes4 g c4. g8 a1:
	r4 a4 d a c4. bes8 bes2: ~bes4 g c4. g8 a1:
	r4 a d f a4. g8 g2: ~ g4 g c4. g8 a1: ~ a2:
	r4 a d1:~d8 c bes a g f e d cis1:~cis4
	bes bes4. a8 a1: r2 <d f>8 <des fes> <c ees> <b dis>
	<bes d>1:
	<aes c>8 <bes d> ~ <bes d>4: des8 c b bes
	<g bes>1:

}

