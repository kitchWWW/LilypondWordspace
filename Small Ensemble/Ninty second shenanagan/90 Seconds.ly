\version "2.18.2"
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "90 second shenanagan" }
subtitle=""
composer =  \markup { 
         \override #'(font-name . "Avenir Light") "Brian Ellis"}
tagline=""
}

\paper{
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-page-number = ##f
}


horn = \relative c {
  \clef bass
  \key g \minor
  \time 4/4
	\tempo 4 =80 
\unfoldRepeats {
\repeat volta 2 {
	bes16-. bes-. bes-. g32( a 
	bes16-.) bes-. bes-. g32( a 
	bes16-.) bes-. bes-. g32( a 
	bes16-.) bes-. c-. bes-. a8-- r
	d16 d d bes32 (c d16) f ees8 c16 g' c, bes32 (a
	g16) g g d32 (ees g16) g g d32 (ees g16) g g d32 (ees g16) g fis g
	a8-- r f'16 f f c32( d f16) a bes8 g16 d' g, bes
}
\alternative {
{
	ees,16 bes' ees, d bes d bes a d fis c a bes d a g32 ( a)
}
{ees'16 bes' ees, d bes d bes a d fis c a g8 r16 d32 e}
}
}

}


upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
	
}

lower = \relative c {
	\set Staff.pedalSustainStyle = #'bracket
  \clef "bass"
  \key c \major
  \time 4/4	
	
	\bar "|."
	}

\score {
  <<
    \new Staff = "" \with {
  instrumentName = \markup { 
         \override #'(font-name . "Avenir Light")
		"Horn in F" }
  shortInstrumentName = #""
  midiInstrument = "Clarinet"
}
	{\transpose c c {\horn}}
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { 
		\Score
    	\consists "Span_arpeggio_engraver"
	}
  }
  \midi { }
}