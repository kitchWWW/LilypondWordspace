\version "2.18.2"
\header{
title ="January Rain"
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
  midiInstrument = "Pizzicato Strings"
}{
	
	\relative c'' {
	\key c \minor
		\time 5/4
	\tempo 4 = 90
	r1 r4
	r1 r4
	r1 r4
	r1 r4
	<ees' c>-.\ppp\< <ees c>-. <d bes>-. <d bes>-. <c aes>-.
	<ees c>^"sempre." <ees c> <d bes> <d bes> <c aes>
	<ees c> <ees c> <d bes> <d bes> <c aes>
	<bes g> <bes g> <bes g> <c f,><aes d,>\!\mp
	<ees' c> <ees c> <d bes> <d bes> <c aes>
	<ees c> <ees c> <d bes> <d bes> <c aes>
	<ees c> <ees c> <d bes> <d bes> <c aes>
	<ees c> <ees c> <d bes> <d bes> <c aes>
	<ees c> <ees c> <d bes> <d bes> <c aes>
	<ees c> <ees c> <d bes> <d bes> <c aes>
	\set Staff.midiInstrument = #"violin"
	c4\p d ees f8 g g4 ~g2 aes4 g f d8 ees f4 bes,8 c d4 bes4
	c,4\mf d ees f8 g g4 ~g2 aes4 g f d8 ees f4 bes,8 c d4 bes4
	c2. r2
	\set Staff.midiInstrument = #"Pizzicato Strings"
	c4\p ees g2.
	c,4 ees g2.
	c,4 ees g2.
	c,4 ees g2.
	c,4 ees g2.
	c,4 ees g2.
	\set Staff.midiInstrument = #"violin"
	c,4\pp d ees f8 g g4 ~g2 aes4 g f d8 ees f4 bes,8 c d4 bes4
	c4 d ees f8 g g4 ~g2 aes4 g f d8 ees f4 bes,8 c d4 bes4
	c4 d ees f8 g g4 ~g2 aes4 g f d8 ees f4 bes,8 c d4 bes4
	c4 d ees f8 g g4 ~g2 aes4 g f d8 ees f4 bes,8 c d4 bes4
	<ees' c> <ees c> <d bes> <d bes> <c aes>
	<ees c> <ees c> <d bes> <d bes> <c aes>
	<bes g> <bes g> <bes g> <c f,><aes d,>
	<ees c> <ees c> <d bes> <d bes> <c aes>
	<ees c> <ees c> <d bes> <d bes> <c aes>
	<bes g> <bes g> <bes g> <c f,><aes d,>
	r1 r4 r1 r4 r2. <fis a>4-.-> <fis a>-.->
	}	
}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"Vn.2"
  midiInstrument = "Pizzicato Strings"
}{
	\relative c'' {
	\key c \minor
	r1 r4
	r1 r4
	g4\p\<^"pizz." (ees' c ees, c)
	g' ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c\!\mf
	g' ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c 
	c' c ees f g
	c, c ees f g
	c, c ees f g
	c,, c ees f g
	c, c ees f g
	c, c ees f g
	ees2. r2
	c2.\p ees4 g
	c,2. ees4 g
	c,2. ees4 g
	c,2. ees4 g
	c,2. ees4 g
	c,2. ees4 g
	c, c ees f g
	c, c ees f g
	c, c ees f g
	c, c ees f g
	c, c ees f g
	c, c ees f g
	g ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c
	g' ees' c ees, c
	r1 r4
	\set Staff.midiInstrument = #"violin"
	r1 ees'4\<\pp\startTrillSpan ~ees4 ~ees2.\!\mf\> ~ees4\!\pp\stopTrillSpan
	r1 c4\<\pp\startTrillSpan ~c4 ~c2.\!\mf\> ~c4\!\pp\stopTrillSpan
	r1 r4
	c,8\f d ees4 ees f8 g
	aes4 bes8 aes bes aes f d ees4 ees4~ ees4 
	c d2.
	}
}

\new Staff \with {
  instrumentName = #"Viola "
  shortInstrumentName = #"Vla. "
  midiInstrument = "viola"
}{
	\relative c' {
	\clef "alto"
	\key c \minor
	r1 r4
	r1 r4
	r1 c4\<\pp\startTrillSpan ~c4 ~c2.\!\mf\> ~c4\!\pp\stopTrillSpan 
	r1 c4\<\pp\startTrillSpan ~c4 ~c2.\!\mf\> ~c4\!\pp\stopTrillSpan 
	r1 r4
	r1 r4
	c,8\f d ees4 ees f8 g
	aes4 bes8 aes bes aes f d ees4 ees4~ ees4 
	c d2.
	c8\f d ees4 ees f8 g
	aes4 c8 bes c bes f g aes4 aes4 ~aes ees8 f g2.
	g4\mp c g ees c
	g' ees' c g ees 
	g4 c g ees c
	c8 d ees4 ees f8 g
	aes4 bes8 aes bes aes f d ees4 ees4~ ees4 
	c d2.
	g2. r2
	r4\p <aes' f>4-. <aes f>-. r <g ees>-.
	r r <aes f>-. r <aes c>-.
	r r <aes f>-. <g bes>-. r
	r <aes f>-. <aes f>-. r r
	<g ees>-. <f d>-. r r <d bes>-.
	<ees g>-. r r <ees g>-. <ees g>-.
	r4 <aes, f>4-. <aes f>-. r <g ees>-.
	r r <aes f>-. r <aes c>-.
	r r <aes f>-. <g bes>-. r
	r <aes f>-. <aes f>-. r r
	<g ees>-. <f d>-. r r <d bes>-.
	<ees g>-. r r <ees g>-. <ees g>-.
	c8\f d ees4 ees f8 g
	aes4 bes8 aes bes aes f d ees4 ees4~ ees4 
	c d2.
	c8 d ees4 ees f8 g
	aes4 c8 bes c bes f g aes4 aes4 ~aes ees8 f g2.
	r1 c4\<\pp\startTrillSpan ~c4 ~c2.\!\mf\> ~c4\!\pp\stopTrillSpan
	r1 g4\<\pp\startTrillSpan ~g4 ~g2.\!\mf\> ~g4\!\pp\stopTrillSpan
	r1 ees4\<\pp\startTrillSpan ~ees4 ~ees2.\!\mf\> ~ees4\!\pp\stopTrillSpan
	r1 r4 r1 r4 r2. <fis a>4-.-> <fis a>-.->
	}	
}

