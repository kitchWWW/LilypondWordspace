\version "2.18.2"


\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  print-page-number = ##f
}

\header{
title = "Songs and Interludes"
subtitle = \markup{\column{"   " "In Two and Three Parts"}}
composer =  \markup{\column{"   " "Brian Ellis" "  " "  " " "}}
piece = ""
insturment = "Flute"
tagline=""
}


#(set-global-staff-size 20)

\include "Interlude 1.ly"

\pageBreak


\include "parts/fluteSongOne.ly"	

\score{
\header{
piece ="Song, Pt. 1"
composer = "Brian Ellis"
tagline =""
}
\new Staff \with {
  instrumentName = #"Flute"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\fluteSongOne
}
\layout{}
}


\include "Interlude 2.ly"

\pageBreak

\include "parts/fluteSongTwo.ly"	

\score{
\header{
piece ="Song, Pt. 2"
composer = "Brian Ellis"
tagline =""
}
\new Staff \with {
  instrumentName = #"Flute"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\fluteSongTwo
}
\layout {
  }
}

\include "Interlude 3.ly"
