\version "2.18.2"
#(set-global-staff-size 22)

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
%  ragged-last-bottom = ##t
  indent = 2.0\cm
	print-page-number = ##f

}

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Elegy" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "For Solo Classical Guitar" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}


\score{
\midi {}
\layout{}
\relative c''{
 \override Staff.TimeSignature.break-visibility = ##(#f #t #t)

  \override Score.BarNumber.break-visibility = ##(#f #f #f)
\numericTimeSignature
	\key fis \minor
	\time 8/4
	<<{
	a2 (cis b1)
	a2 (cis b1)
\break
	a2 (fis'4 e d2) cis4 b
	a2 (cis <b gis>) a4 gis
}\\{
	<a, fis'>2 <fis' a> <e gis> e,
	<a fis'>2 <fis' a> <<{r2 e'}\\{<e, gis>1}>>

	<a, fis'>2 <fis' a cis> <e gis>1
	<a, fis'>2 <fis' a> <e>1
}>>
\break
<<{
	fis2 (e fis1)
	fis2 (e fis1)
	fis2 (gis a1)
\mark \markup { \musicglyph #"scripts.coda" }
	a2 (fis' gis1)
}\\{
	<fis,, a>2 <gis b> <<{s2 cis'}\\{<fis,, a>1}>>
	<fis a>2 <gis b> <<{s2 d''}\\{<fis,, a>1}>>
	<fis a>2 <cis' e> <<{s2 e'}\\{<fis, a,>1}>>
	<a, fis'>2 <fis' a cis> <<{b1}\\{e,2 b}>>
}>>
\break

	<<{
	a'2 (cis b1)
	a2 (cis b1)
\break
	a2 (fis'4 e d2) cis4 b
	a2 (cis <b gis>) a4 b
}\\{
	<a, fis'>2 <fis' a> <e gis> e,
	<a fis'>2 <fis' a> <<{r2 e'}\\{<e, gis>1}>>
	<a, fis'>2 <fis' a cis> <e gis>1
	<a, fis'>2 <fis' a> <e>1 \bar "||"
}>>

\pageBreak

\override TextSpanner.bound-details.left.text
= \markup { 8va }

\bar".|:"
\break
 \time 4/4
	fis'4\harmonic\startTextSpan fis fis fis
	\stopTextSpan
	fis fis fis fis 
	<<{fis fis fis fis }\\{}>>
	fis fis \harmonic fis fis 
\break
\time 5/4
	fis fis fis fis fis
\time 4/4
	<<{fis fis fis fis 
	fis fis\harmonic fis fis 
	}\\{a,1 ~ a}>>
	fis'4 fis fis fis 
\break	
	fis fis fis fis 
	fis fis fis\harmonic fis 
	<<{fis fis fis fis 
	fis fis fis fis 
	}\\{a,1 ~ a}>>
\time 3/4
	fis'4 fis fis
\break
\time 4/4
	fis\harmonic fis fis fis
\time 5/4
	<<{fis fis fis fis fis
\time 4/4
	fis fis fis fis 
	}\\{a,1 (s4 a1)}>>
	\break
\bar ":|."

	fis'1\harmonic (s) s
\time 5/4	
	r4 fis1\harmonic \(
\time 4/4
	s1\)
	s1
^\markup { \center-column { "D.C. al Coda" \line { \musicglyph #"scripts.coda" \musicglyph #"scripts.tenuto" \musicglyph #"scripts.coda"} } }
\bar "||"


 % Coda on new line, use this:
   \once \override Score.RehearsalMark.extra-offset = #'( -4.5 . 0 )

   \mark \markup { \musicglyph #"scripts.coda" }

   % The coda


\break

\time 8/4
<<{
	a,2 (fis' gis1)
}\\{
	<a,, fis'>2 <fis' a d> <<{<b d>1}\\{e,2 b}>>
}>>
	<<{
	a'2 (d cis1)
	a2 (d cis1)
\break
	a2 (fis'4 e d2) cis4 b
	a2 (cis <b gis>) a4 gis
}\\{
	<a, fis'>2 <fis' a> <e gis> e,
	<a fis'>2 <fis' a> <<{r2 e'}\\{<e, gis>1}>>

	<a, fis'>2 <fis' a d> <e gis>1
	<a, fis'>2 <fis' a> <e>1 
}>>


<<{

	fis2 (gis a1)
}\\{
	<fis, a>2 <cis' e> <e a,>1 \fermata
}>>

\bar "|."

}
}