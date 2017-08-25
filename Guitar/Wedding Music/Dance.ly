\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"Wedding Dance"}}
	subtitle = "Wedding Music"
	subsubtitle = "Solo Guitar"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c'''{
	\key a \major
\time 4/4
	\tempo 4 = 120
	<e a, e a,,>4\sustainOn <e a, e a,,>2 <e a, e a,,>4
	<e a, e cis>1
	<e fis, b, a,>4 <e fis, b, a,>2 <e fis, b, a,>4
	<d fis, b, d,>1
	<d fis, b, e,,>4 <d fis, b, e,,>2 <d fis, b, e,,>4
	<<{ fis2 e2}\\{ <gis, b, d,>1}>>
	<e' a, e a,,>4 <d a e a,,>2 <d a e a,,>4
	<cis a e a,,>1
	
	<a e cis a,>4 <a e cis a,>2 <a cis, g a,>4 
	<b cis, g a,>1
	<<{fis4 fis2 \grace fis16 _(gis4) }\\{<cis, d, a>1}>>
	<gis' d d, e,>1
	<gis d b e,,>4 <gis d b e,,>2 <gis d b e,,>4
	<<{cis4 d8 cis b cis d e}\\{<a, e e,,>1}>>
	\time 3/4
	<<{b4 cis8 b a b}\\{<gis d e,,>2.}>>
	\time 4/4
	\tempo 4 = 160
	cis2 b
	\break
%Jive time!!

	a,,16 e'' e cis a e' cis a a, e'' e cis a e' cis a
	a, e'' e d gis, fis' d gis, a, a'' fis d gis, b' e, d
	a, e'' e cis a e' cis a a, e'' e cis a e' cis a
	a, e'' e d gis, fis' d gis, a, a'' fis d gis, b' e, d
	
	a, e'' e cis a e' cis a a, e'' e cis a e' cis a
	a, e'' gis d b gis' d b a, e'' gis d b gis' d b
	a, e'' a e cis a' e cis a, e'' a e cis a' e cis
	a, e'' b' e, cis b' e, cis a, e'' b' e, cis b' e, cis	a, d'' b e, cis b' e, cis a, d'' b e, cis b' e, cis
	a, e'' a e cis a' e cis a, e''' a, e cis a' e cis
	a, e'' a e cis a' e cis a, e''' a, e cis a' e cis
	a, e'' b' g, cis b' g, cis a, e'' b' g, cis b' g, cis
	a, e'' fis cis a fis' cis a a, e'' fis cis a fis' cis a
	
\bar "||"

	a, e'' e cis a e' cis a a, e'' e cis a e' cis a
	a, e'' e d gis, fis' d gis, a, a'' fis d gis, b' e, d
	a, e'' e cis a e' cis a a, e'' e cis a e' cis a
	a, e'' e d gis, fis' d gis, a, a'' fis d gis, b' e, d
	
	a, e'' e cis a e' cis a a, e'' e cis a e' cis a
	a, e'' gis d b gis' d b a, e'' gis d b gis' d b
	a, e'' a e cis a' e cis a, e'' a e cis a' e cis
	a, e'' b' e, cis b' e, cis a, e'' b' e, cis b' e, cis	a, d'' b e, cis b' e, cis a, d'' b e, cis b' e, cis
	a, e'' a e cis a' e cis a, e''' a, e cis a' e cis
	a, e'' a e cis a' e cis a, e''' a, e cis a' e cis
	
	a, e'' e b gis e' b gis a, b'' e, b gis e' b gis
	a, e'' e b gis e' b gis a, b'' e, b gis e' b gis
	a, e'' d a fis d' a fis a, a'' d, a fis d' a fis 
	a, e'' d a fis d' a fis a, a'' d, a fis d' a fis 	a, e'' e b gis e' b gis a, b'' e, b gis e' b gis
	a, e'' e b gis e' b gis a, b'' e, b gis e' b gis
	a, e'' d a fis d' a fis a, a'' d, a fis d' a fis 
	a, e'' d a fis d' a fis a, a'' d, a fis d' a fis 
	
	a, fis'' cis a e cis' a e a, gis'' cis, a e cis' a e 
	a, fis'' cis a e cis' a e a, gis'' cis, a e cis' a e

	a, e'' d a d, d' a d, a fis'' d a d, d' a d, 
	a e'' d a d, d' a d, a fis'' d a d, d' a d, 
	e, e'' d gis, b, d' gis, d e, fis'' d gis, b, d' gis, d 
	e, e'' d gis, b, d' gis, d e, fis'' d gis, b, d' gis, d 
	a e'' cis a e cis' a e a, cis' a e a, cis' a e 
	a, e'' cis g e cis' g e a, cis' g e a, cis' g e 
	a, e'' d a f d' a f a, d' a f a, d' a f 
	a, e'' dis ais fis dis' ais fis a, dis' ais fis a, dis' ais fis
	a, e'' e b g e' b g a, e'' b g a, e'' b g 
	a, e'' f c gis f' c gis a, f'' c gis a, f'' c gis 
	a, e'' f c gis f' c gis a, f'' r8 <a,, f'' e c gis>4

	a16 e'' e cis a e' cis a a, e'' e cis a e' cis a
	a, e'' e d gis, fis' d gis, a, a'' fis d gis, b' e, d
	a, e'' e cis a e' cis a a, e'' e cis a e' cis a
	a, e'' e d gis, fis' d gis, a, a'' fis d gis, b' e, d

	a, e'' e cis a e' cis a a, e'' e cis a e' cis a
	a, e'' gis d b gis' d b a, e'' gis d b gis' d b
	a, e'' a e cis a' e cis a, e'' a e cis a' e cis
	a, e'' b' e, cis b' e, cis a, e'' b' e, cis b' e, cis	a, d'' b e, cis b' e, cis a, d'' b e, cis b' e, cis
	a, e''' a, e cis a' e cis a, e''' a, e cis a' e cis
	a, e''' a, e cis a' e cis a, e''' r8 <e a, e cis a,>4

\break

	<e a, e cis a,>4 <e a, e cis a,>2 <e a, e cis a,>4
	<e a, e cis a,>1
	<e fis, b, d, a>4 <e fis, b, d, a>2 <e fis, b, d, a>4
	<d fis, b, d, a>1
	<d fis, b, d, a e>4 <d fis, b, d, a e>2 <d fis, b, d, a e>4
	\tempo 4 = 120
	<<{ fis2 e2}\\{ <gis, b, d, a e>1}>>
	<e' a, e a,,>4 <d a e a,,>2 <d a e a,,>4
	<cis a e a,,>1
	<a e e cis>4 <a e e cis>2 <a e e cis>4 <a e' e, cis>1
	<e e b gis>4 <e e b gis>2 <e e b gis>4 <e b' b, gis>1
	<e d a fis>4 <e d a fis>2 <e d a fis>4 <a d, a fis>1
	

\time 5/4
	<<{cis4 d8 cis b cis d16 cis e cis fis\fermata e d cis}\\{<a e e,,>1}>>
	<<{
	\cadenzaOn	
	b4 cis8 [b] a [b] cis16 [(b) gis (fis) e (d)] b [d (e) fis (gis) b (cis)]
	d8\fermata cis16 [e, b' e, a e b' e, a e] a'4\fermata e,
	\cadenzaOff
	\bar "|"
	}\\{<gis d e,,>1}>>
	<e fis cis a a,>1 \harmonicsOn a4
	\bar "|."

	
}
}


