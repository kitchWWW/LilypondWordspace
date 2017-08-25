#(set-global-staff-size 24)

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
%  ragged-last-bottom = ##t
  indent = 0.0\cm
}

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Story No. 3" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "For Solo Classical Guitar" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}


guitar = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
  \remove "Rest_engraver"
  \consists "Completion_rest_engraver"
}{
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\time 4/4
	\key e \major
	b'16\5 b\2 e\4 b gis'\3 b, e b 
	bes16 b e b gis' b, e b 
	a16 b e b gis' b, e b 
	aes16 b e b dis b e b 
<<{
	\break
	\bar ".|:"
	e,,16 b''\2 gis'\3 b, e,, b'' gis' b, e,, b'' gis' b, fis' b, gis' b,
	a, b'\2 e\4 b a, b' e b a, b' e b dis b cis b
	e,,16\2 b''\3 gis' b, e,, b'' gis' b, e,, b'' gis' b, fis' b, a' b,
	a, b'\2 dis\4 b a, b' cis b a, b' b b a b gis b
	\break
	\bar ":|."
	e,, b'' gis b e,, b'' gis b e,, b'' gis b fis b e, b' \noBreak
	a, b' dis, b' a, b' e, b' a, b' e, b' fis b e, b' e,,2 b''\rest
	
	\bar "|."
}\\{
	s16 s \teeny \parenthesize a' s s4 s s
	s16 s \parenthesize dis,
}>>
}

\score {
	\midi {}
	\layout {}
	<<
	\new Staff \relative c' {
		\guitar
	}
	>>
}

