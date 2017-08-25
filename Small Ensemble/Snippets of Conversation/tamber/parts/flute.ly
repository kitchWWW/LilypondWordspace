

flute = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2

	\tempo 4. = 140
	\time 6/8
	R2.*5	
\repeat volta 3 {
\mark \default
\repeat tremolo 12 c16\pp\<~
\repeat tremolo 12	c16 
\repeat tremolo 12	d\f 
\repeat tremolo 12	c\> ~
\repeat tremolo 12	c ~
\repeat tremolo 12	c ~
\repeat tremolo 12	c
	R2.*3\pp
\repeat tremolo 12 e16\<
\repeat tremolo 12 d
\repeat tremolo 12 c\ff
\repeat tremolo 12 d\>
\repeat tremolo 12 e
\repeat tremolo 12 e~
\repeat tremolo 12 e 
	R2.*3\pp
\repeat tremolo 12 d16\<
\repeat tremolo 12 e
\repeat tremolo 12 f\f
\repeat tremolo 12 a\>
\repeat tremolo 12 f
\repeat tremolo 12 a ~
\repeat tremolo 12 a
	R2.*3\pp
\repeat tremolo 12 f16\< ~
\repeat tremolo 12 f
\repeat tremolo 12 g
\repeat tremolo 12 a
\repeat tremolo 12 b
\repeat tremolo 12 c\ff\> ~
\repeat tremolo 12 c
	R2.*3\pp
\repeat tremolo 12 e16\<
\repeat tremolo 12 f
\repeat tremolo 12 g\ff
\repeat tremolo 12 f\mf\<
\repeat tremolo 12 g\ff
\repeat tremolo 12 a\> ~
\repeat tremolo 12 a
\mark \default
	R2.*3\pp
	\repeat percent 4 {	c,,8\mf _(a' f') f,, (a c) }
	\repeat percent 4 {	des8 _(bes' f') f,, (bes des) }
	\breathe
	\repeat percent 4 {	c8 _(a' f') f,, (a c)  }
	\repeat percent 4 {	des8 _(bes' f') f,, (bes des)  }
	\breathe
	\repeat percent 4 {	c8 _(a' f') f,, (a c) }
	\repeat percent 2 {	des8 _(bes' f') f,, (bes des) }
	r2. r2.
	\tempo 4 = 140
	\time 3/4
	R2.*3
\mark \default
c2.\< (~c d\ff\> c ~c  ~c  ~c)
	R2.*3\pp
e2.\< (d c\ff\> d e ~e ~e)
	R2.*3\pp
d2.\< (e f\ff\> a\mf f\ff\> a ~a)
	R2.*3\pp
f2.\< ( ~f g a b c\ff\> ~c)
	R2.*3\pp
e2.\< (f g\ff f\mf\< g\ff a\> ~a)

\mark \default
R2.*3\pp
	\repeat percent 4 {	c,,8\mf (a') a, (f) c' (a')}
	\repeat percent 4 {	des,8 _(bes') bes, (f) des' (bes')}
	\repeat percent 4 {	c,8 (a') a, (f) c' (a')}
	\repeat percent 4 {	des,8 _(bes') bes, (f) des' (bes')}
	\repeat percent 4 {	c,8 (a') a, (f) c' (a')}	\repeat percent 2 {	des,8 _(bes') bes, (f) des' (bes')}
	r2. r2.
	\tempo 4. = 140
	\time 6/8

}
\alternative{
{
	r2. r2.
	\repeat tremolo 12 c,16\pp\<
}
{
	r2.\! r2.
	\repeat tremolo 12 c16\mp\<
}
}
	
	\repeat tremolo 12 d16\f\>
	\repeat tremolo 12 c16 ~
	\repeat tremolo 12 c16\pp\!

R2.*3
	
\bar "|."
}


\score {
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Perspective" }
subtitle = "  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Flute" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
tagline = ""
}

	%\midi {}
	\layout {indent = 0}
	\new Staff \relative c'' {\flute}
}

\pageBreak

