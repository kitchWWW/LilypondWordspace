\version "2.18.2"
\header{
title ="Fire Alarm Moon"
subtitle="String Quartet"
composer = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout{}


<<
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #"Vn.1"
  midiInstrument = "violin"
}{
	
	\relative c'' {
		\tempo 4=70
		\key g \major
		\partial 4 d8 e
		 g2. a8 b 
		 c2. d,8 e8 
		 g2. c8 b 
		 a2. d,8 e
		 g2. a8 b
		 d2 c4 b
		 a8 g e g d g a g
		 cis, g' cis, g' c,4. g8
		 b4 c d4. g,8 b4 c d4. g,8
		b4 c16 b a b c4 d16 c b c
		d4 e16 d c d fis2	



		 g2 b4 g8 e
		d2 (d8) e d e
		g2 (g8) g8 e16 g a b
		d2 c4 b
		 a8 g e g d g a g
		 cis, g' cis, g' c,4. g8


		 ais4 a g2
		 r1
		 
		 %moon theme
		 b'4 eis g2
		 r4 b,8 eis g2
		 r1
		 a,,8 d e f a d f g
		 g8 f e g, a b c d
		 c4 b d c
		 c1
		 c
		 r1 r
		 %r2 e,,8\pp fis e d r4.
		%viola solo time
		r1 r r r r2 r4
		%do it again, but better!
		d,8 e
		 g2. a8 b 
		 c2. d,8 e8 
		 g2. c8 b 
		 a2. d,8 e
		 g2. a8 b
		 d2 c4 b
		
	}	
}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "violin"
}{
	\relative c'' {
		\key g \major
		 \partial 4 r4
		 d2. r4
		 fis2. r4
		 d2. r4
		 r4 e-. e4 r4
		 r4 b8 c g'4 r4
		 b,16 a g e d2.
		 r4 e' d2
		 cis4 cis c4. d,8
		 g4 a b4. d,8
		 g4 a b4. d,8
		g4 fis8 g a4 g8 a
		b4 a8 b d2
		
		e,16 d b a g4 d'4 a8 b
		a4. b8 a b a b
		d4 e16 fis g a g2
		b16 a g e d2.
		c'8 b a b g b c b
		cis, g' cis, g'16 cis, c4. g8
		ais4 a g2 r1


		 %r2 b

		 %moon theme
		r4 r r \times 2/3{a16 d' b} r8
		r4 r r \times 2/3{a,16 d' b} r8
		r4 r r \times 2/3{a,16 d' b} r8
		\times 2/3{a,16 d' b} r8 r4 \times 2/3{a,16 d' b} r8 r4
		d,8 e gis a d, e gis a
		g'4. c,8 a e g a
		%f1
		f'4 e g f
		f1
		r r
		%r2 c'8\pp d c b r4.
		%viola solo time
		r1 r r r r2 r4
		%do it again, but better!
	}	
}

\new Staff \with {
  instrumentName = #"Viola "
  shortInstrumentName = #"Vla. "
  midiInstrument = "viola"
}{
	\relative c' {
	\clef "alto"
	\key g \major
		\partial 4 r4
		b2. r4
		e2. r4
		b2. r4
		r4 c-. c r
		r4 g8 a d4 r4
		d4. b8 g2
		r4 c b2
		ais4 ais a2
		r1 r1 r1 r1
		d,8 e g a b a g e 
		d e d e d e g a
		b a g d e g a e
		d'4. b8 g2
		d16 e g8 d16 e g8 d16 e a8 c,8 e g4 g g2 
		g4 fis d2
		r1
		
		%moon theme
		e1\mordent
		r4 r r8 d' c ais
		r1 r1
		e'8 f a, b e d g, fis
		a1
		<ais d>
		%\clef "treble"
		%c''4 b d c
		\clef "alto"
		dis4 d c ais 
		r1 r
		d,8 e g a b c b a
		e g b d b d g, a
		e g d' e, d g b g
		cis, g' a g c, b' g4
		r1
		%do it again, but better!
		
	}	
}
\new Staff \with {
  instrumentName = #"Cello "
  shortInstrumentName = #"Cel. "
  midiInstrument = "cello"
}{
	\relative c {
	\clef "bass"
	\key g \major
		\partial 4 r4
		r4 g8 g g4 r4 
		d4 fis d r4
		r4 g8 g g4 r4 
		r4 a-. a r
		r4 d,8 e b'4 r4
		fis8 c' fis, c' fis, c' fis, b
		d4 d d2 d4 d d4. g,8
		r4 r4 r8 d'16 d d8 r8
		r4 r4 r8 d16 d d8 r8
		c8 b d b e b d b c b a b g2
		g1 d e2 g4 a
		fis8 c' fis, c' fis, c' fis, b
		d2 d4 d
		d2 d4 d4-. 
		r2 g,4 gis a ais b2
		
		%moon theme
		a1
		r
		a8 d f g a,8 d f g
		r1 r1 %this second rest needs to be some counterpoint
		g,1
		<f ais>
		<a dis>
		%transition, last of the clouds
		ais4. a8 g4 d8 e f4 e d2
		r2^"pizz." d'4. e8
		c4. b4 b4.
		c4. g8 d'2
		a4 cis8 b c,4.	
		g'8^"arco." b'4 a g2
		%do it again, but better!

	}	
}
>>
}


% Old moon theme
% d'4 f g4. a8 cis1
%d,4 f g4. a8 b1	
%d,4 f g4. a8 cis c b a gis g fis f
%d4 f g4. a8 gis1