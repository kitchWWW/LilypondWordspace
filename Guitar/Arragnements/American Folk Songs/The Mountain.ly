\version "2.18.0"
#(set-global-staff-size 20)


\header {
	title = \markup{\smallCaps {"The Mountain"}}
	subtitle = "Solo Guitar"
	composer = "Steve Earle"
	arranger = "arr. Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c' {
	\tempo 4 = 90
	\clef "treble_8"
	\time 3/4
	\key d \major
	\partial 4 {d8 e8}
	<<{fis4 fis4. <e b>8}\\{<d, a' d>2 e4}>>
	<<{d'4 d4. <d g,>8}\\{<fis, a>2 e4}>>
	<<{fis'4 a}\\{<d,, a' d>2}>> <fis' d g, a,>4
	<<{<b fis d>2}\\{b,,4 fis' b}>>
	<<{fis'2 d4}\\{a,4 fis' b}>>
	<<{e2 d4}\\{b,4 fis' b}>>
	<<{fis'2 fis8 a8}\\{a,,4 fis' <g d'>}>>
	<<{b'4 a4. b8}\\{<b, g e>2 fis4}>>
	<<{fis'4 d4. e8}\\{<g, d g,>2 a,4}>>
	<<{fis''4 d d}\\{fis,2.}\\{g2 a4}>>
	<<{<b b>4 <b b> <b b>}\\{<b, fis'>2.}>>
	<<{<b' b>4 <b b>  d8 e}\\{<b, fis'>2 r4}>>
	\bar "||"

	<<{fis''4 fis4. <e b>8}\\{<d, a' d>2 e4}>>
	<<{d'4 d4. <d g,>8}\\{<fis, a>2 e4}>>
	<<{fis'4 a d8 cis}\\{<d,, a' d>2 <a g' b>4}>> 
	<<{<b'' fis d>2 fis8 a}\\{b,,8 fis' b d s4}>>

	<<{
	b'4 a4. b8
	fis8 e d4. e8
	fis8 e d4 d
	b4 b b b b b8 cis
	cis4 cis cis cis cis
	}\\{
	<g d d,>2 a,4
	d2 a4 d,2.
	b'2. b2.
	a a2
	}>>
%fucking harmonics
	
<<{	\harmonicsOn
	d8_\markup { \teeny XII }
	a_\markup { \teeny VII }
	\bar "||"
	
	d,4_\markup { \teeny IX }
	d4._\markup { \teeny IX }
	a'8_\markup { \teeny VII }
	d4^\markup { \teeny XII }
	d4.^\markup { \teeny XII }
	d8^\markup { \teeny XII }
	d,4_\markup { \teeny IX }
	a'4_\markup { \teeny V }
	d,4_\markup { \teeny IX }
	b''2.^\markup { \teeny XII }
	a,2_\markup { \teeny V }
	d,8_\markup { \teeny IX }
	a'8_\markup { \teeny V }
	b'4^\markup { \teeny XII }
	a,4._\markup { \teeny V }
	b'8^\markup { \teeny XII }
	d,,4_\markup { \teeny IX }
	d'4.^\markup { \teeny XII }
	a8^\markup { \teeny VII }
	d,4^\markup { \teeny IX }
	d'^\markup { \teeny XII }
	d^\markup { \teeny XII }
	
	\harmonicsOff
	}\\{
	
}>>

	
	<<{<b' b> <b b> <b b> }\\{b,2.}>>
	<<{<cis' a e>4 <cis a e> <cis a e>}\\{cis,2.}>>
	<<{<cis' a e>4 <cis a e> <cis a e>}\\{cis,4 cis cis}>>
	<<{d'2.}\\{d,2.}\\{ g4 b g}>>
	<<{d'4 d d8 e}\\{<a, fis d>2.}>>
	
\bar "||"

	<<{fis'4 fis4. <e b>8}\\{<d, a' d>2 a4}>>
	<<{d'4 d4. <d g,>8}\\{<a d, d,>2 a,4}>>
	<<{fis''4 a8 e fis a}\\{<d,, a' d>2 g4}>>
	<<{b'4\fermata a4. b8}\\{<b, g d d,>2 a,4}>>
	<<{fis''4 d4. e8}\\{<b, d g>2 a4}>>
	<<{<fis'' b,>4 <d g,> <d a>}\\{<fis,>2.}>>
	<<{<b b>4 <b b> <b b>}\\{<b, fis'>2.}>>
	<<{<b' b>4 <b b> <b b>}\\{}>>
	<<{<cis a> <cis a> <cis a> <cis a e> <cis a e> <cis a e> }
		\\{cis,2. cis4 cis cis}>>
	<<{d'2.}\\{d,2.}\\{ g4 b g}>>
	<<{d'4 d d8 e}\\{<a, fis d>2.}>>
	
	\bar "||"
	
	fis'4 fis4. e8 d4 d4. d8 fis4 a fis b2.fis
	b4 a4. b8 fis4 d4. e8 fis4 d d <b b>2. cis2.
	<<{d2.}\\{d,2.}\\{ g4 b g}>>
	<d' a fis d d,>2.	
	\bar "|."
	\pageBreak
	s1
} 
}


