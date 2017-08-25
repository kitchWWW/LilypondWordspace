
#(set-default-paper-size "letter" 'landscape)

\defineBarLine "[" #'("" "[" "")
\defineBarLine "]" #'("" "]" "")

thepaper = \paper {
  indent = 0
  print-all-headers = ##t
  tagline = ##f
  ragged-last = ##f

}

\header {
  title = "BALLET No. 1"
  subtitle = "For Musicians"
  composer = "Brian Ellis"
}


columns = #2
#(define getlinewidth
   (lambda (paper)
     (let* (
             (landscape (ly:output-def-lookup paper 'landscape))
             (output-scale (ly:output-def-lookup paper 'output-scale))
             (paper-width (ly:output-def-lookup paper 'paper-width))
             (paper-height (ly:output-def-lookup paper 'paper-height))
             (indent (ly:output-def-lookup paper 'indent))
             (plain-line-width (ly:output-def-lookup paper 'line-width))
             (plain-left-margin (ly:output-def-lookup paper 'left-margin))
             (w (if landscape paper-height paper-width))
             (left-margin (if (null? plain-left-margin)
                              (if (null? plain-line-width)
                                  0
                                  (/ (- w plain-line-width) 2))
                              plain-left-margin))
             (line-width (if (null? plain-line-width)
                             (- w (* (* columns 2) left-margin))
                             plain-line-width)))
       (/ line-width columns)
       )))

\paper {
  \thepaper
}
\markup 
\column {

\fill-line {
  \column {
	
	\line{Rhytmic Patterns}
	\line{No. 1}	

	\score {
    \relative c' {
		\clef percussion
        c8 c r c r c r c c8 c r c r c r c
    }
	\layout { line-width = #(getlinewidth thepaper)} }
	\line{\null}
	\line{No. 2}
	\score {
    \relative c' {
		\clef percussion
        <<{c1 c1}\\{s8 s s s s s s s s s s s s s s s}>>
    }
	\layout { line-width = #(getlinewidth thepaper)} }
	\line{\null}
	\line{No. 3 (with two melodic lines)}
	\score {
    \relative c' {
		\clef percussion
        <<{s s d d s s d d}\\{b8 b s s b b s s}>>
        <<{s s d d s s d d}\\{b8 b s s b b s s}>>
    }
	\layout { line-width = #(getlinewidth thepaper)} }
	\line{\null}
	\line{No. 4 (with two melodic lines)}
	\score {
    \relative c' {
		\clef percussion
		<<{s4 d4}\\{b4}>> r4 r
		<<{s4 d4}\\{b4}>> r4 r    
    }
	\layout { line-width = #(getlinewidth thepaper)} }


  }
  \column {
    
	\line{Melodic Lines}
	\line{\null}
	\line{Line C}
	\score {
    \relative c'' {
		\omit Staff.TimeSignature
		\omit Voice.Stem
		\override Score.BarLine.stencil = ##f
		c4  b bes a aes g a b
		\revert Score.BarLine.stencil
		\bar ":|."
		b4 a aes g
		\bar "|."

    }
	\layout { line-width = #(getlinewidth thepaper)} }
	\line{\null}
	\line{Line E}
	\score {
    \relative c'' {
		\omit Staff.TimeSignature
		\omit Voice.Stem
		\override Score.BarLine.stencil = ##f
		e e e f f e ees d
		\revert Score.BarLine.stencil
		\bar ":|."
		d c des b 
		\bar "|."

    }
	\layout { line-width = #(getlinewidth thepaper)} }

	\line{\null}
	\line{Line G}
	\score {
    \relative c'' {
		\omit Staff.TimeSignature
		\omit Voice.Stem
		\override Score.BarLine.stencil = ##f
		g g g c c c 
		\undo \omit Voice.Stem
		c8[fis,]
		\omit Voice.Stem
		g4
		\revert Score.BarLine.stencil
		\bar ":|."
		gis4 e f f
		\bar "|."

    }
	\layout { line-width = #(getlinewidth thepaper)} }




  }
}
\line{\null}
\line{\null}
\line{Movement 1, \bold Bombastic}
\fill-line { \center-column { \huge "Part 1: {No. 3 C^&E }x4 "} }
\fill-line { \center-column { \huge "Part 2: {No. 3 E&G^ }x4 "} }
\small \justified-lines {
     Fortissimo, break neck tempo. Players all observe rhythem No. 3 and are evenly split melodically with one half taking lines C and E, the others E and G. Take repeat 4 times, then abruptly stop before transition notes after repeat. The C^ line should sound above the E line in Part 1, and the E line in Part 2 should sound below the G^ line.
}

\line{\null}
\line{\null}
\line{Movement 2, \bold Lento}
\fill-line { \center-column { \huge "Part 1: {No. 1 C}x8 ->{No. 1 G^}x4  "} }
\fill-line { \center-column { \huge "Part 2: {No. 1 E}x4 {No. 2 E}x4 -> {No. 2 C}x4"} }
\small \justified-lines {
     Pianissimo, adagio pace. Players all observe No. 3, evenly split with one half taking lines C and E, the others E and G. Take repeat 4 times, then abruptly stop before transition notes after repeat.
}



\line{\null}
\line{\null}
\line{Movement 3, \bold "On Edge"}


}r