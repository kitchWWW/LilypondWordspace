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
	\tempo 4 = 110
\repeat volta 2 {	
	d4. g8:32 ~ g2:
	e4. a8: ~ a2:
	d,4. g8: ~ g2:

}
\alternative {
{
	e4. a8:32 ~ a2:
}{
	<c, b'>8 <c b'> <c b'>4 <c b'>2
}
}

	\bar ".|:"

	<f, f'>4\mp \mark \default <f f'>8 <f f'> <f f'>4 <f f'>8<f f'>8
	<g g'>4 <g g'>8 <g g'> <g g'>4 <g g'>8 <g g'> 
	<f f'>4 <f f'>8 <f f'> <f f'>4 <f f'>8<f f'>8
	<g g'>8-> r <g g'>-> <g g'> <g g'>2
	<f f'>4 <f f'>8 <f f'> <f f'>4 <f f'>8<f f'>8
	<g g'>4 <g g'>8 <g g'> <g g'>4 <g g'>8 <g g'> 
	<f f'>4 \< <f f'>8 <f f'> <f f'>4 <f f'>8 r
	<g g'>8\f -> <g g'>8-> <g g'>8-> <g g'>-> <g g'>4 -> <g g'>\mp
	<f f'>4 <f f'>8 <f f'> <f f'>4 <f f'>8<f f'>8
	<g g'>4 <g g'>8 <g g'> <g g'>4 <g g'>8 <g g'> 
	<f f'>4 <f f'>8 <f f'> <f f'>4 <f f'>8<f f'>8
	<g g'>8-> <g'>8 <g> <g> <g>2:^"To Coda"
	
	\mark \default
	
	<d f>8.\f  <d f> <d f>4. r4
	<g, b>8. <g b> <g b>4. r4
	<b e>4 <b e>8 <b e><b e>4 <b e>8 <b e>
	<a e'>4 <a e'>8 <a e'> <a e'>4 <a e'>8<a e'>

	<d f>8. <d f> <d f>4. r4
	<g, b>4 <g b>8 <g b>4. r4
	<b e>4 <b e>8 <b e><b e>4 <b e>8 <b e>
	<a e'>4 <a e'>8 <a e'> d4 c4

	\bar ":|."
	
	    \once \override Score.RehearsalMark #'font-size = #4
    \mark \markup { \musicglyph #"scripts.coda" }
	
	<<{e8. [ e8. ]}\\{s8 \mark \default}>> d4. g,8 a | % 24
    d8. [d] c4. g8 a
	c4 d8 b8 ~b16 a16 g8 ~ g g8 | % 22
    d'4  c2.
	
	e8.  [  e8. ] d4. g,8 a | % 24
    g'4  b,8 c8 ~c16 b a8 g8 a  | % 25
    c4  d8 b8 ~b16 a16 g8~ g g8 | % 26
    d4  c2.:  ~c1: ~c1: ~ c1:


     	
	\bar "|."

	
}


