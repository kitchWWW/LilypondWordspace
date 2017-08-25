
mainThemeOneC = {

\override Score.BarNumber.break-visibility = ##(#f #f #f)

	e8 g, e g c g  <g' c,,> g, e g g' g,
	<g' b,,> g, f' g, e' g, <e' g,,> g, b, g' <d' d,> g,
	<c a,> g e g c g <c e,> g d' g, e' g,
	<e' a,,> a, e a e' a, <d d,> g, <e' b,> g, <f' g,,> g,
}

aCoolVariationC = {
	<e' c,> c e, c' g' c, <a' e,> b, bis b b' b,
	<e  c,> c e, c' g' c, <g'  a,,> c, e, c' g' c,
	<g'  d,> c, a c g' c, <g'  d,> b, f' b, e b
	<d c,> g, e g d' g, <c c,> g e g c g 
}

mainThemeTwoC = {
	e'8 g, e g c g  <g' c,,> g, e g g' g,
	<g' b,,> g, f' g, e' g, <e' g,,> g, b, g' <d' d,> g,
	<c a,> g e g c g <c e,> g <d' d,> g, <e' b,> g,
	<e' g,,> g, e g e' g, <d' d,> g, <e' b,> g, <d' f,> g,
	<c e, c>2^"Fine" \bar ":|." e8 f
	
}

andThenThisC = {
	<g c,,>8 g, e g e' g, <c c,> ais e ais c ais
	<c f,,> a c, a' d a <c c,> g e g d' g,
	<d' f,,> a d, a' f' a, <e' c,> g, e g e' g,
	<d' d,> a c a b a <c e, c>2. ^"D.C. al Fine"
	\bar "|."


}

\score {

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3
         "Moment 3" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}


\new Staff
<<
\relative c''{
\time 3/4
\set Timing.beamExceptions = #'()
\set Timing.beatStructure = #'(1 1 1)
	\mainThemeOneC
	\aCoolVariationC
	\mainThemeTwoC
	\andThenThisC
}

>>
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 10)
    }
  }

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
