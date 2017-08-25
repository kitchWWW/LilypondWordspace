Cello = {
	\set Score.markFormatter = #format-mark-box-alphabet
\compressFullBarRests
	\override MultiMeasureRest.expand-limit = #2

	\clef bass
	\time 2/4
	\mark \default
	\tempo 4 = 100

\mark \default

\bar "|."
}


\score {
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Rondo" }
subtitle = "  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Mando-Cello" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
tagline = ""
}

	%\midi {}
	\layout {indent = 0}
	\new Staff \relative c{\Cello}
}

\pageBreak

