\version "4.216.4"
\header{
title ="Deeper into the Woods"
subtitle="For the East London Sound Ensemble"
composer = "Brian Ellis"
tagline =""
}

#(set-global-staff-size 15)

\paper{
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = .5\cm
  bottom-margin = 0\cm
  print-page-number = ##f
%#(set-paper-size "letter" 'landscape)
}




\markup {
  \column {
    \line { \column{\line{Section \number 1} \vspace#1 \huge{\dynamic p }}
\hspace #4
\column {
\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {instrumentName = #"Mansur Ney"}{
	\relative c' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4 
<< f1^\markup{\italic{"*Extend pitch with Ableton"}} { s4 s4\< s4\> s4\! } >>
	r4
	%\bar ":|."
}}}

\line {
\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c' {
	\key f \major
	\clef "treble"
	\time 9/4
	%\bar ".|:"
	r4 
	<< f1:32_"sul F"^\markup{\italic{"tremolo picking"}} { s4 s4\< s4\> s4\! } >>
	r4
	%\bar ":|."
	}}}

\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c' {
	\key f \major
	\clef "treble"
	\time 9/4
	%\bar ".|:"
	r4 
	<< f1:32_\markup{"sul B"\flat}^\markup{\italic{"tremolo picking"}} { s4 s4\< s4\> s4\! } >>
	r4
	%\bar ":|."
	}}}


\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c' {
	\key f \major
	\clef "treble"
	\time 9/4
	%\bar ".|:"
	r4 
	<< <f f>1:32_\markup{"sul F, B"\flat}^\markup{\italic{"tremolo picking"}} { s4 s4\< s4\> s4\! } >>
	r4
	%\bar ":|."
	}}}

}
}
}
  \vspace #2

\line { \column{\line{Section \number 2} \vspace#1 \huge{\dynamic mp }}
\column {
\line{

\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c'' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4 
\override Beam.grow-direction = #RIGHT
\featherDurations #(ly:make-moment 2/3)
 bes32\<[ bes bes bes bes bes]\! 
\override Beam.grow-direction = #LEFT
\featherDurations #(ly:make-moment 2/3)
 bes32[\> bes bes bes bes bes\!]

	r4
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c'' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4 
\override Beam.grow-direction = #RIGHT
\featherDurations #(ly:make-moment 2/3)
 a32\<[ a a a a a a a]\! 
\override Beam.grow-direction = #LEFT
\featherDurations #(ly:make-moment 2/3)
 a32[\> a a a a a a a\!]

	r4
	%\bar ":|."
	}}}



}

\line{


\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	c'1_\markup{"sul C"}^\markup{\italic{"bowed"}}
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	f'1^\markup{\italic{"bowed"}}
	%\bar ":|."
	}}}


\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	d'1^\markup{\italic{"bowed"}}
	%\bar ":|."
	}}}
}

}}
  \vspace #2
\line { \column{\line{Section \number 3} \vspace#1 \huge{\dynamic f }}
\column{

\line{


\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c''' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4
  \override Glissando.style = #'zigzag
  \cadenzaOn
  a4\glissando ^\markup{\italic{"as a bird at night"}}
  \hideNotes
  e,4
  \unHideNotes
  \cadenzaOff
	r4
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c'' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4
  \override Glissando.style = #'zigzag
  \cadenzaOn
  f4\glissando ^\markup{\italic{"as a bird at night"}}
  \hideNotes
  d,4
  \unHideNotes
  \cadenzaOff
	r4
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c''' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4
  \override Glissando.style = #'zigzag
  \cadenzaOn
  g4\glissando ^\markup{\italic{"as a bird at night"}}
  \hideNotes
  g,4
  \unHideNotes
  \cadenzaOff
	r4
	%\bar ":|."
	}}}

}

\line{

\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c' {
	\key f \major
	\time 600/4
	%\bar ".|:"
	r4_\markup{\italic{"*Set loop pedal to record any portion of this"}}
	<<{c'4 (a\fermata)}\\{f s}>>
	r4
	<<{f'2:32 (d8 bes4 c4.\fermata)}\\{f,}>>
	r4
	a4 ( g4. d4\fermata)
	r4
	bes'2 (g4 a8 g e4\fermata)
	r4
	f4(bes a8 d4.)
	r4
	%\bar ":|."
	}}}
}

}}
  \vspace #2
\line { \column{\line{Section \number 4} \vspace#1 \huge{\dynamic mf }}
\column{
\line{



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c'' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	e4^"rhythmically" e e d e
	%\bar ":|."
	}}}


\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	c^"rhythmically" c c c
	%\bar ":|."
	}}}

\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	g^"rhythmically" g g
	%\bar ":|."
	}}}




}
\line{

\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	e^"pucked, rhythmically" e e e
	%\bar ":|."
	}}}


\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	a^"rhythmically" a a a a g a
	%\bar ":|."
	}}}


\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	bes^"rhythmically" bes bes bes bes
	%\bar ":|."
	}}}



}
}}
  \vspace #2
  }
}


%\pageBreak

\markup{
\column{








\line { \column{\line{Section \number 5} \vspace#1 \huge{\dynamic f }}

\column{
\line{



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	r4 g,2~g8-+^\markup{\italic{"End note with loud overblow"}} r4
	%\bar ":|."
	}}}

\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	r4 a,2~a8-+^\markup{\italic{"sim."}} r4
	%\bar ":|."
	}}}

