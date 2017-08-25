\version "2.18.0"
#(set-global-staff-size 15)


\header {
	title = "Prelude No. 1"
	subtitle = "Lamp Posts"
	subsubtitle = "For Guitar"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c'{
	\numericTimeSignature
	\key e \major
	\time 4/4
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(1 1 1 1)
	\clef "treble_8"
	\tempo 4 = 80
	e16 e gis e e e gis e e e gis e e e gis e 
	dis e gis e dis e gis e dis e gis e dis e gis e 
	d e gis e d e gis e d e gis e d e gis e 
	cis e gis e cis e gis e cis e gis e cis e gis e \breathe
	
\break

	e e gis e e e gis e e e gis e e e gis e 
	dis e gis e dis e gis e dis e gis e dis e gis e 
	d e a e d e a e d e a e dis e a e 
	e e gis e e e gis e e e gis e e e gis e \breathe

\break
	
	e e gis e e e gis e e e gis e e e gis e 
	dis e gis e dis e gis e dis e gis e dis e gis e 
	d e gis e d e a e d e a e dis e a e 
	e e a e e e gis e e e gis e e e gis e \breathe

\break
	
	e16 e gis e e e gis e e e gis e e e gis e 
	dis e gis e dis e gis e dis e gis e dis e gis e 
	d e gis e d e gis e d e gis e d e gis e 
	cis e gis e cis e gis e cis e gis e cis e gis e
	\break
	d e fis e d e fis e d e fis e g e fis e
	cis e fis e cis e fis e cis e fis e g e fis e
	\break

	c e fis e c e fis e c e fis e g e fis e
	b e fis e b e fis e b e fis e b e fis e 
	c e e e c e e e c e e e c e fis e 
	e16 e gis e e e gis e e e gis e e e gis e 

\break	

	e16 e gis e e e gis e e e gis e e e gis e 
	dis e gis e dis e gis e dis e gis e dis e gis e 
	d e gis e d e gis e d e gis e d e a e 
	cis e gis e cis e gis e cis e gis e cis e gis e
\break
	c e fis e c e fis e c e fis e c e f e 
	b e e e b e e e b e e e dis e e e 
	bes e e e bes e e e bes e e e dis e e e 
	a, e' e e a, e' e e a, e' e e a, e' e e 
\break
	gis, e' cis e gis, e' cis e gis, e' cis e gis, e' cis e 
	gis, e' b e gis, e' b e gis, e' b e gis, e' b e 
	gis, e' cis e gis, e' cis e gis, e' cis e gis, e' cis e 
	gis, e' b e gis, e' b e gis, e' b e gis, e' b e 
\break	
	e, e' b e gis, e' b e gis, e' b e a,, e'' b e 
	e,, e'' b e gis, e' b e gis, e' b e a,, e'' b e 
	e, e' b e gis, e' b e gis, e' b e a,, e'' b e 
	e,, e'' b e gis, e' b e gis, e' b e a,, e'' b e 
\break
	e, e' gis, e' e, e' gis, e' e, e' gis, e' e, e' gis, e' 
	b e gis, e' b e gis, e' b e gis, e' b e gis, e' 
	e e b e e e b e e e b e e e b e 
	gis e e e gis e e e gis e e e gis e e e 
\break	
	gis b e, b' gis b e, b' gis b e, b' gis b e, b' 
	gis b e, b' gis b e, b' gis b e, b' gis b e, b'
	gis b e, b' gis b e, b' gis b e, b' gis b e, b' 
	gis b e, b' gis b e, b' gis b e, b' gis b e, b' 
	e,,,1 e'''
	\bar "|."


}
}


