\version "2.18.2"
	


\include "parts/flute.ly"
\include "parts/horn.ly"
\include "parts/viola.ly"
%\include "parts/guitar.ly"

#(set-global-staff-size 18)

\paper{
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  print-all-headers = ##t
  print-page-number = ##f
}

\header { tagline = ""}

\pageBreak
\relative c' {c}
