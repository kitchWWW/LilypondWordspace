\header{
title ="Barre Chord Study"
composer = "Brian Ellis"
tagline = "Lilypond Music Engraving ©2014"
}

\new Staff
<<
	\relative c''{
%put all the stuff here
\time 3/4
\key d \major




	<d, a' cis fis>2.^"II"
	<fis'>8^"IV" (e) cis (b) gis (fis) dis4
	<d a' cis fis>2
	b8^"VII" a'cis, a' e a fis a
	e a cis, a' b, a' d' a, b' a, a' a, fis' a, g' a, e' a, d2
	<d, a' cis fis>2.
	<<{
	a''4. fis8 e4 d e fis cis2. cis4 d e
	}\\{
	d,2. b a a
	}>>
	<<{
	a''4 fis e4 d8 d, e' d, fis' d, <a' cis fis>2.
	}\\{
	d,2. b d 
	}>>
	<d fis'>2^"II" <a' cis>4
	<a, fis''>2 <e' a cis>4
	<e, fis''>4 <b' e a cis>4 a''
	gis8 (fis) e (cis) b (a) fis (e) cis (b) e,4
	fis <b a'> <cis' fis> <b, a'>2.
}
>>
 