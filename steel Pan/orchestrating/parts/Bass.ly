\header{
title =""
subtitle="Four Bass"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Bass = {
\set Score.markFormatter = #format-mark-box-alphabet
 \mark \default
	\time 4/4
	\tempo 4 = 122
	\key f \major
	\clef bass
	f,1\mp bes2 f2
	bes2\> f c' f,\p
\bar "||" \mark \default
	f2\mf a bes2 a
	bes2\> a <c, c'> f\p
\bar "||" \mark \default
	f2 a bes a
\bar "||" \mark \default
	f'4 c f c bes f' f c
\bar "||" \mark \default
	f,4. a8~a4 a bes4. a8~a4 a
\bar "||" \mark \default
	f2 a bes4. a8 r4 f4
\bar "||" \mark \default
	f2 a bes a
\bar "||" \mark \default
	f4 f c' c d d c2:32
\bar "||" \mark \default
	f,1:\mp bes2: f:
\bar "||" \mark \default
	f4\mf g a f bes f a f
\bar "||" \mark \default
	f2 a bes a
}

