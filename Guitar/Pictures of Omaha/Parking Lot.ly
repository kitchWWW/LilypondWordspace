\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"Scott Court Parking Lot"}}
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
\override Staff.TimeSignature #'stencil = ##f 
	\tempo 4 = 70
	\clef "treble_8"
	\time 4/4
	<d d'\harmonic>4\sustainOn (e' fis ais
	_~ais1\fermata)
	\time 5/4
	<a,, a'\harmonic>4 (b' dis b' cis_~
	\time 4/4	
	cis1\fermata)

	\break

	b,4 (d fis fis32 bes fis <fis d> _~fis8
	~fis1)
	\time 5/4
	<d, cis'>32 e' cis cis~  cis1 s8
	\time 4/4
	
	\break

	<d, a'>32 ( cis' a a~ a8
	b32 e b b~ b8
	ees32 aes ees ees ~ ees8
	d32 g d <d d,> ~ d8
	<f,\5 b>1)
	
	\break
	
	<d a'>32 (cis' a a~ a8
	cis32 e cis cis~ cis8
	f32 aes f f ~ f8
	e32 g e <e d,> ~ e8
	<fis, bes d>1\>) <g a d>\!
	
	\break
	
	\time 3/4
	gis,32 (a gis gis ~ gis8
	ais32 e' ais, ais ~ ais8
	fis32 ais fis fis ~ fis8
	\time 4/4
	<a b>1)
	
	\break
	
	\time 4/4
	<d d'\harmonic>4 (e' fis ais
	_~ais1)
	
	\time 5/4
	f,,4( a dis g
	b
	\time 4/4
	cis'1)
	\bar "|."
	
	\pageBreak
	s1

} 
}


