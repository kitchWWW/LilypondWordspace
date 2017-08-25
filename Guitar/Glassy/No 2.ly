\version "2.18.0"

\header {
	title = "Reflections"
	subtitle = "No. 2"
	subsubtitle = "For Guitar"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 2.5\cm
  right-margin = 2.5\cm
  top-margin = 3\cm
  bottom-margin = 3\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {
    	\context {\Staff \numericTimeSignature}
	}

	\new Staff \with {
	midiInstrument = "Acoustic Guitar (nylon)"
	}
	\relative c''{
	\time 4/4
\repeat volta 2 {
	g8-0 c-1 e-0 c g c e c
	g c e c g c e c
	g c e c g c e c
	g c e c g c e c
	\time 7/8
	g [c e c] g [c e]
	g, [c e c] g [c e]
	g, [c e c] g [c e]
}\repeat volta 2 {
	\time 4/4
	g,8 c e c g c e c
	g c e c g c e c
	g c e c g c e c
	g c e c g c e c
	g b e b g b e b 
	g b e b g b e b 
	g b e b g b e b 
	g b e b g b e b
}
	\time 6/8	\break
	g-0 b-0\2 d-1\2 e-3\2 d-1\2 b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
%set break
\repeat volta 2 {
	\time 4/4	\break
	g8-0 c-1 e-0 c g c e c
	g c e c g c e c
	g c e c g c e c
	g c e c g c e c
	\time 6/8	\break
	g [c e c] g [c]
	g [c e c] g [c]
	g [c e c] g [c]
	g [c e c] g [c]
	g [c e c] g [c]
	g [c e c] g [c]
}\repeat volta 2 {
	\time 4/4	\break
	g8 c e c g c e c
	g c e c g c e c
	g c e c g c e c
	g c e c g c e c
	g b e b g b e b 
	g b e b g b e b 
	g b e b g b e b 
	g b e b g b e b
}
	\time 6/8	\break
	g\4 b-\3 d-\2 e\2 d\2 b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
\repeat volta 2 {
%set break
	\time 4/4	\break
	g8-0 c-1 e-0 c g c e c
	g c e c g c e c
	g c e c g c e c
	g c e c g c e c
	\time 5/8	\break
	g [c e c e]
	g, [c e c e]
	g, [c e c e]
	g, [c e c e]
	g, [c e c e]
}\repeat volta 2 {
	\time 4/4	\break
	g,8 c e c g c e c
	g c e c g c e c
	g c e c g c e c
	g c e c g c e c
	g b e b g b e b 
	g b e b g b e b 
	g b e b g b e b 
	g b e b g b e b
}
	\time 6/8	\break
	g\5 b-\4 d-\3 e\1 d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
	g b d e d b
%special
	\time 4/4	\break
	g b e b g b e b 
	g b e b g b e b 
	g b e b g b e b 
	g b e b g b e b
	g\4 b\3 d\2 b g b d b
	g b d b	g b d b
	g b d b g b d b
	g b d b g b d b
	g\4 b\3 e\2 b g b e b 
	g b e b g b e b 
	g b e b g b e b 
	g b e b g b e b 
  \tupletSpan 4
	\tuplet 3/2{
	g\4 b\3 d\2 g d b g b d g d b
	g b d g d b g b d g d b
	g b d g d b g b d g d b
	g b d g d b g b d g d b
	g b d g d b g b d g d b
	g b d g d b g b d g d b
	g b d g d b g b d g d b
	g b d g d b g b d}
	g4 \breathe
	\repeat volta 2 {
	g,8-0 c-1 e-0 c g c e c
	g c e c g c e c
	g c e c g c e c
	g c e c g c e c
	\time 7/8	\break
	g [c e c] g [c e]
	g, [c e c] g [c e]
	g, [c e c] g [c e]
	g, [c e c] g [c e]
	g, [c e c] g [c e]
	g, [c e c] g [c e]
	g, [c e c] g [c e]
}

}	
}