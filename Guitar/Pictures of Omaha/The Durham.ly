\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"The Durham"}}
	subtitle = "Solo Guitar"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c {
	\time 8/8
	\key a \major
	\tempo 4 = 80
	<fis'' e'> 4. <fis e'> ~ <fis e'>4
	<fis e'> 4. <fis e'>  ~<fis e'>4
	<fis e'>1

	\override Staff.TimeSignature #'stencil = ##f 
	\time 30/16
	a,,2_"accel..." a4.. a4. a4 a8. a8
	\time 8/8

	 a [a a a a a a a]
	<<{

	e''1
	fis1
	cis8 (d2..)
	r4. b4. r4
	
	<fis' e'> 4. <fis e'> ~ <fis e'>4
	<fis e'>1
	
}\\{
	a,,8 a a a a a a a a a a a a a a a
	a8 r a a a a a a a a a a a a a a
	a8 a a a a a a a a a a a a a a a
	
}>>
\bar ".|:"
	e''8 (fis) fis fis fis fis fis fis
	e (fis) fis e (fis) fis e (fis)
	cis (d) d d d d d d
	cis (d) d cis (d) d d (e)
	b (cis) cis b cis cis b4
<<{	<fis' e'> 4. <e d'> ~ <e d'>4
	}\\{a,,8 a a a a a a a}>>

<<{	<fis'' e'> 4. <e d'> ~ <e d'>4
	}\\{a,,8 a a a a a a a}>>
	a8 a a a a a a a
\bar ":|."
	<fis'' e'> 4. <fis e'> ~ <fis e'>4
	<fis e'> 4. <fis e'>  ~<fis e'>4
	<fis e'>1

r1\fermata
e1 fis cis8 (d2..) ~d4. b4. r4







} 
}


