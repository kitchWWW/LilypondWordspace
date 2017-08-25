\version "2.18.0"

\header {
	title = \markup{\fontsize #6 "Put down the guitar. Stretch."}
	subtitle = "    "
	composer = ""
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\layout {}

fa = {e16-"a" b-"m" g-"i" b-"m" 
		e b g b e b g b e b g b}


fb = {e16-"a" g,-"i" b-"m" g-"i" 
		e' g, b g e' g, b g e' g, b g}

fc = {e16-"a" b-"m" e-"a" g,-"i" 
		e' b e g, e' b e g, e' b e g,}

fd = {e'16-"a" g,-"i" e'16-"a" b-"m" 
		e g, e' b e g, e' b e g, e' b}

fe ={b16-"m" e-"a" b-"m" g-"i" 
	b16 e b g b e b g b e b g}

ff = {b-"m" g-"i" b16-"m" e-"a" 
	b g b e b g b e b g b e}

fg = {b16-"m" e-"a" g,-"i" e'-"a"
	b e g, e'  b e g, e' b e g, e' }

fh = {b16-"m" g-"i" e'-"a" g,-"i" 
	b16 g e' g, b16 g e' g, b16 g e' g,}

fi = {g,-"i" b-"m" e-"a" b-"m"
	g b e b g b e b g b e b}

fj = {g-"i" e'-"a" b-"m" e-"a"
	g, e' b e g, e' b e g, e' b e	}

fk = {g,-"i" b-"m" g-"i" e'-"a"
	g, b g e' g, b g e' g, b g e'}

fl = {g,-"i" e'-"a" g,-"i" b-"m"
	g e' g, b g e' g, b g e' g, b}

\layout{}

\score {
	\header {
		piece = "Arpegios!"
		composer = "Calevaro"
	}
	\new Staff \relative c''{
	<<{
	\fa \fb \fd \fc \fe \ff \fh \fg \fi \fj \fk \fl 
	}\\{
	e,,4 a d a e a d a e a d a e a d a e a d a e a d a e a d a e a d a e a d a e a d a e a d a e a d a}>>
	\bar "|."
}	
}

\pageBreak

\score {
	\header {piece = "Bright Eyes"}
	\new Staff \relative c''{
	\time 4/4
	\times 2/3 {a'8 (ais a)} \times 2/3 {a (ais a)} 
		\times 2/3 {a (b a)} \times 2/3 {a (b a)} 
	\times 2/3 {a (c a)} \times 2/3 {a (c a)} 
		\times 2/3 {a (c a)} \times 2/3 {a (c a)}
	\times 2/3 {ais8 (b ais)} \times 2/3 {ais (b ais)}
		\times 2/3 {ais (c ais)} \times 2/3 {ais (c ais)} 
	\times 2/3 {b (c b)} \times 2/3 {b (c b)} b2 \bar "||"
	bes16 (c bes a bes4) bes16 (c bes a bes4)
	b16 (c b a b4) b16 (c b a b4)
	\bar "||"
	<<{
	a4 a a a a a a a ais ais ais ais ais ais ais ais b b b b b b b b c c c c c c c c c2
	}\\{
	f,8 (b,) f' (b,) fis' (b,) fis' (b,) g' (b,) g' (b,) g' (b,) g' (b,)
	e8 (b) e (b) fis' (b,) fis' (b,) g' (b,) g' (b,) g' (b,) g' (b,)
	e8 (b) e (b) f' (b,) f' (b,) g' (b,) g' (b,) g' (b,) g' (b,)
	e8 (b) e (b) e8 (b) e (b) f' (b,) f' (b,) fis' (b,) fis' (b,) g'2
	}>>
	\bar "|."
}	
}

\score {
	\header {piece = "Glassy"}
	\new Staff \relative c''{
	<<{
	\times 2/3 {e8 c e} \times 2/3 {c e c}
		\times 2/3 {e8 c e} \times 2/3 {c e c}
	\times 2/3 {e8 c e} \times 2/3 {c e c}
		\times 2/3 {e8 c e} \times 2/3 {c e c}
	\times 2/3 {f8 d f} \times 2/3 {d f d}
		\times 2/3 {f8 d f} \times 2/3 {d f d}
	\times 2/3 {f8 d f} \times 2/3 {d f d}
		\times 2/3 {f8 d f} \times 2/3 {d f d}
	}\\{
	\shiftOff
	c,8 e c e c e c e
	c g' c, g' c, g' c, g'
	g, b g b g b g b
	g g' g, g' g, g' g, g'
	}>>
	\bar ":|."
}	
}

\score {
	\header {piece = "Spiders. Everywhere."}
	\new Staff \relative c''{
	<<{
	c'2 b ais a
	}\\{
	
	\parenthesize cis,4 c2 dis4 ~dis d2 cis4
	}>>
	\bar ":|."
}	
}

\pageBreak

\score {
\header {
	piece = "Cascading Octaves"
	composer = ""
	tagline = ""
}
	\new Staff \relative c''{
	\time 4/4
<<
	\new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
  \remove "Rest_engraver"
  \consists "Completion_rest_engraver"
}{ r4 e,2 eis f fis g gis
	 a ais b c cis d dis e f fis g gis a ais b c cis d dis e dis d cis c b 	ais a gis g fis f e dis d cis c b ais a gis g fis f e2.
 }
\new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
  \remove "Rest_engraver"
  \consists "Completion_rest_engraver"
}	{  
	e,2 eis f fis g gis
	 a ais b c cis d dis e f fis g gis a ais b c cis d dis e e dis d cis c b 	ais a gis g fis f e dis d cis c b ais a gis g fis f e
}
>>
	\bar "|."
	}
}


\score {
	\header {piece = "Ascending Melodic Design"}
	\new Staff \relative c''{
	<<{
	\partial 4
	 c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c16 _(d) c2
	}\\{
	c,4 g' e f a g a2 g4 f e d g e d e c g' e f a g a2 g4 f e d g c,2 r4 r
	}>>
	\bar "|."
}	
}

\score {
	\header {piece = "Descending Melodic Design"}
	\new Staff \relative c''{
	\time 2/4
	<<{
	 c16 _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b) c _(b) d _(b)  
	}\\{
	c,2  a4 b c2 d4 e f2 g4 a g f e d f e ~e d
	}>>
	\bar ":|."
}	
}
\pageBreak
