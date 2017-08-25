#(set-global-staff-size 15)


\header {
	title = "No. 1"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}



\score{
\header {
	piece = "Lyrical."
}

\new Staff \with {
  instrumentName = #"Flute"
  shortInstrumentName = #""
  midiInstrument = "Flute"
}\relative c'' {
	\key d \major
	\tempo 4 = 60
	
	e2. e32 fis g fis e16 d
	e2. a4
	b2. b32 cis d cis b16 a
	\time 3/4
	g2. fis
	d4 cis cis32 d e d cis16 b
	\time 4/4
	e2. b4
	e2. b4
	e1
}
\layout{}
\midi{}

}


