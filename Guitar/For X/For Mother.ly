\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"For Mother"}}
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

	\new Staff \relative c' {
	\tempo 4 = 70
	\clef "treble_8"
	\partial 8 {e8\3}
	\times 2/3 {e8 d c}
	b8 c g4. e'8\3
	\times 2/3 {e8 d8 c} b8 e\2 g4.
	f8 \times 2/3 {f e e} \times 2/3 {d d c~} c8
	f8 \times 2/3 { g32 (f g16) f8 f } \times 2/3 {e d c }
	b8 c <g e>4. e'8^"accel."
	\times 2/3 {e d c} \times 2/3 {b e g} <g e,>4. f8
	<<{\times 2/3{f e e} \times 2/3{d d c~} c8 f \times 2/3{f8[ e e]}
	\times 2/3 {d [d c]} b8[ c]
	}
	\\
	{ f,2. g4~ \time 6/4 g}>>
	<<{a4 \times 2/3 {b16 c b8 a} g4. }\\{f2 <c e>4.}>>	e'8
	\time 4/4
	\times 2/3{e8 [d c]} b8 c
	<g e c>4. 
	
	e'8
	\times 2/3 {e8 [d c]}  \times 2/3 {b8 e g}
	<<{<g b, g>4. \breathe f8}\\{e,,8 b' e4}>>
	<<{\times 2/3 {f'8 e e} \times 2/3{ d d c ~}c8 f8 
		\times 2/3 {f8 e e}}\\{<f, a>2 f4 <g b>4}>>


	\times 2/3 {d'8 d c} b8 c <<{<g e>4. e'8}\\{b,8 c g4}>>
	\times 2/3 {e''8 [d c]} \times 2/3 {b8 e g}
	<<{<g b,>8 c, g f'}\\{<e,, b' e g>2}>>
	<<{
	\times 2/3 {f''8 e e} \times 2/3{d d c~}c8 f
		\times 2/3 {f e e} 
	\time 5/4
	\times 2/3{d d c}
	}\\{
	\times 2/3 {<b a f>4 <c a f>< d a f>} f,,4
		\times 2/3 {<d' g b>4 <b g' b> <g d' g >}
	}>>
	b'8 c <<{
		\harmonicsOn
		r4 e8^"XII" g r8
		\harmonicsOff
	}\\{<g, e c>4 ~<g e c>4. e'8}>>
	\times 2/3 {e8 [d c]} \times 2/3{b8 e g}
	<<{g4.	}\\{<e, g>2}\\{\shiftOff
	s4.	\harmonicsOn e'8^"XII" g4 \harmonicsOff
	}\\{
	\shiftOff<b,, e,>8 c g4. f8}>>
	<<{\times 2/3 {f''8 e e} \times 2/3{ d d c ~}c4. f8 
		\times 2/3 {f8 e e}}\\
	{<f,, c' f a c>2 <f c' f>8 a' c s <g, b d g b>4}>>
	\times 2/3 {d''8 d c} \times 2/3{b8 e g\2}
	<<{\times 2/3{b4 a8} a4. <g f>8 }\\{
	<a,, c' e>4. g'8 a4
	}>>
	<<{
	\times 2/3 {<g' f>8 <f d> <f d>} \times 2/3{ <e c> <e c> <d b>~}
	<d b>4
	\harmonicsOn
	e8 g
	\times 2/3 {g8 f f} \times 2/3{ e e d}
	\harmonicsOff

	}\\{
	d,2 d2 \times 2/3{ g,4 b d} g,4
	}>>
	
} 
}


