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
	piece = "Movement 1"
}
\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #"1"
  midiInstrument = "Violin"
}\relative c'' {
	\tempo "Bombastic" 4 = 100
	c16\pp c e e c c e e c c e e c c e e
	c c e e c c e e c c e e c c e e	
	c c e e c c e e c c e e c c e e	
	c c e e c c e e c c e e c c e e	
	\bar "||"
	c\mp-- c e e c c e e c c e e c c e e	
	c c e e c c e e c c e e c c e e	
	b\< b e e b b e e b b e e b b e e
	b b e e b\> b e e b b e e b b e e\!\breathe
	bes bes e e bes bes e e bes bes e e bes bes e e
	bes bes e e bes bes e e bes bes e e bes bes e e
	a, a f' f a, a f' f a, a f' f a, a f' f
	a, a f' f a, a f' f a, a f' f a, a f' f
	aes, aes f' f aes, aes f' f aes, aes f' f aes, aes f' f
	aes, aes f' f aes, aes f' f aes, aes f' f aes, aes f' f
	g, g e' e g, g e' e g, g e' e g, g e' e
	g, g e' e g, g e' e g, g e' e g, g e' e
	a, a ees' ees a, a ees' ees a, a ees' ees a, a ees' ees
	a, a ees' ees a, a ees' ees a, a ees' ees a, a ees' ees
	b b d d b b d d b b d d b b d d
	b b d d b b d d b b d d b b d d
	\bar "||"
	c\mf c e e c c e e c c e e c c e e	
	c c e e c c e e c c e e c c e e	
	b b e e b b e e b b e e b b e e
	b b e e b b e e b b e e b b e e
	bes bes e e bes bes e e bes bes e e bes bes e e
	bes bes e e bes bes e e bes bes e e bes bes e e
	a, a f' f a, a f' f a, a f' f a, a f' f
	a, a f' f a, a f' f a, a f' f a, a f' f
	aes, aes f' f aes, aes f' f aes, aes f' f aes, aes f' f
	aes, aes f' f aes, aes f' f aes, aes f' f aes, aes f' f
	g, g e' e g, g e' e g, g e' e g, g e' e
	g, g e' e g, g e' e g, g e' e g, g e' e
	a, a ees' ees a, a ees' ees a, a ees' ees a, a ees' ees
	a, a ees' ees a, a ees' ees a, a ees' ees a, a ees' ees
	b b d d b b d d b b d d b b d d
	b b d d b b d d b b d d b b d d
	\bar "||"
	c\f c e e c c e e c c e e c c e e	
	c c e e c c e e c c e e c c e e	
	b b e e b b e e b b e e b b e e
	b b e e b b e e b b e e b b e e
	bes bes e e bes bes e e bes bes e e bes bes e e
	bes bes e e bes bes e e bes bes e e bes bes e e
	a, a f' f a, a f' f a, a f' f a, a f' f
	a, a f' f a, a f' f a, a f' f a, a f' f
	aes, aes f' f aes, aes f' f aes, aes f' f aes, aes f' f
	aes, aes f' f aes, aes f' f aes, aes f' f aes, aes f' f
	g, g e' e g, g e' e g, g e' e g, g e' e
	g, g e' e g, g e' e g, g e' e g, g e' e
	a, a ees' ees a, a ees' ees a, a ees' ees a, a ees' ees
	a, a ees' ees a, a ees' ees a, a ees' ees a, a ees' ees
	b b d d b b d d b b d d b b d d
	b b d d b b d d b b d d b b d d
	\bar "||"
	c\ff c e e c c e e c c e e c c e e	
	c c e e c c e e c c e e c c e e	
	b b e e b b e e b b e e b b e e
	b b e e b b e e b b e e b b e e
	bes bes e e bes bes e e bes bes e e bes bes e e
	bes bes e e bes bes e e bes bes e e bes bes e e
	a, a f' f a, a f' f a, a f' f a, a f' f
	a, a f' f a, a f' f a, a f' f a, a f' f
	aes, aes f' f aes, aes f' f aes, aes f' f aes, aes f' f
	aes, aes f' f aes, aes f' f aes, aes f' f aes, aes f' f
	g, g e' e g, g e' e g, g e' e g, g e' e
	g, g e' e g, g e' e g, g e' e g, g e' e
	a, a ees' ees a, a ees' ees a, a ees' ees a, a ees' ees
	a, a ees' ees a, a ees' ees a, a ees' ees a, a ees' ees
	b b d d b b d d b b d d b b d d
	b b d d b b d d b b d d b b d d
	\bar "|."
	


}

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #"2"
  midiInstrument = "Violin"
} \relative c' {	
	e16\pp e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	\bar "||"
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	f f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	e, e c' c e, e c' c e, e c' c e, e c' c 
	e, e c' c e, e c' c e, e c' c e, e c' c 
	ees, ees c' c ees, ees c' c ees, ees c' c ees, ees c' c 
	ees, ees fis fis ees ees fis fis ees ees fis fis ees ees fis fis
	d d g g d d g g d d g g d d g g 
	d d g g d d g g d d g g d d g g 
	\bar "||"
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	f f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	e, e c' c e, e c' c e, e c' c e, e c' c 
	e, e c' c e, e c' c e, e c' c e, e c' c 
	ees, ees c' c ees, ees c' c ees, ees c' c ees, ees c' c 
	ees, ees fis fis ees ees fis fis ees ees fis fis ees ees fis fis
	d d g g d d g g d d g g d d g g 
	d d g g d d g g d d g g d d g g 
	\bar "||"
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	f f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	e, e c' c e, e c' c e, e c' c e, e c' c 
	e, e c' c e, e c' c e, e c' c e, e c' c 
	ees, ees c' c ees, ees c' c ees, ees c' c ees, ees c' c 
	ees, ees fis fis ees ees fis fis ees ees fis fis ees ees fis fis
	d d g g d d g g d d g g d d g g 
	d d g g d d g g d d g g d d g g 
	\bar "||"
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	e e g g e e g g e e g g e e g g	
	f f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	f, f c' c f, f c' c f,  f c' c f, f c' c
	e, e c' c e, e c' c e, e c' c e, e c' c 
	e, e c' c e, e c' c e, e c' c e, e c' c 
	ees, ees c' c ees, ees c' c ees, ees c' c ees, ees c' c 
	ees, ees fis fis ees ees fis fis ees ees fis fis ees ees fis fis
	d d g g d d g g d d g g d d g g 
	d d g g d d g g d d g g d d g g 
	
	}

>>

\layout{}
\midi{}

}


