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
	\tempo 4 = 110
\repeat volta 2 {	

	<d d'>4.\f <g d'>8: ~ <g d'>2:
	<e e'> 4. <a e'>8: ~ <a e'>2:
	<d, d'>4. <g d'>8: ~ <g d'>2:

}
\alternative {
{
	<e e'> 4. <a e'>8: ~ <a e'>2:
}{
	<g e'>8 <g e'> <g e'>4 <g e'>2
}
}

	\bar ".|:"

r8 <c, a'>\mp \mark \default <c a'><c a'>r8 <c a'><c a'><d g>
r8 <d g> <d g> <d g> r8 <d g> <d g> <d g> 

r8 <c a'> <c a'><c a'>r8 <c a'><c a'><d g>
<d g>-> r <d g>-> <d g> r8 <d g> <d g> <d g> 
r8 <c a'> <c a'><c a'>r8 <c a'><c a'><d g>
r8 <d g> <d g> <d g> r8 <d g> <d g> <d g> 

r8 <c a'>\< <c a'><c a'>r8 <c a'><c a'> r
<d g>->\f <d g>-> <d g>-> <d g>-> <d g>4-> <d g>\mp
r8 <c a'> <c a'><c a'>r8 <c a'><c a'><d g>
r8 <d g> <d g> <d g> r8 <d g> <d g> <d g> 
r8 <c a'> <c a'><c a'>r8 <c a'><c a'><d g>
r8 <d g>-> <d g>-> <d g>-> r2 ^"To Coda" \mark \default
	
	 
	
	<d c'>8.\f  <d c'>8. <d a'>4. g8 f
	<d g>8. <d g>8. <d g>4. d8 g
	r8 <e g> <e g> <e g> r <e g> <e g> <e g>
	r8 <e a> <e a> <e a> r8 <e a> <e a> <e a> 
	
	<d c'>8. <d c'>8. <d a'>4. g8 f
	<d g>4 <d g>8 <d g>4. d8 g
	r8 <e g> <e g> <e g> r <e g> <e g> <e g>
	r8 <e a> <e a> <e a> d4 c4:32

	\bar ":|."

	    \once \override Score.RehearsalMark #'font-size = #4
    \mark \markup { \musicglyph #"scripts.coda" }
	
	<<{s8 \mark \default}\\{e'8.  [ e8. ] d4. g,16 [ a16 c16 a16 ] | }>>
    d8. [d] c4. g16[ a c a]
	c4 d8 b8 ~b16 a16 g8 ~ g g8 | % 22
    d'4 c2. 
    e8.  [ e8. ] d4. g,16 [ a16 c16 a16 ] | % 24
    g'4  b,8 c8 ~c16 b a8  g16 [ a16 c16 a16 ]  | % 25
    c4  d8 b8 ~b16 a16 g8~ g g8 | % 26
    r2 d4 c4: ~c1: ~ c1: ~ c1:





	\bar "|."
}


