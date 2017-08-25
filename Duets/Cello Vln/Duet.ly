\version "2.18.2"
	
#(set-global-staff-size 22)
	
\header{
title ="Duet"
composer = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout{}

<<
\new Staff \with {
  instrumentName = #"Violin"
  shortInstrumentName = #"vn."
  midiInstrument = "Violin"
}{
	
	\relative c'' {
	\time 2/4
	\tempo 4 = 150
	\set Staff.keySignature = #`(((0 . 6) . ,FLAT)
                               ((0 . 9) . ,FLAT)
                               ((0 . 8) . ,FLAT))
	bes8\< (g f) r des' (bes g) r ees' (des bes) r
	f'->\!\ff\> r des8 bes r des, ees r g' f r bes, des r ees4\!\mp
	~ees4 r
	
	r8 ees8 (des ees bes2\<) ~bes2
	
	~bes8->\! (g f) r des' (bes g) r ees' (des bes) r
	f' r des8 bes r des, ees r g' f r bes, des r ees4
	
	~ees8->\mp (des ees bes) ees (des ees bes) ees (des ees bes)
	r f (g bes) r f (g bes)
	
%diff

	~bes8->\< (g f) r des' (bes g) r ees' (des bes) r
	f\!\ff\> r des8 bes r ees des r g f r bes, des r ees4\!\mp ~ees4 r
	\override TextSpanner.bound-details.left.text = "rall."
	r8 des'8\startTextSpan bes ees des2 ~des\stopTextSpan

	g,4 aes8 des ees4 des bes des8 ees g2 bes8 g bes g bes g4. ~g2
	\mark \markup { \italic { a tempo } }
	f8 (g bes) r ees,
		(f g) r des (ees f) r bes,->
	r ees g r bes, g r des' f r des bes r ees4

	~ees8 des ees bes ees des ees bes ees des ees bes
	r f g bes r f g bes

	ees8 des ees bes ees des ees bes
	r f g bes r f g bes

% and now huge change
	\key f \major
	bes8 (g f d c2) c'8 (bes g f d2) d'8 (c bes g f2)\fermata\>
	~e ~e
	f8\!\<\p g bes c d4\!\mp
	r4
	g,8\<\p bes g d' c4\!\mf
	r4
	f8\<\p g bes d c4\!\f
	r4
	\key e\major
	e,,4 dis fis8 (gis a gis)
	e4 a b8 (cis dis fis) e4 fis dis2 e
	~e
%and now flip the hands
	\key a \major
	r2 e,4.-.\mf fis8 gis4.-- d8 e4.-. fis8 gis4.-- d8 
	fis4.-. gis8 a4.-- b8 a4.-. gis8 a2-- 

	r4 c,8\mp\< (e fis) r e (gis b) r fis (gis
	b\!\ff\>) gis8 [b] r b c r c d r d e r e fis4
	~fis4\!\mp r
	r8 b,4. ~b2
	r2	
	\key f \major
	c,8 (d f g bes2) a\fermata
	


	}	
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Cello"
  shortInstrumentName = #"vc."
  midiInstrument = "Cello"
}{
	\relative c {
	\clef "bass"
	\key a \major
	r4\< c,8 (e fis) r e (gis b) r fis (gis
	b\!\ff\>) 
	\override TextSpanner.bound-details.left.text = "sul C"
	gis8\startTextSpan b r b [c] r c d r d e r e fis4\!\mp\stopTextSpan
	~fis4 r
	r8 b,4.\p ~b2
	r2	
	r4 c,8 (e fis) r e (gis b) r fis (gis
	b) gis8 [b] r b c r c d r d e r e fis4

	r2 e4.-.\mf fis8 gis4.-- d8 e4.-. fis8 gis4.-- d8 

%diff

	c8-> r c8 (e fis) r e (gis b) r b (gis
	fis) e d r c b  r a gis r gis fis r e c4 ~c4 r
	r2 r

%time sig

	%next segment rythem and directon partyly from bt 22
	r4 fis'8 gis a4 gis fis gis8 a e4 d8 c d2 ~d ~d8 c4. ~c2
	
	r4 c8 (e fis) r b, (c e) r gis, (b c) b [c]
	r c d r d e r e fis r fis gis4 

	r2 e4.-. fis8 gis4.-- d8 e4.-. fis8 gis4.-- d8 
	fis4.-. gis8 a4.-- b8 a4.-. gis8 a2-- 
	
%big huge change
	\key e \major
	e4 dis fis8 (gis a gis)
	e4 a b8 (cis dis fis) e4 fis dis2\fermata e
	~e
	r2
	e,,8\<\p fis a b cis4\!\mp
	r4
	fis,8\<\p a fis cis' b4\!\mf
	r4
	e8\<\p fis gis cis\!\f	
	\key f \major
	bes8 g f d c2 c'8 bes g f d2 d'8 c bes g f2
	~e2
	~e2
%and now flip the hands
	\key aes \major
	ees8\mp (des ees bes) ees (des ees bes) ees (des ees bes)
	r ees (f g) r ees (f g)
	ees (des ees bes) ees (des ees bes)
	r ees (f g) r ees (f g)

	bes8 (g f) r des' (bes g) r ees' (des bes) r
	f'-> r des8 bes r des, ees r g' f r bes, des r ees4
	~ees4 r
	r8 ees8 (des ees bes2) ~bes2
	\key e \major
	e,4 dis cis8 (b cis dis f2\fermata)
	\bar "|."
	
	}	
}
>>
}