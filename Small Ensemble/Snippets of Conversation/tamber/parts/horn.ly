

horn = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2

	\tempo 4. = 140
	\time 6/8
	R2.*5
\repeat volta 3 {
\mark \default
	R2.*5
	f,2.\pp^"Stopped"\< ~f e\f f\> ~f ~f ~f\pp
	R2.*3
	bes2.\pp\< ~bes a\f bes\> ~bes ~bes ~bes\pp
	R2.*3
	d2.\pp\< ~d c\f d\> e f ~f\pp
	R2.*3 a,2.\pp\< b c\ff\> b a ~a ~a\pp
	R2.*3
	c2.\mp\> ~c
\mark \default
	a4.^"Open"\p\< f a f a f
	c'\mf (a c d) c (a c d)
	f,\f (des f bes) f (des f bes)
	c\mf (a c d) c (a c d)
	f,\f (des f bes) f (des f bes)
	c\mf (a c d) c (a c d)
	f,\f (des f bes) f (des f bes)
	\tempo 4 = 140
	\time 3/4
	c4\> (d a) c (d a) c (d a)\p
\mark \default
R2.*5
	f2.\pp\< ~f e\f f\> ~f ~f ~f\pp
	R2.*3
	bes2.\pp\< ~bes a\f bes\> ~bes ~bes ~bes\pp
	R2.*3
	d2.\pp\< ~d c\f d\> e f ~f\pp
	R2.*3 a,2.\pp\< b c\ff\> b a ~a ~a\pp
	R2.*3
	c2.\mp\> ~c \breathe
\mark \default
	a4\p\< (f c') a (f c') a (f c')
	c'\mf (a d,) c' (a d,) c' (a d,) c' (a d,)
	f,\f (des bes) f' (des bes) f' (des bes) f' (des bes) 
	c''\mf (a d,) c' (a d,) c' (a d,) c' (a d,)
	f,\f (des bes) f' (des bes) f' (des bes) f' (des bes) 
	c''\mf (a d,) c' (a d,) c' (a d,) c' (a d,)
	f,\f (des bes) f' (des bes) f' (des bes) f' (des bes) 
	\tempo 4. = 140
	\time 6/8
}
\alternative{
{

	a'4.\> f a f a f\p
}{
	a4.\> f a f a f\p
}
}
R2.*6

\bar "|."

}

%#(set-global-staff-size 30)

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
         "Horn" }
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
	\new Staff \transpose f c' { \relative c'{\horn} }
}


\pageBreak


