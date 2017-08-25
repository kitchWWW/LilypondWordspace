\version "2.18.2"
%#(set-global-staff-size 19)
\header{
title ="Movement"
subtitle="   "
composer = "Brian Ellis"
tagline=""
}

\paper{
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  ragged-last-bottom = ##t
}

violin = \relative c'' {
	\tempo 4 = 120
	\time 9/8
	\key d \major
	a8 (d fis g2) a8 (g) a (g d fis2) r4
	a,8 (cis fis g2) a8 (g) a (g cis, fis2) r4
	a,8 (d fis g2) a8 (g) d' (cis a fis2) g8 (fis)
	g (fis cis g'2) a8 (g) g (fis cis d2) r4

}

cello = \relative c, {
	\clef bass
	r4. r2 r4 r4. r2 fis8 g
	a4. <a d>2~ <a d>4
	<g d'>4. a2 cis4
}


upper = \relative c'' {
	\clef treble
	r4. r8 

}

lower = \relative c {
  \clef bass
	r4. <d fis a>2 ~<d fis a>4
}

\score {
	<<
	\new Staff \with {
  instrumentName = #"Violin"
  shortInstrumentName = #"Vl."
  midiInstrument = "Violin"
	} \violin
	\new Staff \with {
  instrumentName = #"Cello"
  shortInstrumentName = #"Cel."
  midiInstrument = "Cello"
} \cello
	\new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

	>>
  	
  \layout { }
  \midi { }
}
