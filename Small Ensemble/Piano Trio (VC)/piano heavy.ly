\version "2.18.2"
#(set-global-staff-size 23)
\header{
title = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Headlines" }
subtitle=""
composer = \markup { 
         \override #'(font-name . "Avenir Light") "Brian Ellis"}
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
	\tempo 4 = 144
	\time 5/4
	\key bes \minor
	r2. r2 r2. r2
	r2. c4 c
	r4 c c r2
	r2. g4 c
	r4 g4 c r2
	r2. c4 c
	r4 c c r2
	r2. g4 c
	r4 g4 c r2
	r2. ges4 c
	r4 ges4 c r2
	r2. c8 des c des
	r4 c8 des c des r2
	r2. c16 des d r c16 des d r
	r4 c16 des d r c16 des d r r2
	r2. c8 des c des
	c des c des c des r2
	r2. c'4 c
	c c c r2
	r2. a4 c
	c a c r2
	r2. g4 c
	c g c r2
	r2. ges4 c
	c ges c r2
	r2. r2
	r2. r2
	<c aes>8 r  <c aes> r  <c aes> r  <c aes> r  <c aes> r  
	<c aes> r  <c aes> r  <c aes> r  <c aes> r  <c aes> r  
	r2. r2
	r2. r2
	<c aes>8 r  <c aes> r  <c aes> r  <c aes> r  <c aes> r  
	<c aes> r  <c aes> r  <c aes> r  <c aes> r  <c aes> r  
	r2. r2
	r2. r2
	\bar ":|."
	r2. g4 c
	r4 g4 c r2
	r2. ges4 c
	r4 ges4 c r2
	r2. f,4 c'
	r4 f,4 c' r2
	r2. f,4 bes
	r4 f4 bes r2
	r2. f4 b
	r4 f4 b r2
	r2. f4 b
	r4 f4 b r2
	r2. \parenthesize f2
	\bar "|."
	
}

cello = \relative c, {
	\tempo 4 = 144
	\time 5/4
	\key bes \minor
	\clef bass
	r2. r2
	r2. r2
	<des aes'>2. ~<des aes'>2
	<des aes'>2. ~<des aes'>2
	<ees' g,>2. ~<ees g,>2
	<ees g,>2. ~<ees g,>2
	<des, aes'>2. ~<des aes'>2
	<des aes'>2. ~<des aes'>2
	<ees' g,>2. ~<ees g,>2
	<ees g,>2. ~<ees g,>2
	<aes, des>2. ~<aes des>2
	<aes des>2. ~<aes des>2
	<ees aes>2. ~<ees aes>2
	<ees aes>2. ~<ees aes>2
	<d aes'>2. ~<d aes'>2
	<d aes'>2. ~<d aes'>2
	des2. ~des2
	des2. ~des2
	aes'4 aes aes aes aes
	aes aes aes aes aes
	a4 a a a a
	a a a a a
	g g g g g
	g g g g g
	ges4 ges ges ges ges
	ges4 ges ges ges ges
	<des aes'>2. ~<des aes'>2
	<des aes'>2. ~<des aes'>2
	<c ees'>8 r <c ees'> r  <c ees'> r  <c ees'> r  <c ees'> r  
	<c ees'> r  <c ees'> r  <c ees'> r  <c ees'> r  <c ees'> r  
	r2. r2
	r2. r2
	<c ees'>8 r <c ees'> r  <c ees'> r  <c ees'> r  <c ees'> r  
	<c ees'> r  <c ees'> r  <c ees'> r  <c ees'> r  <c ees'> r  
	r2. r2
	r2. r2
	\bar ":|."
	<ees' g,>2. ~<ees g,>2
	<ees g,>2. ~<ees g,>2
	<aes, des>2. ~<aes des>2
	<aes des>2. ~<aes des>2
	<f des'>2. ~<f des'>2
	<f des'>2. ~<f des'>2
	<f des'>2. ~<f des'>2
	<f des'>2. ~<f des'>2
	<f bes>2. ~<f bes>2
	<f bes>2. ~<f bes>2
	<e bes'>2. ~<e bes'>2
	<e bes'>2. ~<e bes'>2
	r2. \parenthesize f2
	\bar "|."
}


upper = \relative c'' {
	\tempo 4 = 144
	\time 5/4
	\clef treble
	\key bes \minor
%intro (G#)
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%G
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%Norm	
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%G
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%F#
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%norm	
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%D
	d,8 des' d, des' d, des' d, des' d, des' 
	d,8 des' d, des' d, des' d, des' d, des'
%C#	
	des,?8 des' des, des' des, des' des, des' des, des' 
	des,8 des' des, des' des, des' des, des' des, des'
%norm (d#)
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%A
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%G
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%F#
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%norm (D#)
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%special with C
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%norm (G#)
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%special with C
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%norm (G#)
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
	\bar ":|."
%G
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%F#
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%F
	ees,8 des' ees, des' ees, des' ees, des' ees, des' 
	ees,8 des' ees, des' ees, des' ees, des' ees, des'
%A#
	ees,8 bes' ees, bes' ees, bes' ees, bes' ees, bes' 
	ees,8 bes' ees, bes' ees, bes' ees, bes' ees, bes'
%b
	ees,8 bes' ees, bes' ees, bes' ees, bes' ees, bes' 
	ees,8 bes' ees, bes' ees, bes' ees, bes' ees, bes'
%e
	e,8 bes' e, bes' e, bes' e, bes' e, bes' 
	e,8 bes' e, bes' e, bes' e, bes' e, bes'
f1 ~f4
}

lower = \relative c {
  \clef bass
	\key bes \minor
	\set Staff.pedalSustainStyle = #'bracket
%intro (G#)
	aes'8\sustainOn des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
%G
	g8 des g des g des g des g des
	g8 des g des g des g des g des	
%Norm	
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
%G
	g8 des g des g des g des g des
	g8 des g des g des g des g des
%F#
	ges?8 des ges des ges des ges des ges des
	ges8 des ges des ges des ges des ges des
%norm	
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
%D
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
%C#	
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
%norm (d#)
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
%A
	a'8 des, a' des, a' des, a' des, a' des,
	a'8 des, a' des, a' des, a' des, a' des,
%G
	g8 des g des g des g des g des
	g8 des g des g des g des g des
%F#
	ges?8 des ges des ges des ges des ges des
	ges8 des ges des ges des ges des ges des
%norm (D#)
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
%special with C
	<aes' c>8 des, <aes' c> des, <aes' c> des, <aes' c> des, <aes' c> des,
	<aes' c>8 des, <aes' c> des, <aes' c> des, <aes' c> des, <aes' c> des,
%norm (G#)
	aes'8\sustainOff \sustainOn des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
%special with C
	<aes' c>8 des, <aes' c> des, <aes' c> des, <aes' c> des, <aes' c> des,
	<aes' c>8 des, <aes' c> des, <aes' c> des, <aes' c> des, <aes' c> des,
%norm (G#)
	aes'8\sustainOff \sustainOn des, aes' des, aes' des, aes' des, aes' des,
	aes'8 des, aes' des, aes' des, aes' des, aes' des,
%G
	g8 des g des g des g des g des
	g8 des g des g des g des g des
%F#
	ges8 des ges des ges des ges des ges des
	ges8 des ges des ges des ges des ges des
%F
	f8 des f des f des f des f des
	f8 des f des f des f des f des
%A#
	f8 des f des f des f des f des
	f8 des f des f des f des f des
%b
	f8 b, f' b, f' b, f' b, f' b,
	f'8 b, f' b, f' b, f' b, f' b,
%e
	f'8 b, f' b, f' b, f' b, f' b,
	f'8 b, f' b, f' b, f' b, f' b,
	r1\sustainOff r4
	\bar "|."
}

\score {
	<<
	\new Staff \with {
  instrumentName = \markup { 
         \override #'(font-name . "Avenir Light")
		"Violin" }
  shortInstrumentName =#""
  midiInstrument = "violin"
	} \violin

		\new Staff \with {
  instrumentName = \markup { 
         \override #'(font-name . "Avenir Light")
		"Cello" }
  shortInstrumentName = #""
  midiInstrument = "cello"
} \cello

	\new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { 
         \override #'(font-name . "Avenir Light")
		"Piano" }
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

	>>
  	
  \layout { }
  \midi { }
}