\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	r4 b,2~b8-+^\markup{\italic{"sim."}} r4
	%\bar ":|."
	}}}

}
\line{

\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	r4
  \arpeggioArrowUp
	<d g, bes,>\arpeggio
	r4
	%\bar ":|."
	}}}


\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	r4
  \arpeggioArrowUp
	<f f, g>\arpeggio
	r4
	%\bar ":|."
	}}}


\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	r4
  \arpeggioArrowUp
	<e bes f>\arpeggio
	r4
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c'' {
	\key f \major
	\time 10/4
	%\bar ".|:"
	r4
  \arpeggioArrowUp
	<c f, f>\arpeggio
	r4
	%\bar ":|."
	}}}

}
}}







  \vspace #2






\line { \column{\line{Section \number 6} \vspace#1 \huge{\dynamic mp }}
\column{
\line{




\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c' {
	\key f \major
	\clef "treble"
	\time 9/4
	%\bar ".|:"
	r4 
	<< bes'1{ s4 s4\< s4\> s4\! } >>
	r4
	%\bar ":|."
	}}}




\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c' {
	\key f \major
	\clef "treble"
	\time 9/4
	%\bar ".|:"
	r4 
	<< d'1{ s4 s4\< s4\> s4\! } >>
	r4
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c'' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4 
\override Beam.grow-direction = #RIGHT
\featherDurations #(ly:make-moment 2/3)
 f32\<[ f f f f f]\! 
\override Beam.grow-direction = #LEFT
\featherDurations #(ly:make-moment 2/3)
 f32[\> f f f f f\!]

	r4
	%\bar ":|."
	}}}




}
\line{



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c'' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4 
\override Beam.grow-direction = #RIGHT
\featherDurations #(ly:make-moment 2/3)
 bes32\<[ bes bes bes bes ]\! 
\override Beam.grow-direction = #LEFT
\featherDurations #(ly:make-moment 2/3)
 bes 32[\> bes bes bes bes \!]

	r4
	%\bar ":|."
	}}}





\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c' {
	\key f \major
	\clef "treble"
	\time 9/4
	%\bar ".|:"
	r4 
	<< f1:32_"sul F"^\markup{\italic{"tremolo picking"}} { s4 s4\< s4\> s4\! } >>
	r4
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c' {
	\key f \major
	\clef "treble"
	\time 9/4
	%\bar ".|:"
	r4 
	<< d'1:32^\markup{\italic{"tremolo picking"}} { s4 s4\< s4\> s4\! } >>
	r4
	%\bar ":|."
	}}}



}
}}
  \vspace #1.5
    \line { Section \number 7 \hspace#6 \column{
\line{"Both players may improvise with sound and silence, if desired."}
\line{}
}}

\vspace #1.5
\line { \column{\line{Section \number 8} \vspace#1 \huge{\dynamic mp }}
\column{
\line{




\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c''' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4
  \override Glissando.style = #'zigzag
  \cadenzaOn
  a4\glissando ^\markup{\italic{"as a bird at night"}}
  \hideNotes
  e,4
  \unHideNotes
  \cadenzaOff
	r4
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c''' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4
  \override Glissando.style = #'zigzag
  \cadenzaOn
  g4\glissando ^\markup{\italic{"as a bird at night"}}
  \hideNotes
  e,4
  \unHideNotes
  \cadenzaOff
	r4
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c''' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4
  \override Glissando.style = #'zigzag
  \cadenzaOn
  f4\glissando ^\markup{\italic{"as a bird at night"}}
  \hideNotes
  e,4
  \unHideNotes
  \cadenzaOff
	r4
	%\bar ":|."
	}}}



}
\line{



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c''' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4
  \override Glissando.style = #'zigzag
  \cadenzaOn
  f4\glissando ^\markup{\italic{"as a bird at night"}}_\markup{\italic{"bowed"}}
  \hideNotes
  e,4
  \unHideNotes
  \cadenzaOff
	r4
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c''' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4
  \override Glissando.style = #'zigzag
  \cadenzaOn
  d4\glissando ^\markup{\italic{"as a bird at night"}}_\markup{\italic{"bowed"}}
  \hideNotes
  e,4
  \unHideNotes
  \cadenzaOff
	r4
	%\bar ":|."
	}}}



\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c''' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4
  \override Glissando.style = #'zigzag
  \cadenzaOn
  e4\glissando ^\markup{\italic{"as a bird at night"}}_\markup{\italic{"bowed"}}
  \hideNotes
  e,4
  \unHideNotes
  \cadenzaOff
	r4
	%\bar ":|."
	}}}






}
}}

\vspace #2
\line { \column{\line{Section \number 9} \vspace#1 \huge{\dynamic p }}
\column{
\line{





\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Ney"
}{\relative c' {
	\key f \major
	\time 600/4
	%\bar ".|:"
	r4
	c'8 [f,] a4\fermata
	r4
	\grace f8
	(f'2) (d8 bes4 c4.\fermata)
	r4
	a4 ( d4. g,4\fermata)
	r4
	bes'2 (a4 g8 a e4 d\fermata)
	r4
	f4(a bes8 d4.)
	r4
	%\bar ":|."
	}}}


}
\line{




\score{
\layout {\context {\Staff \remove "Time_signature_engraver"}}
\new Staff \with {
  instrumentName = #"Saz"
}{\relative c''' {
	\key f \major
	\time 9/4
	%\bar ".|:"
	r4
  r1\fermata
	r4
	%\bar ":|."
	}}}




}
}}


}
}