#(set-global-staff-size 15)


\header {
	title = "Ballet No. 1"
	subsubtitle = "For Musicians"
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
	piece = "Movement 2"
}
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #"1"
  midiInstrument = "Violin"
}\relative c'' {
	\tempo "Lento" 4 = 100
	e1\f ~ e ~ e ~ e
	\bar "||"
	e e 
	e e
	e e
	f f
	f f
	e e
	ees ees
	d d
	\bar "||"
	e e 
	e e
	e e
	f f
	f f
	e e
	ees ees
	d d
	


}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"2"
  midiInstrument = "Violin"
} \relative c' {	
	c'\f ~ c ~ c ~ c
	\bar "||"
	
	c c
	b b
	bes bes
	a a
	aes aes
	g g
	a a
	b b
	\bar "||"
	c8 c r c r c r c
	c8 c r c r c r c
	b8 b r b r b r b
	b8 b r b r b r b
	bes8 bes r bes r bes r bes
	bes8 bes r bes r bes r bes
	a8 a r a r a r a
	a8 a r a r a r a
	aes8 aes r aes r aes r aes
	aes8 aes r aes r aes r aes
	g8 g r g r g r g
	g8 g r g r g r g
	a8 a r a r a r a
	a8 a r a r a r a
	b8 b r b r b r b
	b8 b r b r b r b
	
}

>>

\layout{}
\midi{}

}


