

viola = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2

\tempo 4. = 140
	\clef "alto"
	\time 6/8
\repeat percent 5 {	c8\mf^"agitato, sul ponticello" (a' f') a (f a,)}

\repeat volta 3 {
\mark \default
\repeat percent 10 {c, (a' f') a (f a,)}
\repeat percent 5 { c,^"sempre" a' g' a g a,}
\repeat percent 5 { c, bes' g' a g bes,}
\repeat percent 5 { c, bes' f' a f bes,}
\repeat percent 5 { c, bes' e a e bes}
\repeat percent 5 { c, a' f' a f a,}
\repeat percent 12 {c, a' e' a e a,}
\mark \default
\repeat percent 3 { c, a' e' a e a,}
R2.*8
	<a c,>4.--\pp\<^"brightly" r
	<a d,>-- r
	<a c,>-- r
	<a d,>-- r
	<bes' des,>-- r\ff\>
	<a des,>-- r
	<bes des,>-- r
	<a des,>--\pp r
	R2.*8
	\tempo 4 = 140
	\time 3/4
\repeat percent 3 {c,,8^"dulce, sul tasto"\mf a' f' a f a,}
\mark \default
\repeat percent 10 {c,8 a' f' a f a,}
\repeat percent 5 {	c, a' g' a g a,}
\repeat percent 5 {	c, bes' g' a g bes,}
\repeat percent 5 {	c, bes' f' a f bes,}
\repeat percent 5 {	c, bes' e a e bes}
\repeat percent 5 {	c, a' f' a f a,}
\repeat percent 5 {	c, a' e' a e a,}
\repeat percent 7 { c, a' e' a e a,}

\mark \default

\repeat percent 3 { c, a' e' a e a,}
	R2.*8
	<a c,>4--\pp\<^"brightly" c,-. c-.
	<a' d,>-- d,-. d-.
	<a' c,>-- c,-. c-.
	<a' d,>-- d,-. d-.
	<bes'' des,>--\ff\> des,-. des-.
	<a' des,>-- des,-. des-.
	<bes' des,>-- des,-. des-.
	<a' des,>-- des,-. des-.\pp
	R2.*8
	
	\tempo 4. = 140
	\time 6/8
}
\alternative{
{
	\repeat percent 3 {c,8\mf a' f' a f a,}
}
{
	\repeat percent 3 {c,8\mf\> a' f' a f a,}
}
}

\repeat percent 5 {	c,8 a' f' a f a,}
c,2.\p
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
         "Viola" }
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
	\new Staff \relative c {\viola}
}

\pageBreak


