\version "2.18.0"

\header {
	title = "Waltz mostly in E"
	composer = "Brian Ellis"
	tagline = ""
}

music = \relative c' {
	\key e \major
	\time 3/8
	%actual start
	
	e,8 <b'' gis> <b gis>
	a, <b' gis> <b gis>
	e,,8 <b'' gis> <b gis>
	a, <b' gis> <b gis>
	e,, <b'' gis> <cis gis>
	<dis a a,> e <cis a>
	<cis e,,> <gis e> <gis e>
	<b a,> <a e> <a e>\mordent
	<b e,,> <gis e> <gis e>
	a, <a' e> <a e>
	e, <gis' e> <gis e>
	a, <a' e> <a e>
	e, <b'' gis> <cis gis>
	<dis a a,> e fis
	<gis b,,> <cis, a> <cis a>
	<fis a,,> <cis a> <dis a>
	<cis e,,> <gis e> <gis e>
	<b a,> <a e> <a e>\mordent
	<b e,,> <gis e> <gis e>
	a, <a' e> <a e>
	e, <gis' e> <gis e>
	a, <a' e> <a e>
	e, <b'' gis> <cis gis>
	<dis a a,> e fis
	<gis b,,> <cis, a> <cis a>
	<b' a,,> a gis
	<fis e,,\2> <b, gis> <b gis>
	<a' a,,> gis fis
	<e e,,> <b gis> <b gis>
	a, <cis' a> <cis a>\mordent
	<e e,,>8 <b gis> <b gis>
	a, <cis' a> <cis a>
	<e e,,> <b gis> <b gis>
% Big repeat right here

	a, <b' gis> <b gis>
	e,,8 <b'' gis> <b gis>
	a, <b' gis> <b gis>
	e,, <b'' gis> <cis gis>
	<dis a a,> e <cis a>
	<cis e,,> <gis e> <gis e>
	<b a,> <a e> <a e>\mordent
	<b e,,> <gis e> <gis e>
	a, <a' e> <a e>
	e, <gis' e> <gis e>
	a, <a' e> <a e>
	e, <b'' gis> <cis gis>
	<dis a a,> e fis
	<gis b,,> <cis, a> <cis a>
	<fis a,,> <cis a> e
	<fis b,,> <b, a> <b a>
	<fis'dis,> <b, a> fis'\mordent
	<e e,,> <b gis> <b gis>
	a, <cis' a> dis
	<e e,,> <gis, e> <gis e>
	a, <a' e> <a e>
	e, <b'' gis> <b gis>
	a, <cis' a> <cis a>	
	e,, <b'' gis> <cis gis>
	<dis a a,> e fis
	<gis b,,> <cis, a> <cis a>
	<b' a,,> a gis
	<fis e,,\2> <b, gis> <b gis>
	<a' a,,> gis fis
	<e e,,> <b gis> <b gis>
	a, <cis' a> <cis a>
	<e e,,>8 <b gis> <b gis>
	a, <cis' a> <cis a>



%and new stuff again here

	e,, gis' \glissando e'
	a,, e'' e
	<e e,,> <fis cis> \grace {fis16} e8
	<dis a,> a dis
	<cis e,,> <a e> <a e>
	<b a,> e, a
	<b e,,> <gis e> <gis e>
	a, <a' e> <a e>\mordent
	<b e,,> <gis e> <gis e>
	a, <a' e> <a e>
	e, <b'' gis e>
	<<{
	<cis gis e> \glissando gis'
	}\\{
	s a,,}>>
	<cis' a> <cis a>
	<fis e,,> <cis a> e
	<fis b,,> <b, a> <b a>
	<fis' dis,> <b, a> <b a>
	<fis' b,,> <b, a> <b a>
	<fis' dis,> <b, a> gis'
	<e e,,> <b gis> <b gis>
	<e e,> <b gis> <b gis>
	<e b,> <b gis> <b gis>
	<e gis,,> <b gis> <b gis>
	<e e,,>4.
	<e b gis e b e,>4 <e b gis e b e,>8
	<e b gis e b e,>4.
}

\score {
	\new Staff \music
	\layout {}
	\midi {}
}
