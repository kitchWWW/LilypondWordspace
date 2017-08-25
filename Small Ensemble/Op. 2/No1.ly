\version "2.18.2"
\header{
title ="A Visit to Friends"
subtitle="for Ukulele, Violin, and Cello"
composer = "Brian Ellis"
tagline = ""
}
\score{
\midi {}
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
<<

\new Staff \with {
  instrumentName = #"Ukulele "
  shortInstrumentName = #"Uke "
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c''{
	\tempo 4 = 140
	\key g \major
	\partial 8 d8
	c16 (b c8) a8 b g4. d'8
	c16 (b c8) a8 b g4. d'8
	c16 (b c8) a8 b c2
	c8 g a b c4. b8
	a16 (g a8) a b g4. 
	
	d'8
	c16 (b c8) a8 b g4. d'8
	c16 (b c8) a8 b g4. d'8
	c16 (b c8) a8 b c2
	c8 g a b c4. b8
	a16 (g a8) a b g4. 
	a8

%end of intro
	b g c g d' g, g g
	b g c g d' g, g g
	b g c g d' g, b g c g a g
	g g g g
	<b g> g <c a> g <d' b> g, g g
	<b g> g <c a> g <d' b> g, g g
	<b g> g <c a> g <d' b> g, <b g> g
	<<{c16 (b c8)	}\\{a4}>>
	<e' c>8 <d b> <b g>4 <g g d>4\fermata
% cello solo time
	r8 r r <d' b> <c a>2 
	r2 d8 c g a (a2.) r4 r1
	r8 r r <d b> <c a>2 
	r2 d8 c g a (a2.) r4 r2 r4 r8 d
%melody theme again
	c16 (b c8) a8 b g4. d'8
	c16 (b c8) a8 b g4. d'8
	c16 (b c8) d8 c b16 (a b8) c b 
	a16 (g a8) b a g4. d'8
	c16 (b c8) a4 g2
%play time with Violin
	e'16 (d e8) fis e d4. r8
	r2 r8 d, fis a 
	g16 (fis g8) g16 (fis g8) a2 
	r2. <g d g b>4-.
	}
}

\new Staff \with {
  instrumentName = #"Violin"
  shortInstrumentName = #"Vln."
  midiInstrument = "violin"
}{
	\relative c' {
	\key g \major
	r8
	r2 r8 d g r
	r2 r8 d g r
	r2 r8 e fis g
	a16 (b a4.) c,8 d e g 
	d4 a g2
	
	r2 r8 d' g r
	r2 r8 d g r
	r2 r8 e fis g
	a16 (b a4.) c,8 d e g 
	d4 a g2

%end of intro
	r1 r r r
	b'4. a8 d2
	b4. a8 d2
	b4. a8 d a d, g a d, fis d r4 <g d>\fermata

% cello solo time
	r1 r1 r1  r4. g'8 fis d c b 
	g1 g8 a c b g2 r1  r4. g'8 fis d c b 
%main theme again
	g2 r8 d g r
	g2 r8 d g r
	g2 r8 e fis g
	a16 (b a4.) c,8 d e g 
	d4 a g2
%play time with the violin
	r2 r8 d' g b
	c16 (b c8) d a b2
	r2 r8 d c a 
	b16 (ais b8) b16 (ais b8) g8 r g4-.
	
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
	\partial 8 {r8}
	
	g2 (g8) d g a
	g2 (g8) d g a
	b2 (b8) g a b
	c8 g' c, g' d g d g
	a2 g8 b, g4

	g2 (g8) d g a
	g2 (g8) d g a
	b2 (b8) g a b
	c8 g' c, g' d g d g
	a2 g8 b, g4


%end of intro
	b8 b  c  c d d g, g 
	g g  b b d d g g 
	g, g  g' g g, g  g' g 
	g g g g  b  b g  g
	
	b,16 b b b c c c c d d d d g, g g g
	g g g g b b b b d d d d g g g g
	g,16 g g g g' g g g g, g g g g' g g g
	
	
	g2 r4 <g b>\fermata

% cello solo time
	g,8 b8 (b2.)
	g8 b g d' (d2)
	g,8 b c e f a f fis a2 (a8) b a d,
	g,8 b8 (b2.)
	g8 b g d' (d2)
	g,8 b c e f a f fis a2 (a8) b a d,
%main theme again
	g,2 (g8) d g a
	g2 (g8) d g a
	b2 (b8) g a b
	c8 g' c, g' d g d g
	a2 g8 b, g4
%play time with Violin
	r1 r r r2. d4-.

	}	
}

>>
}