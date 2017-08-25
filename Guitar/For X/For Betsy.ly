\version "2.18.0"
#(set-global-staff-size 22)


\header {
	title = \markup{\smallCaps {"For Betsy"}}
	subtitle = "A Barcarolle"
	composer = "Brian Ellis"
	tagline = ""
	arranger = " "
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

<<

  \new Staff \with {
    instrumentName = #"Guitar"
	midiInstrument = "Acoustic Guitar (nylon)"
  }
  { 
\relative c'' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)

	\key g \major
	\time 9/8
	\clef "treble_8"
	\tempo "Lento" 4. = 60
	<<{

	g4.(~g4 g8 fis4 g8
	b4. ~ b4 b8 a4 b8
	c4. ~ \times 3/2{ c8 c} \times 3/2 {b c}
	d2.) d4.( \glissando
	g,4. ~g4 g8 fis4 g8
	g4. ~g4 g8 fis4 g8
	g4. ~ \times 3/2{g8 g8} \times 3/2{fis8 g8}
	g4. ~g4 g8 fis4 e8
	d4.) (~d4 d8 cis4 d8
	d4. ~d4 d8 cis4 d8
	d4. ~\times 3/2 {d8 d8}\times 3/2 { cis8 d8}
	
\times 3/2 {e8_"accel..." ) b}
\times 3/2 { cis gis}
\times 3/2 { b e,} 
	
	}\\{
	r4. <g, d' g b>2.
	r4. <a g' c e>2.
	r4. <d d' fis>2.
	r4. <g b g'>2.
	
	r4. <e g c>2.
	r4. <d g b>2.
	r4. <e a c>2.
	r4. <d a' c>2.
	r4. <g, d' b'>2.
	r4. <fis d' a'>2.
	r4. <e d' gis>2.
	
	}>>
	
	
	\times 3/2 {fis'8 e}
	\times 3/2 {ees d}
	\times 3/2 {des c}
	\times 3/2 { b bes}
 	<a e' g c>4.^"a tempo" \fermata <d a' c fis>\fermata


	<<{
	g'4.(~g4 g8 fis4 g8 \glissando
	b4. ~ b4 b8 a4 b8 \glissando
	c4. ~ \times 3/2{ c8 c} \times 3/2 {b c \glissando }
	e4\fermata d8 d4. ~ d4) d8 ( \glissando
	g4. ~ g4 g8 fis4 g8
	g4. ~ g4 g8 fis4 g8
	g4. ~ g4 g8 fis4 g8
	a2.) b4.\glissando
	g,4.( ~g4 g8 fis4 g8
	g4. ~g4 g8 fis4 g8
	g4. ~g4 g8 fis4 ) e8\(
	d4. ~d4 d8 cis4 d8
	
	e2. \) ~e4 e8 \(
	d4. ~ d4 d8 cis4 d8
	ees2.\) s4.
	
	
	}\\{
	r4. <g,, d' g b>2.
	r4. <a g' c e>2.
	r4. <d d' fis>2.
	r2. <g b g'>4.
	
	r4. <g d' b'>2. 
	r4. <g dis' b'>2. 
	r4. <g e' b'>2. 
	<g e' c'>2. r4.
	
	r4. <g, d' g b>2.
	r4. <a e' g c>2.
	r4. <d a' c>2.
	r4. <g, d' b'>2.
	\break
	r4. <<{}\\{c2. r4. < g d'>2. }\\{g'4. _(a4. ~ a4.  b2.)}>>

	r4. <<{g4. (a ais4.
	<b d, b g>2.)}\\{c,2.}>>

	}>>
	\breathe
	g''2.\harmonic r4.
	
	\bar "|."
	\pageBreak
	s1
	
}
}
>>
}


