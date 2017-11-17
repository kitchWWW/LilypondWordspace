
\header{
	title = "Solo Guitar Piece No. 1"
	tagline = ""
	composer = "Brian Ellis"
	arranger = "  "
}

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}


\score {
    \new Staff {
\relative c' {
\clef "treble_8"
	\time 4/4
\bar ".|:"
	\tuplet 3/2 4 {g8 c e g e c g c e g e c}
	\tuplet 3/2 4 {f, a d f d a f a d f d a}
	\tuplet 3/2 4 {e g b e b g e g b e b g}
	\tuplet 3/2 4 {e g c e c g e g c e c g}
\break
\bar ":|.|:"
	c8 g c e d e c b
	a f a d c d a g
	g e g b a b g f
	g e g c b c d e
\bar ":|.|:"
	<<{
	c8 e c e c e c e
	a, d a d a d a d
	g, b g b g b g b
	g c g c g c g d'
	}\\{
	g,1
	f1
	e4 e e e
	e e f f
	}>>
\bar ":|.|:"
	<<{
	c'8 g c e d e c b
	a f a d c d a g
	g e g b a b g f
	g e g c b c d e
	}\\{
	g,,1
	a b c
	}>>
\break
\bar ":|.|:"
	\tuplet 3/2 4 {g'8 c e g e c g c e g e c}
	\tuplet 3/2 4 {f, a d f d a f a d f d a}
	\tuplet 3/2 4 {e g b e b g e g b e b g}
	\tuplet 3/2 4 {e g c e c g e g c e c g}
\break
\bar ":|.|:"
	c8 g c e d e c b
	a f a d c d a g
	g e g b a b g f
	g e g c b c d e
\bar ":|.|:"
	<<{
	c8 e c e c e c e
	a, d a d a d a d
	g, b g b g b g b
	g c g c g c g d'
	}\\{
	g,,1
	a
	<b e>4 <b e> <b e> <b e>
	<c e> <c e> <c f> <c f> 
	}\\{}\\{
	s2 g'2
	s2 f
	}>>
\bar ":|.|:"
<<{
	c'8 g c e d e c b
	a f a d c d a g
	g e g b a b g f
	g e g c b c d e
	}\\{
	g,,1
	a b c
	}>>
\bar ":|.|:"
\break
	\tuplet 3/2 4 {g8 c e g e c g c e g e c}
	\tuplet 3/2 4 {f, a d f d a f a d f d a}
	\tuplet 3/2 4 {e b' e g e b e, b' e a e b}
	\tuplet 3/2 4 {e, c' e b' e, c e, c' e c' e, c}
\break
\bar ":|.|:"
	<<{
	c' e c e c e c e
	a, d a d a d a d
	g, b g b g b g b
	g c g c g c g d'
	}\\{
	g,1
	f1
	e4 e e e
	e e f f
	}>>
\bar ":|.|:"


}


}
  \layout {
  ragged-last = ##f
}
  \midi { }
}


\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}



\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
