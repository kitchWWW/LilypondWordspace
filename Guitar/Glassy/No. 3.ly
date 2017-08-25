\version "2.18.0"

\header {
	title = "Reflections No. 3"
	subtitle = ""
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
  print-all-headers = ##t
}

\score {
\header{
	title = ""
	subtitle = ""
	composer = ""
	piece = "The Slow Movement"
	tagline = ""
}

%	\midi {}
	\layout {}

	\new Staff \relative c{
	\clef "treble_8"
	\key a \minor
	\time 4/2
<<{}\\{	<a c e>4\( <a c e>2 <a c e> <a c e><a c e>4
	<g b e>4 <g b e>2 <g b e> <g b e><g b e>4
	<f a f'>4 <f a f'>2 <f a f'> <f a f'> <f a f'>4
	<f a d>4 <f a d>2 <f a d> <f a d> <f a d>4 
	<e a d>4 <e a d>2 <e b' d> <e b' d> <e b' d>4\)}>>
\break
<<{s1 s s s s s s s s2. gis'1}\\{
	<a, c e>4\( <a c e>2 <a c e> <a c e><a c e>4
	<g b e>4 <g b e>2 <g b e> <g b e><g b e>4
	<f a f'>4 <f a f'>2 <f a f'> <f a f'> <f a f'>4
	<e a f'>4 <e a f'>2 <e b' f'> <e b' f'> <e b' f'>4
	<e b' d>4 <e b' d>2 <e b' d> <e b' d> <e b' d>4\)}>>
\break
\repeat volta 2 {
	<<{	a'\breve \( b c b \)
	}\\{
	<a, c e>4 <a c e>2 <a c e> <a c e><a c e>4
	<g b d>4 <g b d>2 <g b d> <g b d><g b d>4
	<f b d>4 <f b d>2 <f b d> <f b d> <f b d>4
	<e b' d>4 <e b' d>2 <e b' d> <e b' d> <e b' d>4
	<e b' e>4 <e b' e>2 <e b' e> <e b' e> <e b' e>4
	}>>
	\break
}
\alternative {
{
	<<{a'\breve s s s s }\\{
	<a, c e>4\( <a c e>2 <a c e> <a c e> <a c e>4
	<g c e>4 <g c e>2 <g c e> <g c e> <g c e>4
	<f c' e>4 <f c' e>2 <f c' e> <f c' e> <f c' e>4
	<e c' e>4 <e c' e>2 <e c' e> <e c' e> <e c' e>4
	<e b' e>4 <e b' e>2 <e b' e> <e b' e>2 <e b' e>4 \)	\break
}>>
}
{
	<<{a'\breve s s s s2. g1 }\\{
	<a, c e>4\( <a c e>2 <a c e> <a c e> <a c e>4
	<g c e>4 <g c e>2 <g c e> <g c e> <g c e>4
	<f c' e>4 <f c' e>2 <f c' e> <f c' e> <f c' e>4
	<e c' e>4 <e c' e>2 <e c' e> <e c' e> <e c' e>4
	<e b' e>4 <e b' e>2 <e b' e> <e b' e>2. ~ <e b' e>2
	<e b' e>2
	~ <e b' e>1	
	\)}>>
}
}
\bar ":|."

}	
}

\pageBreak

\score {
\header{
	title = ""
	subtitle = ""
	composer = ""
	piece = "The Fast Movement"
	tagline = ""
}

	\midi {}
	\layout {}

	\new Staff \relative c{
	\clef "treble_8"
	\key a \minor
	\time 12/8
	a16 a' c e c a a, a' c e c a a, a' c e c a a, a' c e c a
	\repeat percent 4{ g, g' b e b g }
	\repeat percent 4{ f, a' c e c a }
	\repeat percent 4{ f, f' a d a f }
	\repeat percent 4{ e, e' b' d b e, }

	\repeat percent 4{ a, a' c e c a }
	\repeat percent 4{ g, b' d e d b }
	\repeat percent 4{ f, a' c e c a }
	\repeat percent 4{ e, a' c e c a }
	e, b'' d e d b e,, b'' d e d b e,, gis' b e b gis e, gis' b e b gis
\repeat volta 2 {
	a, a' c e c a a, a' c e c a a, a' c f c a a, a' c e c a
	g, g' b e b g g, g' b e b g g, g' b f' b, g g, g' b e b g
	f, a' b e b a f, a' b e b a f, a' b g' b, a f, a' b f' b, a 
	e, a' b f' b, a e, a' b f' b, a d, gis b f' b, gis d gis b e b gis
	\repeat percent 4{ a, a' c e c a } 
	\repeat percent 4{ g, a' c e c a }
	\repeat percent 4{ f, a' c e c a }
}
\alternative{
{
	\repeat percent 4{ e, a' c e c a }
	\repeat percent 4{ e, b'' d e d b }
}	
{	
	\repeat percent 4{ e,, a' b f' b, a}
	d, gis b f' b, gis d gis b f' b, gis d g b f' b, g d g b f' b, g
}
}

	\repeat volta 2 {
	\repeat percent 4{ c, g' c e c g } 
	\repeat percent 4{ b, gis' d' e d gis, } 
	\repeat percent 4{ a, a' c e c a } 
	\repeat percent 4{ g, a' d e d a } 
	\repeat percent 4{ g, g' d' e d g, } 
	c, g' c e c g c, g' c e c g c, g' c f c g c, g' c e c g 
	b, gis' d' e d gis, b, gis' d' e d gis, b, gis' d' f d gis, b, gis' d' e d gis,  
	a, a' c e c a a, a' c e c a a, a' c g' c, a a, a' c g' c, a
	f, a' c g' c, a f, a' c g' c, a f, a' c f c a f, a' c f c a 
	\repeat percent 4{ g, a' d e d a } 
	\repeat percent 4{ g, g' d' e d g, } 
	
}
	
	

	
}	
}

\pageBreak

\score {
\header{
	title = ""
	subtitle = ""
	composer = ""
	piece = "The Moderate Movement"
	tagline = ""
}

	\midi {}
	\layout {}

	\new Staff \relative c'{
	\clef "treble_8"
	\key a \minor
	\time 4/4

	%JK START OFF LOW FIRST



	<<{
	e8 a e a e a e a c a c a c a c a
	e8 a e a e a e a c a c a c a c a
	e8 a e a e a e a d a d a d a d a
	e8 a e a e a e a c a c a c a c a



	}\\{
	a,,\breve
	b
	c
	d

	}>>
\bar "||"
}	
}


