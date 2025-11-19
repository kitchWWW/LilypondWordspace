

\version "2.18.2"
#(set-global-staff-size 22)


%% Path drawing:
my-clef =
#(ly:make-stencil
  `(path 0.001
     (moveto   0 1 
      lineto   1 3 
      lineto   2 1 
      lineto   1 -1 
      lineto   0 1  
      closepath)
     round round #t)
   (cons -0.1 2.65)
   (cons 0 1))

\layout {
  \context {
    \Score
    \override Clef.stencil = 
      #(lambda (grob) 
         (let* ((sz (ly:grob-property grob 'font-size 0)) 
                (mlt (magstep sz))
                (glyph (ly:grob-property grob 'glyph-name))) 
                 (cond
                  ((equal? glyph "clefs.G")  
                     (ly:stencil-scale my-clef (* 1 mlt) (* 1 mlt)))
                  ((equal? glyph "clefs.G_change")  
                    (ly:stencil-scale my-clef (* .8 mlt) (* .8 mlt)))
                  (else (ly:clef::print grob)))))
  }
}





\paper{
  paper-width = 11\in
  paper-height = 8.5\in
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  ragged-last-bottom = ##t
  ragged-last = ##f
  indent = 0.0\cm
}

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Mitchell²" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "For Mixed Ensemble" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}


\score{
\header{
tagline=""
\midi {}
\layout{}
\new Voice \with {
  \remove "Forbid_line_break_engraver"
} \relative c'{

        \clef G


	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\key d \minor
 \hide Staff.TimeSignature 
 \time 5/8
 g''8 ^\markup{"lead in"} [f ees d cis]
 \bar ".|:"

   \override Score.BarNumber.break-visibility = ##(#f #f #f) 
	\time 29/8
  d,4.^\markup{"cycle"} f4. e4
    g8 [a] r8 c8 [bes8] a4 e4
    \times 2/3 {g4 e' f}
    c8 [bes e d]
    a4 g4 _(
 \bar "||" 
  \time 6/4
  s4 ^\markup{"restart signal"}
	g1)\fermata ees8 f
	\bar ":|."
  \time 6/4
  \hide Stem
  \hide g8 ( ^\markup{"ending"} s8 g1\fermata\>) r4\! \bar "|."
}
}


\markup {
  \column{
     \line \bold { Before beginning: }
        \override #'(line-width . 60)
    \wordwrap {
      Choose a loop point for yourself within the cycle. Whenever you loop the cycle, you will play to your own personal loop point, and then restart. You should not break apart the triplet notes unless the entire ensemble is very very good at counting.
    }
    " "
    " "
    \line \bold { Diamond Clef: }
        \override #'(line-width . 60)
    \wordwrap {
      Substitute in any clef you like.
    }
    " "
    \line \bold { Optional Additions:}
        \override #'(line-width . 60)
    \wordwrap {
      In addition to the primary cycle material, other sounds and noises including small noisemakers, shaky eggs, party horns, handheld radios, etc. can all be used to add texture to the performance.}
    " "
    " "
  }
  \hspace #10
  \column {
    \line \bold { To start:}
        \override #'(line-width . 50)
    \wordwrap {
      Everyone plays the lead in, and then starts looping their cycle.
    }
    " "
    " "
    \line \bold {To take a solo:}
        \override #'(line-width . 50)
    \wordwrap {
      The person who would like to solo should play the lead in. Everyone else should stop on the downbeat following the lead in, at which point the soloist can begin soloing.
    }
    " "
    " "
    \line \bold {To restart the group:}
        \override #'(line-width . 50)
    \wordwrap {
      The soloist should play through the entire cycle, playing through the long-held restart signal. The eighth notes at the end of the restart signal cue the rest of the ensemble to begin the cycle.
    }
    " "
    " "
    \line \bold {To end:}
        \override #'(line-width . 50)
    \wordwrap {
      Play through the entire cycle, then hold on the ending note until everyone else joins. End by fading out.
    }
  }

}

