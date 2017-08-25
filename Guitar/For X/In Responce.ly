\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"In Responce"}}
	subtitle = "Solo Guitar"
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

\score {
	\midi {}
	\layout {}

<<
  \new Staff \with {
    instrumentName = #"Guitar"
	midiInstrument = "Acoustic Guitar (nylon)"
  }
  { 
\relative d' {
	\time 2/2
	\key d \major
	\tempo 4 = 120
	\clef "treble_8"
	d,4\6 d cis d e4. d8 cis4 d
	<<{r2 g'4 fis r2 fis4 e
	\ottava #1
	fis' fis e fis g4. fis8 e4 fis d1 cis 
	\ottava #0
	}\\{b,,1 a d ~d r2 g'\harmonic\3_"XII" r a,\harmonic\3_"XII" }>>
	
	
	<<{d4 d cis d e4. d8 cis4 d}
		\\{<a fis>2 fis4 fis e fis g4. fis8}>>
	<<{s1 r4 e'4 ~e4. d8}\\{<e, g>4 fis <d_\5 g b>2 ~d cis}\\{b'1 a1}>>
	<<{d4 d cis d e4. d8 cis4 d <b g>1}
		\\{b,1 cis4 cis b cis d4. cis8 b4 cis}\\{}\\
		{a'2 fis}>>
	<<{r4 e cis' d e2 g4 fis r2 fis4 e}
		\\{<a, a,>1 <g, g' b> <a e' a cis>}>>
	%end of phrase one

	<<{d'4 a' a g a b2 a4 g fis fis g fis2. d4}
		\\{<d, a'>1 d2 cis <d g b> <e a cis> ~ e4 d cis2}>>
	<<{<cis' a>4 d <b g d> cis a4 e cis'4. b8}\\{d,2 b a2 g}>>
	<<{a'4 d d fis fis2. d4 aes d d fis fis2. d4}
		\\{<fis,, a d>1 ~ <fis a d> d' ~ d }>>
	<<{g4 b b d d b b g a1 g'2 fis}\\{d,1 ~d e ~ e}>>
	

	<<{d'4 a' a g a b2 a4 g fis fis g fis2. d4}
		\\{<d, a'>1 d2 cis <d g b> <e a cis> ~ e4 d cis2}>>
	<<{<cis' a>4 d <b g d> cis a4 e b'4. bes8}\\{d,2 b a2 g}>>
	<<{a'4 d d fis fis2. d4 aes d d e e2. d4}
		\\{<fis,, a d>1 ~ <fis a d> d' ~ d }>>
	<<{g4 bes bes d d bes bes g a1 g'2 fis}\\{d,1 ~d e ~e}>>
	<<{d'4 fis fis a a2. fis4 cis fis fis bes bes2. fis4}
		\\{<d,, a' d a'>1 ~<d a' d a'> <d' a'>1 ~<d a'>}>>
	<<{b'4 g' g b b g g b, a1 fis'2 e}\\
		{<g,, d' g>1 ~ <g d' g> <a e'> ~<a e'>}>>

	<<{d'4 d cis d e4. d8 cis4 d}
		\\{d,4 fis fis a a fis fis d}>>
	<<{s1 r4 e' ~e4. bes8}\\{e,4 fis <d_\5 g b>2 ~d cis}\\{b'1 a1}>>
	<d,, d' fis a>1 \bar "|."
}
}
>>
}


