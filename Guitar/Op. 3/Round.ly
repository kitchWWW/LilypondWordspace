\version "2.18.0"

\header {
	title = "Rondo"
	composer = "Brian Ellis"
	tagline = ""
}


music = \relative c' {
	\key a \major
	e8 b' gis e' e,8 b' gis e'  
	e,8 b' gis e' e,8 b' gis e'
	fis, b a e' fis, b a e'
	gis, b b e gis, b b e
	a, b cis e a, b cis e
	a, b cis e a, b cis e
	b'2 a
	%start of first 4
	<b a,,>8 <e, cis> <b' a,> <e, cis> b' <e, cis> a b
	<b e,,,> <e, d> <b' gis,> <e, d> b' <e, d> a b
	< b fis,> <e, cis> <b' fis,> <e, cis> b' <e, cis> gis a
	<gis d,> <d b> <gis d,> <d b> gis <d b> fis e
	<fis b,,> <b, a> <fis' dis,> <b, a> fis' <b, a> e fis
	<fis e,,> <b, gis> <fis' e,> <b, gis> fis' <b, gis> e cis
	<e b,> <a, fis> dis <a fis> dis <a fis> cis b
	<cis e,,> gis b gis cis b e dis
	%kind of back again
	<e a,,> <cis a> e <cis a> e <cis a> gis' fis
	<e e,,> <b gis> e <b gis> e <b gis> gis' fis
	<fis a,,> <cis a> gis' <cis, a> fis <cis a> gis' a
	<fis b,,> <dis b> fis <dis b> cis' b gis fis
	e b gis b e,2
	%the new part
	e'4. gis,8 b' e,, e' gis,
	dis'4. gis,8 b' dis,, dis' gis,
	gis'4. a,8 <cis fis> a a' gis
	fis4. b,,8 <b' dis> e, fis gis
	a4. <fis' cis>8 a, <fis' cis> gis fis
	gis,4. < e' b>8  gis, <e' b> fis gis
	fis,4. < e' b>8 fis, b e gis
	<<{a4. gis8 fis4 e8 cis}\\{a,1}>>
	<fis'' b,,>8 a, dis, a' dis, a' dis, b'
	<e e,,> gis, e gis cis gis b gis
	<dis' b,> a fis a e fis gis a
	 gis d' e d <gis gis,>4 <d e>


	%Theme again
	<b' a,,>8 <e, cis> <b' a,> <e, cis> b' <e, cis> a b
	<b e,,,> <e, d> <b' gis,> <e, d> b' <e, d> a b
	< b fis,> <e, cis> <b' fis,> <e, cis> b' <e, cis> gis a
	<gis d,> <d b> <gis d,> <d b> gis <d b> fis e
	<fis b,,> <b, a> <fis' dis,> <b, a> fis' <b, a> e fis
	<fis e,,> <b, gis> <fis' e,> <b, gis> fis' <b, gis> e cis
	<e b,> <a, fis> dis <a fis> dis <a fis> cis b
	<cis e,,> gis b gis cis b e dis
	%kind of back again
	<e a,,> <cis a> e <cis a> e <cis a> gis' fis
	<e e,,> <b gis> e <b gis> e <b gis> gis' fis
	<fis a,,> <cis a> gis' <cis, a> fis <cis a> gis' a
	<fis b,,> <dis b> fis <dis b> cis' b gis fis
	e b gis b e,2
	%End of theme again



	% the first part again
	<<{
	r16 e' e e r e e e r e e e r e e e
	r16 e e e r e e e r e e e r e e e
	r16 e e e r e e e r e e e r e e e
	r16 e e e r e e e r e e e r e e e
	r16 e e e r e e e r e e e r e e e
	r16 e e e r e e e r e e e r e e e
	r16 e e e r e e e r e e e r e e e
	r16 e e e r e e e r e e e r e e e
	r16 e e e r e e e r e e e r e e e
	r16 e e e r e e e r e e e r e e e
	r16 e e e r e e e r e e e r e e e
	r16 e e e r e e e gis4 e
	}\\{
	e,4 gis a cis b b b b
	e,4 gis a cis e dis dis dis
	e,4 gis a cis b a gis fis
	e cis' gis cis e, cis' gis cis
	fis, dis' a dis fis, dis' a dis
	gis, e' d e gis, e' gis,4 d'
	}>>

	%Theme again
	<b' a,,>8 <e, cis> <b' a,> <e, cis> b' <e, cis> a b
	<b e,,,> <e, d> <b' gis,> <e, d> b' <e, d> a b
	< b fis,> <e, cis> <b' fis,> <e, cis> b' <e, cis> gis a
	<gis d,> <d b> <gis d,> <d b> gis <d b> fis e
	<fis b,,> <b, a> <fis' dis,> <b, a> fis' <b, a> e fis
	<fis e,,> <b, gis> <fis' e,> <b, gis> fis' <b, gis> e cis
	<e b,> <a, fis> dis <a fis> dis <a fis> cis b
	<cis e,,> gis b gis cis b e dis
	%kind of back again
	<e a,,> <cis a> e <cis a> e <cis a> gis' fis
	<e e,,> <b gis> e <b gis> e <b gis> gis' fis
	<fis a,,> <cis a> gis' <cis, a> fis <cis a> gis' a
	<fis b,,> <dis b> fis <dis b> cis' b gis fis
	e b gis b e,2
	%End theme again


	%and now something new AGAIN!!!
	e8 <e' gis,> dis e <fis a,> a,, <fis'' a,> a,, 
	e'8 <e' gis,> dis e <gis b,> a,, <gis'' b,> a,,
	e'8 <e' gis,> dis e <fis a,> a,, <e'' gis,> a,,
	<dis' fis,> a, <cis' e,> a, <b' e,> a, <a' fis> a, 
	<a' e> e, <a' e> e, <gis' e> e, e4
	e'8 <e' gis,> dis e <fis a,> a,, <fis'' a,> a,, 
	e'8 <e' gis,> dis e <gis b,> a,, <gis'' b,> a,,
	e'8 <e' gis,> dis e <fis a,> a,, <gis'' b,> a,, 
	<a''cis,> a,,  <gis'' b,> <fis a,> <e gis,> a,, <dis' fis> e,,
	<e'' gis,> e, e,2
	fis''8 gis a4 a a b8 a gis1
	gis8 e d e gis,4 <d' e>


