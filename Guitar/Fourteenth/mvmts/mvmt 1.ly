introA = {

\override Score.BarNumber.break-visibility = ##(#f #f #f)
\time 3/4
		\grace b16
		<a, e' a c>2.
		\grace {b'16 c}
		<a, e' a d>2.
		<<{
			\grace b'16
			c8. c16 (d8.) d16 (e8.\2) e16 (d8.) d16 (c8.) c16 b4\fermata
		}\\{
			<a, e' a>2.
		}>>
}
firstThemeA = {
<<{
	\grace b'16
	c4 c d
	e2 f4 e2
	<d b>4 <e c>2.
	r4 e d
	c d c
	d e d
	b c b
	ais2 fis'4
}\\{
	<a,, e' a>2. r4
	<c e a>2.
	a2. fis'4\< f 
	e2.\!
	<a, a'>
	<e b''>
	<d' a'>
	<fis, fis'>2.
}>>
}

secondThemeA = {
<<{
	g''4^"pont." fis e
	d c b
	a g a 
	b2 b4
\harmonicsOn
	g'4.^"A.hrm XII" fis8 e4
	d c b
	a4. c8 b4
	a2
\harmonicsOff
	b4
}\\{
	c,2.
	g
	a
	e
	c'
	g
	a
	e
}>>
}

thirdThemeA = {
\time 4/4
	\override TupletBracket.bracket-visibility = ##t
	\times 2/3 { a8-0^"accel." a'-2 c-1} \omit TupletNumber  
	\override TupletBracket.bracket-visibility = ##f
	\times 2/3 { a, a' c} \times 2/3 { a, a' c}
	\times 2/3 { a,-0 b'-2 d-1}
	\times 2/3 { a,-0 c'-2\3 e-1\2} \times 2/3 { a,, c' e} \times 2/3 { a,, c' e}
	\times 2/3 { a,,-0 d'-2 f-1}
	\times 2/3 { a,, c' e} \times 2/3 { a,, c' e} \times 2/3 { a,, c' e}
	\times 2/3 { a,, b' d}
		\times 2/3 { a, c' e} \times 2/3 { a,, c' e}
		\times 2/3 { a,, c' e}\times 2/3 { a,, c' e}
	\times 2/3 { a,,8 a' c} \times 2/3 { a, a' c} \times 2/3 { a, a' c}
	\times 2/3 { a, b' d}
	\times 2/3 { a, c' e} \times 2/3 { a,, c' e} \times 2/3 { a,, c' e}
	\times 2/3 { a,, d' f}
	\times 2/3 { a,, c' e} \times 2/3 { a,, c' e} \times 2/3 { a,, c' e}
	\times 2/3 { a,, b' d}
		\times 2/3 { a, c' e} \times 2/3 { a,, c' e}
		\times 2/3 { a,, c' e}\times 2/3 { a,, c' e}
	\times 2/3 { a,,8^"allegro" a' c} \times 2/3 { a, a' c} \times 2/3 { a, a' c}
	\times 2/3 { a, b' d}
	\times 2/3 { a, c' e} \times 2/3 { a,, c' e} \times 2/3 { a,, c' e}
	\times 2/3 { a,, d' f}
	\times 2/3 { a,, c' e} \times 2/3 { a,, c' e} \times 2/3 { a,, c' e}
	\times 2/3 { a,,-0 b'-2 d-1}
		\times 2/3 { a,-0^"rit." c'-3 e-4} \times 2/3 { fis,-1 c'-3 e-4}
		\times 2/3 { f,-1 c'-3 e-4}\times 2/3 { e,-1 c'-3 e-4}
	d,-0 c'-3 dis2-2-> ~dis8 dis e2.-2\2 e4\1
}
fourthThemeA = {
	\times 2/3 {d,8\< f' e} \times 2/3 {d a d,}
	\times 2/3 {e f' e} \times 2/3 {d a e}
	\times 2/3 {f f' e} \times 2/3 {d a f\!}

<<{
	fis'4\glissando (gis8)\glissando (ais)
}\\{
	<fis, ais dis>4\f r4
}>>
}
fifthThemeA = {
	\time 3/4
	<dis ais''>8 \p dis' g, dis' b' dis,
	<cis, gis''>8 cis' f, cis' a' cis,
	<a, g''>8 cis' e, cis' gis' cis,
	<d, a' d f>2\fermata
}
endingA ={
	e'4
<<{
	f4. e8 d4
	f4. e8 d4
	e2\2^"very expressive" d4\3
	c4.\3 d8 c4
	a2.
}\\{
	<d, a' d>2.
	<e a d>
	r4 f2\5
	e,2.
	a2.
}>>
 \bar "|."
}

\score {
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "Moment 1" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}
\new Staff
	\relative c''{
	\introA
	\firstThemeA
	\secondThemeA
	\thirdThemeA
	\fourthThemeA
	\fifthThemeA
	\endingA
}
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
  %\midi {}
}

\paper{
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  print-all-headers = ##t
  print-page-number = ##f
  indent = 0.0\cm
}

\header{
tagline = ""
}

\pageBreak
