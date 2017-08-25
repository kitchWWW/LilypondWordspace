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
         "Story No. 2" }
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
	\time 4/4
\override Score.BarNumber.break-visibility = ##(#f #f #f)
	<<{ g'4 bes8 a bes4 b4	}\\{c,2 r8 e4.}>>
	<<{ c'4 d b c }\\{ <a d,>2 <a e>}>>
	<<{ a4 bes8 a bes4 f'8 e }\\{ f,2 r8 d4.}>>
	<<{g'4. f8 e d c b }\\{ b,8 a g4. a8 b4 }>> 
	<c' c,>8 a <d d,> g, <e' e,> e f g
	<<{ a8 d, g a g cis, fis g }\\{ f,2 e }>>
	<d a' d f>8 <d b' e g> <d a' d f> <d a' c e> <g b d e> e' e f
	<<{ g4. f8 e d b g }\\{ e8 d b4. a8 b4 }>>
	\bar ":|."
	<c' c,>8 a <d d,> g, <<{<c e c,>2}\\{s8 e,4.}>>
}

\score {
	\midi {}
	\layout {}
	<<
	\new Staff \relative c'{
		\guitar
	}
	>>
}