%Theme for the last time
	<b' a,,>8 <e, cis> <b' a,> <e, cis> b' <e, cis> a b
	<b e,,,> <e, d> <b' gis,> <e, d> b' <e, d> a b
	< b fis,> <e, cis> <b' fis,> <e, cis> b' <e, cis> gis a
	<gis d,> <d b> <gis d,> <d b> gis <d b> fis e
	<fis b,,> <b, a> <fis' dis,> <b, a> fis' <b, a> e fis
	<fis e,,> <b, gis> <fis' e,> <b, gis> fis' <b, gis> e cis
	<e b,> <a, fis> dis <a fis> dis <a fis> cis b
	<cis e,,> gis b gis cis b e dis
	%kind of back again
	<e a,,> <cis a> e <cis a> e <cis a> gis' fis
	<e e,,> <b gis> e <b gis> e <b gis> gis' fis
	<fis a,,> <cis a> gis' <cis, a> fis <cis a> gis' a
	<fis b,,> <dis b> fis <dis b> cis' b fis gis
	%the falaiy Ending
	<a a,,>8 <e cis> a <e cis> a <e cis> b' a
	<gis e,,>4 e e2
	<gis a,>8 fis cis fis <gis a,>4 <fis cis>
	<e e,,> <b gis> <e, b>2
}

\score {
	\new Staff \music
	\layout {}
	\midi {}
}
