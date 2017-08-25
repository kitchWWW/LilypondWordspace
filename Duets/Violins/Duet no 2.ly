\header {
  title = "Chorus for Violins"
  composer = "Brian Ellis"
  tagline = ""
  piece = "No 2. Freely"
  instrument = ""
}
\score {
\new StaffGroup
<<
  \new Staff \with {midiInstrument = #"cello"} \relative g' {
	\key a \minor
	\time 6/4
	\tempo 4 = 70
	b ~ b f ~ f ~ f c'4
	a4 f' d ~ d b ~ b
	c d c c a c d e b ~ b~ b2
	\bar "||"
	b4 c d d c b
	g'~ g ~ g f d f
	e b f' c ~c b
	b g c c c b
	b2 f'4 d ~ d b ~ b2
	\bar "|."
  }
  \new Staff \with {midiInstrument = #"cello"} \relative g' {
    \clef treble
	\key a \minor
	\time 6/4
	\tempo 4 = 70
	a4 g ~ g a b ~ b
	b e ~ e c ~ c a
	g ~ g a b ~ b ~ b	
	a ~ a d a c2
	\bar "||"
	a4 g a g b a
	a b f' e ~ e ~ e
	d ~ d ~ d a b a
	g f ~ f b e, f
	a2 e'4 ~ e c ~ c a2
	\bar "|."
}
>>
\midi {} \layout {}
}