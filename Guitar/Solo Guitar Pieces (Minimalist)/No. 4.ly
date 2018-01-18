
\header{
	title = "No. 4"
	subtitle = " <null> "
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
\relative c {
\clef "treble_8"
	\time 3/4

\repeat volta 3 {
	\tempo 4 = 110 
	b16\pp e g b g e b e g b g e
	b\< e gis d' gis, e b e gis d' gis, e\mf
	e\p a e' e, a e' e, a e' e, a e' 
	e, a e' e, a e' e,\> a e' e, a e'\!
 
	b,\pp e g? b g e b e g b g e
	b\< e gis d' gis, e b e gis d' gis, e\mf
	cis\mp e a cis, e a cis, e a cis, e a 
	c,? e a c, e a c,\> e a c, e a\!
	
	b,\pp e g? b g e b e g b g e
	b\< e gis d' gis, e b e gis d' gis, e\mf
	cis e a e' cis, e a e' cis, e a e'
	c,? e a e' c, e a e' c,\> e a e'\!
	
	e,\p gis b e b gis e gis b e b gis
	e\< gis c e c gis e aes c e c aes\mf
	e\p g c e, g c e, g c e, g c 
	e, g c e, g c e,\> g c e, g c\!

	e,\p gis b e b gis e gis b e b gis
	e\< gis c e c gis e aes c e c aes\mf
	g\mp c e g, c e g, c e g, c e
	g, c fis g, c fis g,\> c fis g, c fis\!	

	e,\p gis b e b gis e gis b e b gis
	e\< gis c e c gis e aes c e c aes\mf
	e g c e e, g c e e, g c e 
	e, g c fis e, g c fis e,\< g c fis\f 

	g,,\mp b d g d b g b d g d b
	g\< b e g e b g b e g e b\f
	a\mf c a' a, c a' a, c a' a, c a' 
	a, c a' a, c a' a,\> c a' a, c a'\!

	g,\mp b d g d b g b d g d b
	g\< b e g e b g b e g e b\f
	a c e a, c e a, c e a, c e 	
	a, c fis a, c fis a,\> c fis a, c fis\!

	g,\mp b d g d b g b d g d b
	g\< b e g e b g b e g e b\ff
	a c e a a, c e a a, c e a
}
\alternative {
{
	a,\> c fis a a,\mf c fis a a, c fis a
}
{
  \set tieWaitForNote = ##t
	a,\> cis e a a,\mf cis e a a, ~ cis ~ e ~ a ~ 

}
}
<a, cis e a>2

\bar "|."


	
}


}
  \layout {
  ragged-last = ##f
}
  \midi { }
}



\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
