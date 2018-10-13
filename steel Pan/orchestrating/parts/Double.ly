\header{
title =""
subtitle="DoubleTenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Double = {
\set Score.markFormatter = #format-mark-box-alphabet
 \mark \default
	\time 4/4
	\tempo 4 = 122
	\key f \major
	<f c>1
	<f d>2
	<f c>2
	<f d>2
	<f c>2
	<g c,>2
	<f c>2

\bar "||" \mark \default
	<f c>1:32
	<f d>2:
	<f c>2:
	<f d>2:
	<f c>2:
	<g c,>2:
	<f c>2:

\bar "||" \mark \default
	r8 <f c> <f c> <f c>
	r8 <f c> <f c> <f c>
	r <f d><f d><f d>
	r <f c><f c><f c>
\bar "||" \mark \default
	\xNotesOn	
	r4 bes^"hit rim" r bes r bes r bes
	\xNotesOff

\bar "||" \mark \default
	c,4 d e f bes a8 g f g a4

\bar "||" \mark \default
	r4 f r c' r d8 c8~c2:

\bar "||" \mark \default
	c,4 c a' a bes bes a2:

\bar "||" \mark \default
	f1: ~f1:

\bar "||" \mark \default
	f,4^"D. Ten. Solo" f c' c d d c2:

\bar "||" \mark \default
	f4 f c' c d d c2:

}

