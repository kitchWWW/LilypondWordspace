\version "2.18.2"
	

#(set-global-staff-size 18)

\include "mvmts/mvmt 1.ly"
\include "mvmts/mvmt 2.ly"
\include "mvmts/mvmt 3.ly"
\include "mvmts/mvmt 4.ly"
\include "mvmts/mvmt 5.ly"

\relative c {
a
}

\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  print-all-headers = ##t
  print-page-number = ##f
  indent = 0.0\cm
}

\header{
tagline = ""
}