\version "2.18.0"
#(set-global-staff-size 18)


\header {
	title = "Elegy"
	subtitle = "Theme and Variations"
	subsubtitle = ""
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  print-all-headers = ##t
}

\score {
	\midi {}
	\layout {}
	\header {
	title = ""
	subtitle = ""
	composer = ""
	tagline = ""
	piece = "Theme"}
	\new Staff \relative c'{
	\numericTimeSignature
	\key d \minor
	\time 2/4
	\clef "treble_8"
	\tempo Durge 4 = 45
	
\repeat volta 2{
	<<{
	f2 a bes a f e cis d4 e
	}\\{
	d,4 <d' a> d, <d' f> a, <d' f> d, <d' f> d, <d' a>
	e, <gis b> a, <e' g> cis <f g>
	}>>	

}
\repeat volta 2{
<<{
	f'2 e4. e8 a4. g8 f e d cis d2 cis4 e d2
	}\\{
	d,4 <d' a> c, <d' a>
	<g,, bes' d>2 f'
	a,4 <a' f> a, <g' e> 
	<f a> a,
	}>>	
}	
	\alternative {
	{d2}
	{d,}
	}
	\bar "||"	
} 
}


\score {
	\midi {}
	\layout {}
	\header {
	title = ""
	subtitle = ""
	composer = ""
	tagline = ""
	piece = "Var. 1"}
	\new Staff \relative c'{
	\numericTimeSignature
	\key d \minor
	\time 12/8
	\clef "treble_8"
	\tempo Romance 4. = 90
\repeat volta 2{
	<<{
	f8 d a f' d a f' d a f' d a 
	a' f d a' f d a' f d a' f d
	bes' f d bes' f d c' f, d bes' f d
	a' f d a' f d a' f d a' f d
	f8 d a f' d a f' d a f' d a 
	e' b gis e' b gis fis' b, gis e' b gis
	cis g e cis' g e cis' g e cis' g e 
	d' g, f d' g, f dis' g, f e' g, f 	 
}\\{
	d1. d, a' d, d'
	e a, cis
	}>>
}
\repeat volta 2{
<<{
	f'8 d a f' d a f' d a f' d a 
	e' d a e' d a f' d a e' d a 
	a' d, bes a' d, bes a' d, bes g' d bes
	f' bes, f e' bes f d' bes f e' bes f
	d' a f d' a f d' a f d' a f
	cis' g e cis' g e e' g, e f' g, e
	d' a f d' a f d' a f d' a a,
}\\{
	d1. c g s a a d,

}>>
}
d'1.
	\bar "||"
} 
}

\pageBreak

