\version "2.18.0"

\header {
	title = "Sonata"
	subtitle = "Op. 4 No. 2"
	composer = "Brian Ellis"
	tagline = ""
}

music = \relative c' {
	\time 2/4
	\key d \major
	\partial 4 a
	<d, d'''>4. cis'''8 <b d,>4 a8 g <fis d,>4 e
	<a a,,>4. fis8 <g g, b,>4 e8 d
	<d a d,>4 <cis a a,>
	<e a, e,> e,8 cis'
	<d a d,>4. d,,8 d4. d''8
	<b' g,>4. cis8 <d d, a>4 cis8 b 
	<a a,,>4. fis8  <b d,,>4 a8 g
	<fis d a d,>4 e8 fis <e cis a a,>4 d8 cis
	<e a, e,>4 e,8 cis' <d a d,>4. d,,8 d4
	
	%and here comes the not exposition
	a''8 (b) <d b d,>4 <d b> <e cis> <e cis>
	<fis d> d,, d g''8 (fis)
	<e cis>4 <e cis> <d b> <d b> <cis a> a, a b'8 (cis)
	<d b d,>4 <d b> <e cis> <e cis>
	<fis d>4. d,,8 d4 g''8 fis
	<e cis>4 fis8 (e) <d b>4 e8 (d)
	<c a> d, <fis' a,,>4
	%Second theme of not exposition
	<g e,>8 g, b fis' <e a,,> a, cis d
	<e g, b,> fis <d e,> cis <e cis a a,> b, cis d
	<g' e,>8 g, b fis' <e a,,> a, cis d
	<fis b,,> b, <fis' e,> d <e cis a a,>2
	a,,8 g fis e
	%third theme of non expo
	d <d'' a>\glissando (<fis d>) <fis d> <fis d> <fis d> <fis d> <fis d>
}

\score {
	\new Staff \music
	\layout {}
	\midi {}
}
