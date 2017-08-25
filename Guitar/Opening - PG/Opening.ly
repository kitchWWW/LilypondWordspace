
\header{
	title = "Opening"
	tagline = ""
	composer = "Philip Glass"
	arranger = "arr. Brian Ellis"
}

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}


\score {
    \new Staff {
\relative c' {
\clef "treble_8"
\key g \major
<<{
\repeat volta 4 {
	\tuplet 3/2 4 { a8 c a c a c a c a c a c }
	\tuplet 3/2 4 { e8\< a, e' a, e' a, e' a, e' a, e' a,\!}
	\tuplet 3/2 4 { b e b e b e b e b e b e }
\break
}
\alternative {
{
	\tuplet 3/2 4 { c\> e c e c e c e c e b e\!}
}{
	\tuplet 3/2 4 { b e b e b e b e b e b e }
}
}

}\\{
	a,, e' a, e' a, e' a, e'
	a, e' a, e' a, e' a, e'
	g, d' b d b d b d
	f, d' b d b d b d
	e, d' b d b d b d
}>>
\break
<<{
\repeat volta 4 {
	\tuplet 3/2 4 { e\< a e a e a e a e a e a\!}
	\tuplet 3/2 4 { fis a fis a fis a fis a fis a fis a}
	\tuplet 3/2 4 { d, g d g d g d g d g d g}
\break
}
\alternative {
{
	\tuplet 3/2 4 { e\> g e g e g e g e g e g\!}
}{
	\tuplet 3/2 4 { d g d g d g d g d g d g}
}
}

}\\{
	a,8 c a c a c a c
	a c a c a c a c
	g b g b g b g b
	g b g b g b g b
	g b g b g b g b
}>>

\break

<<{
\repeat volta 3 {
	\tuplet 3/2 4 { fis'' a, fis' a, fis' a, fis' a, fis' a, fis' a,  }
	\tuplet 3/2 4 { c\< fis c fis c fis c fis c fis c fis\!}
	\tuplet 3/2 4 { g c, g' c, g' c, g' c, g' c, g' c, }
\break
}
\alternative {
{
	\tuplet 3/2 4 { g'\> c, g' c, g' c, g' c, g' c, g' c,\! }
}{
	\tuplet 3/2 4 { g'\> c, g' c, g' c, g' c, g' c, g' c,\! }
}
}

}\\{
	a, fis' d fis d fis d fis 
	d fis d fis d fis d fis 
	c g' e g e g e g
	d g d g d g d g
	d g d g c, g' c, g'
}>>

\break

<<{
	\tuplet 3/2 4 { fis' b, fis' b, fis' b, fis' b, fis' b, fis' b,  }
	\tuplet 3/2 4 { fis' b, fis' b, fis' b, fis' b, fis' b, fis' b,  }
	\tuplet 3/2 4 { fis' c fis c fis c fis c fis c fis c}
\break
	\tuplet 3/2 4 { fis d fis d fis d fis d fis d fis d}
	\bar ":|]"
	\tuplet 3/2 4 { fis d fis d fis d fis d fis d fis d ~ } d1

}\\{
	b,8 fis' d fis d fis d fis 
	d fis d fis d fis d fis
	a, a' d, a' d, a' d, a'
\set Score.repeatCommands = #'((volta "1-2"))
	a, [a'
\set Score.repeatCommands = #'((volta #f))
		d, a'] d,^"(repeat entire piece)" a' d, a'
		
\set Score.repeatCommands = #'((volta "3"))
	a, [a'
\set Score.repeatCommands = #'((volta #f))
		d, a'] d, a' d, a' ~ a1
}>>

\bar "|."

}


}
  \layout {
  ragged-last = ##f
}
  \midi { }
}



\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
