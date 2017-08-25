\header{
title ="Testament"
subtitle="For Ukulele"
tagline=""
composer = "Brian Ellis"
}

melody = {

<<{
	a4 b d e4. g8 e4 d4 b fis a4. b8 a4 a4. b8 a4 a4 fis g
}\\{
	<g g d>2. <g e c> <fis d g> <e cis g'> <e d g> <fis d a'>
}>>

<<{
	a4 b d e4. g8 e4 d4 b g a b d e2 d4 c2 a4 b a fis g g\4 d g2.
}\\{
	<g g d>2. <g e c> <g d g> <fis d a'> s4 b2 s4 g2 <fis d a'>2.
}>>
	
}

\score{
\midi{}
\layout{}

\relative c''{
	\time 3/4
	\tempo 4 = 160
	\key g \major
	\melody
}


}