\new Staff \with {
  instrumentName = #"Cello "
  shortInstrumentName = #"Cel. "
  midiInstrument = "Tremolo Strings"
}{
	\relative c {
	\clef "bass"
	\key c \minor
	g2:32\p ~g2.:
	g2:32 ~g2.:
	g2:32 c: ees: g,: c: ees: 
	g,: c: ees: g,: c: ees: g,: c: ees: 
	g,: c: ees: g,: c: ees: g,: c: ees: 
	g,: c: ees: g,: c: ees: 
	g, ees' c ees, c 
	g' ees' c ees, c 
	g' ees' c ees, c 
	c2. r2
	\set Staff.midiInstrument = #"cello"
	f'2.\f c2 d8 ees aes4. g8 f2 ~f4 g4 aes8 bes ees,4 d4 c d8 ees f4
	ees c ees8 f d4 bes g aes8 bes c4 ees8 d c2.
	f2.\f c2 d8 ees aes4. g8 f2 ~f4 g4 aes8 bes ees,4 d4 c d8 ees f4
	ees c ees8 f d4 bes g aes8 bes c4 ees8 d c2.
	f2.\f c2 d8 ees aes4. g8 f2 ~f4 g4 aes8 bes ees,4 d4 c d8 ees f4
	ees c ees8 f d4 bes g aes8 bes c4 ees8 d c2.
	g2:32 c: ees: g,: c: ees: 
	g,: c: ees: g,: c: ees: g,: c: ees: 
	r1 r4 r1 r4 r2. d,4->-. d->-.
	}	
}
>>
}