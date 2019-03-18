\header{
title ="The Secret Wedding"
subtitle="from BRAVEHEART"
composer = "James Horner"
arranger = "arr. Brian Ellis"
tagline =""
}

#(set-global-staff-size 24)

\paper{
  left-margin = 2.5\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-page-number = ##f
%	#(set-paper-size "letter" 'landscape)
}


\score{
\midi {}
\layout{}
%\unfoldRepeats {
\new StaffGroup

<<
\new Staff \with {
  instrumentName = #"Oboe"
  midiInstrument = "Oboe"
}{
	
	\relative c'' {
	\key a \minor
	\tempo 4 = 50
	\time 4/4
	\partial 4	
	r4
	R1 * 9
	r2. 
	
	
	a8\p ( c d4-- e2) a,8( c
	d4-- e g4. d8
	c2.) a8\< (c
	d4 e g4. e8
	a2.\mp) b4\< (
	c4.\mf\>) b16 (a b4.) a8 (
	e4.) f8 (a,4\mp) a8 (b
	c4. b16 a f4-- g
	a2.)
	
	
	e8\mp \(g 
	\grace b8 (a4.) c8 b4 \grace b8 (a8) g
	g4. \grace b8 (a8) e4\) e8 \(g
	\grace b8 (a4.) c8 b4 \grace b8 (a8) g
	g4 \grace b8 (a2) \) e'8\< (g
	a4\f\>) a8 (g d4) c8 \(d
	\grace f16 (e4) \)
	d8 (c a4\fermata\mf ) e8\p \( g 
	\grace b8 (a4.) c8 b4 \grace b8 (a8) g
	g4 b4. \) r8 \grace b8 (a16) g b a
	~ a1
	~a\fermata
	\bar "|."
	}	
}

\new Staff \with {
  instrumentName = #"Guitar"
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c' {
	\key a \minor
	\tempo 4 = 50
	\clef "treble_8"
	\time 4/4
	\partial 4	
<<{
	a8\mp c d4 e2 a,8 c
	d4 e g4. d8
	c2. a8 c
	d4 e g4. e8
	a2. b4
	c4. b16 a b4. a8
	e4. f8 a,4 a8 b
	c4. b16 a f4 g
	a4

}\\{
	r4
	<a, e' a>1
	<a e' a>2 <d g b>
	<a e' a>1
	<a e' a>2 <d g b>
	<a c' f>1
	<a e'' a>2
	<d g b>
	<f a c>
	<c f>
	<a e' a>2
	d2
	
}>>
	<a e' a>4\arpeggio \pp\<
	<a e' a c>4\arpeggio
	<a e' a c e>4\arpeggio
	<a e' a c e>4\arpeggio
	a4 ^\markup{\italic{"sim."}} \mp
	a
	a
	
	a a a a
	a a <g b d g b g'>\arpeggio g
	<a e' a c e>4\arpeggio
	a a a
	a a <g b d g b g'>\arpeggio g
	<f c' f a c f>\arpeggio f f f
	<a e' a c e>4\arpeggio a <g b d g b g'>\arpeggio g
	<f c' f a c f>\arpeggio f f f
	<e b' e g b e> \arpeggio e  <f a d a' d f>\arpeggio f
	<a e' a c e>4\arpeggio
	a a  <g b d g b g'>\arpeggio
	<<{
	f'8 g a f g  a b g 
	}\\{
	<f, c'>2 <g b d>
	}>>

	<<{
	a'16 e a e b' e, b' e, c' e, c' e, a e a e
	}\\{
	a,1
	}>>
	
	<<{
	f'8 g a f g  a b g 
	}\\{
	<f, c'>2 <g b d>
	}>>
	
	<<{
	a'16 e a e b' e, b' e, c' e, c' e, a e a e
	}\\{
	a,1
	}>>
	
	<f c' f a c f>8\arpeggio c'' f c
	<g, b d g b g'>\arpeggio b' g' b,
	
	<c, e g c e>\arpeggio c' e c
	<a, e' a c e>4\arpeggio \fermata
	

	r4 
	<<{
	f'8 g a f g  a b g 
	}\\{
	<f, c'>2 <g b d>
	}>>
	
	<<{
	a'16 e a e b' e, b' e, c' e, c' e, a e a e
	}\\{
	a,1
	}>>
	
	\times 2/3 {e'8 a, e}
	\times 2/3 {a' e a,}
	\times 2/3 {c' a e}
	\times 2/3 {e' c a}
	a'1\harmonic ^"IV"\fermata
	\bar "|."
	}
}
>>
%}


}