\score {
	\midi {}
	\layout {}
	\header {
	title = ""
	subtitle = ""
	composer = ""
	tagline = ""
	piece = "Var. 2"}
	\new Staff \relative c'{
	\numericTimeSignature
	\key d \minor
	\time 3/4
	\clef "treble_8"
	\tempo Waltz 4 = 180
\repeat volta 2{
	<<{
	f2 f8 \glissando (a) a2. bes2 c8 (bes) a2.
	f2 g8 (f) e2 fis8 (e) cis2. d2 dis8 e
	f2. e a bes4 a g f2. f2 g8 (f) d2.
}\\{
	d,4 <d' a> r d,, <d'' f> <d f> a, <d' f> r d,, <d'' f><d f> d, <d' a> r
	e, <gis b> r a, <e' g> <e g> cis <f g> r
	d4 <d' a> <d a> c, <g' c> <g c>
	f, <c'' e> <c e> a,2.
	d4 <d' a> <d a>
	a, <g' cis> r
	d, <f' a> a,
	}>>
}

\repeat volta 2{
<<{
	e'''2 d4 c bes a a2 g8 (gis) a2.
	<g e>2 <g e>4 <bes g> <f a> <g e> <f d>2. <d a>
	<f d a>2. <fis d a> a2 g4 f e d d2 d4 cis2 b8 (cis) d2.
		

}\\{
	<d,, f'' a>2. <d' f'> d,4 <d' e'> r d, <d' f'> <d f'>
	r a r s2. r4 d4 d r d d r d d r c c <g bes' d>2. s
	a4 <f' a> r a, <e' g> r d, <f' a> a,

}>>
}
	d,2.

	\bar "||"
} 
}




\score {
	\midi {}
	\layout {}
	\header {
	title = ""
	subtitle = ""
	composer = ""
	tagline = ""
	piece = "Var. 3"}
	\new Staff \relative c'{
	\numericTimeSignature
	\key d \minor
	\time 2/4
	\clef "treble_8"
	\tempo Frantic 4 = 90
\repeat volta 2{
	<<{
	r16 <d, f> <d f> <d f> <d f> <d f> <d f> <d f>
	r16 <d f> <d f> <d f> <d f> <d f> <d f> <d f>
	r16 <d f>  <d f>  <d f> r <d f> r <d f>
	r16 <d' a> <d a> <d a> <d a> <d a> <d a> <d a>
	r16 <d, g> <d g> <d g> <d g> <d g> r8
	r16 <d g> <d g> <d g> <d g> <d g> r8
	r16 <e g> <e g> <e g> <e g> <e g> r8
	r16 <e g> <e g> <e g> r <f g d'> r <f g e'> 
}\\{
	d,2 f a4 bes8 a d2 e,4. e16 f g4. a16 bes a4. a16 b cis4 cis8 cis
	}>>
}

\repeat volta 2{
<<{
	r16 <f' d a> <f d a> <f d a> <f d a> <f d a> <f d a> <f d a> 
	r16 <e c g> <e c g> <e c g> <e c g> <e c g> <e c g> <e c g> 
	r16 <g b, g> <g b, g> <g b, g> <g b, g> <g b, g> <g b, g> <g b, g> 
	r16 <f d a> <f d a> <f d a> <f d a> <f d a> <f d a> <f d a> 
	r16 <f, a d> <f a d> <f a d> <f a d> <f a d> <f a d> <f a d>
	r <e g cis> <e g cis> <e g cis> <e g cis> <e g cis> <e g cis> <e g cis> 

}\\{
	d,2 d d d d a' 
}>>
}
\alternative{
{
<<{
	r16 <f' a d> r <f a d> r <f a d> r <f a d>

}\\{
	d,8 f a f
}>>
}
{
<<{
r16 <f' a d> <f a d> <f a d> r <f a d> r <f a d>
}\\{
d,4 f8 a	
}>>
}
}
	d,2
	\bar "||"
} 
}


\pageBreak
\score {
	\midi {}
	\layout {}
	\header {
	title = ""
	subtitle = ""
	composer = ""
	tagline = ""
	piece = "Var 4."}
	\new Staff \relative c'{
	\numericTimeSignature
	\key d \minor
	\time 2/4
	\clef "treble_8"
	\tempo Song 4 = 90
	
\repeat volta 2{		
	<<{f4. g8 f d c d d4 f c2
	c4. d8 c a g a g2 f}\\{
	<f a c>2 s <f bes> <f a>
	<e g> s <c e> <f, c'>}>>
}
\repeat volta 2{
	<<{
	d'4 d8 e f e d c a4 c a c
	d4 d8 e f4 g a2 a
	d,4 d8 e f e d c a4 c a c
	<g c>4 g8 a bes a g a <f c' f>2 <f c' f>	
	}\\{
	<f bes>2 s f f 
	<f bes> s <f f'> <f f'>
	<f bes>2 s f f 
	}>>
}	
} 
}



\score {
	\midi {}
	\layout {}
	\header {
	title = ""
	subtitle = ""
	composer = ""
	tagline = ""
	piece = "Finale"}
	\new Staff \relative c{
	\numericTimeSignature
	\key d \minor
	\time 6/8
	\clef "treble_8"
	\tempo Allegro 4. = 90
	
\repeat volta 2{		
	d,16 a'' d f d a d, a' d f d a 
	d,, d'' f a f d d, d' f a f d
	a, d' f bes f d d, d' f c' f, d
	d,, d'' f a f d d, d' f a f d
	d,,16 a'' d f d a d, a' d f d a 
	e, gis' b e b gis d gis b f' b, gis	
	a, e' a cis a e a, e' g cis g e
	cis f g d' g, f cis f g e' g, f
}
	d16 a' d f d a d,, a'' d f d a 
	c, a' d e d a c, a' d fis d a
	g, bes' d a' d, bes g, bes' d bes' d, bes
	bes d f bes f d aes d f bes f d
	a, g'' bes ees bes g a,, g'' bes ees bes g 
	a,, e'' g cis g e a,, e'' g cis g e
	<d, f' a d>2 <d f' a d>4
	<a d' f a>2 <a d' f a>4
	<d a' d f>2 <d a' d f>4
	<f, d' a' d>2 <f d' a' d>4
	<a e' a>2 <a e' a >4
	<d, a' d>2 <d a' d>4 <d a' d>2 <d a' d>4 <d a' d>2. <d a' d>2. r
\break
	\tempo Lento 4 = 45
	\time 2/4
<<{
	f''4. f8 e4. e8 a4. g8 f e d e d2 cis4 e e2 d
	}\\{
	d,4 <d' a> c, <d' a>
	<g,, bes' d>2 s
	a4 <a' f> a, <g' e> 
	d,4 <a' f' a> d,2
	}>>	

	\bar "|."	
} 
}







