\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = "Fantasia on an Unattended Oven"
	subtitle = "In reaction to Austin Dewey"
	subsubtitle = "For Classical Guitar"
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

	\new Staff \relative c{
	\numericTimeSignature
	\clef "treble_8"
%\unfoldRepeats {
\once	\override Staff.TimeSignature.color = #white
\once	\override Staff.TimeSignature.layer = #-1
	<e, a f' g>1\fermata_"(Tambora)"
 \repeat volta 3 {	

	\tempo "Serpentine" 4 = 120
	\time 15/16
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(4 4 4 3)
	\set Score.voltaSpannerDuration = #(ly:make-moment 2/4)

	a16\pp g' f_\markup { \italic "crescendo, accel..."}
		g b, g' f g a, g' f g b, f' g
	b f ais, f' b f b, f' b f ais, f' b f b,
	cis cis' d, cis' cis, cis' d, cis' cis, cis' d, cis' cis, d cis'  
	d d, cis d d' d, cis d d' d, cis d d' d, cis
	c fis g fis c fis g fis c fis g fis c fis g
	c fis, b, fis' c' fis, b, fis' c' fis, b, fis' c' fis, b,
	bes\mf\< gis' d gis bes, gis' d gis bes, gis' d <bes gis'>4\!
}
\alternative {
{
	a16 a' (g) a, d' (b) a, f'2
	e16 bes' (a) e dis' (cis) e, a'2
	fis,16 b (ais) fis fis' (dis) fis, a'2
	gis,16 dis' (cis) gis gis' (eis) gis, bis'2
	a,16 e' (d) a a' (fis) a, c'2
	bes,16 e (dis) bes a' (g) bes, dis'2
	
	\time 2/4
	
	<bes, ees g des'>8\ff-> <c, bes'>16 <c bes'>
	<a' d fis c'>8-> <b, a'>16 <b a'>
	<g' c e bes'>8-> <a, g'>16 <a g'>
	<a g'> d e f
}{
	\break
	\time 2/4
	\tempo "lento" 4 = 80
	<a, a'>4
	<f' c'>4
	<b, f' a d>4
	e'
	<<{<a, d e>2}\\{g,4 fis}>>
	<<{<g' b e>2}\\{g,4 a}>>
	<b f' a d>4 <<{e'\2}\\{r}>>
	<c, e ais des> <<{e'\2}\\{r}>>
	<d b fis b,>4 e,,
	<bes' e gis des'> <<{e'\2}\\{r}>>
	<bes, d gis b> <<{d'}\\{r}>>
	<a, a' c>4
	f'
	<b, f' a d>2
	<<{<a' d e>2}\\{g,4 fis}>>
	<e b' e g d' e>2\fermata
	<a e' a c>2
	<a f' a c>
	<b f' a b>
	~<b f' a b>
	\time 15/16
	\set Timing.beatStructure = #'(4 4 4 3)
	\tempo "moderato" 4 = 100
	\override TextSpanner.bound-details.left.text = "pizz."

	a16\startTextSpan g' f g a, g' f g a, g'8.~g
	a,16 gis' f gis a, gis' f gis a, gis' f ~f4
	bes,16 d gis d bes d gis d bes4 ~bes8.
	\stopTextSpan

	a16\tempo "vivo" 4 = 150 a' (g) a, d' (b) a, f'2
	e16 bes' (a) e dis' (cis) e, a'2
	fis,16 b (ais) fis fis' (dis) fis, a'2
	gis,16 dis' (cis) gis gis' (eis) gis, bis'2
	a,16 e' (d) a a' (fis) a, c'2
	bes,16 e (dis) bes a' (g) bes, dis'2

	\time 2/4
	
	<bes, ees g des'>8 <c, bes'>16 <c bes'>
	<a' d fis c'>8 <b, a'>16 <b a'>
	<g' c e bes'>8 <a, g'>16 <a g'>
	<f' bes d gis>8 <g, f'>16 <g f'>
	<d' g b f'>8 <e, d'>16 <e d'>
	<f dis'>4 \glissando <e' d'>2 \fermata

	\tempo "moderato" 4 = 100
	
	\time 15/16
	\set Timing.beatStructure = #'(4 4 4 3)

	a,16 bes' d, bes' a, f' a f 
		bes,_\markup { \italic "rit..."} gis' d gis bes, e gis\fermata

}{
	a,16 bes' (g) a, f' (d) a e'2
	e,16 f' (d) e, aes' (g) e, bes''2
	bes,16 cis' (b) bes, ees (d) bes f'2~
\once	\override Staff.TimeSignature.color = #white
\once	\override Staff.TimeSignature.layer = #-1
\time 4/4
	<e, a f' g>1\fermata_"(Tambora)"
	\bar "|."
	\pageBreak
	s1
}
%}

 }

} 
}


