%#(set-global-staff-size 16)


\header {
	title = "No. 2"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}



\score{
\header {
	piece = "Lyrical. Brisk / Somber"
}

\new Staff \with {
  instrumentName = #"Flute"
  shortInstrumentName = #""
  midiInstrument = "Flute"
}\relative c'' {
	\key d \major
	\tempo 4 = 100
	e8\fermata\p\< (fis g a b) e,^\markup {\italic accel...} (fis g)
	e-- (fis g a b) e, (fis g)
	e (fis g a b\mf\>) e, (fis g)
	e (fis g a b) e,-- (fis g) \breathe
	\tempo 4 = 140
	e\p (fis g) e-> (fis g a b)
	e, (fis g) e-- (fis g a b)
	e,\< (fis g) e (fis g) fis (g
	a)\sp e (fis g a--) e (fis g
	a\fermata) \breathe e-> (fis g a b) fis--\< (g
	a) fis-- (g a) fis\mf (g) fis (g) \breathe
	fis\p\< (g a) fis (g a) fis\mf (g) \breathe
	e8\fermata\sp (fis g a b) e, (fis g)
	e (fis g a b) e, (fis g)
	e (fis) e-^ (fis) \breathe e-> (fis g a)
	fis\< (g a) fis (g a) g\mf (a) g (a) \breathe
	fis\p (g a b) fis (g a b)
	g\< (a b) g (a b)
	fis\sp (g a b) fis\< (g a)
	fis (g a) fis\mf (g) fis (g)\breathe fis\p\< (g
	a) fis (g a\mf) \breathe e\p\< (fis g a
	
	\tempo 4 = 90
	b1\f)\( ~b2 cis2  b \breathe d ~d cis b1\)
	
	\time 1/4
	r4
	\time4/4
	\break
	
	b1 \(cis b2 \breathe d cis1 b2.\> a4\)
	
	\tempo 4 = 140
	e8\p\fermata\< (fis g a b) e, (fis g)
	e-- (fis g a b) e, (fis g)
	d-^\mf\> (e fis g a) \breathe e\p\< (fis g)
	fis-> (g a) fis (g a) g\mf (a)
	g (a)\breathe g\p\< (a b) g (a b)
	fis (g a b) g\f (a) g (a) \breathe
%	fis\mf\< (g a b) g\f (a) g (a) \breathe
	e\mp\< (fis g a) fis\f (g) fis (g) \breathe
	d\mf\< (e fis g) e\f (fis) e (fis) \breathe
	cis\mf\< (d e fis) d\f (e) d (e) \breathe

	b\pp\< (cis d e fis g a b\f) \breathe
	fis\pp\< (g a) fis (g a) fis (g
	a) fis (g a) fis (g a b)
	a\ff (b) a (b) a (b) a (b) 
	\time 1/4
	r4
	\time4/4

	\tempo 4 = 90
	e,,1\f \( ~e2 fis2 e \breathe g~g fis e1 \)
	
	\time 1/4
	r4
	\time4/4

	e1 \( fis e2 \breathe g fis1 d e\fermata\)
	\bar "|."
}
\layout{}
\midi{}

}


