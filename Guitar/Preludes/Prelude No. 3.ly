#(set-global-staff-size 15)



#(define-markup-command 
   (arrow layout props 
     type ;; "long"
     fletching? ;; #t or #f
     axis ;; X or Y
     direction ;; RIGHT or LEFT, UP or DOWN, 
     a-length ;; any number >= #0
     boldness) ;; #0 < any number < #1
   (string? boolean? ly:dir? ly:dir? number? number?)
  "Draw arrows with variable length & boldness."
  (define fletching #t)  
  (interpret-markup layout props
    (cond 
     
;; "long" optimal thickness #0.07
      ((and (string=? type "long")(and (eq? axis X)(eq? direction 1)))
       (if (eq? fletching fletching?)
           (markup 
             (#:override (cons (quote filled) #t)
              (#:path boldness
               `((moveto    0.0  0.0)
                 (lineto   -2.50 -0.60)
                 (curveto  -2.40 -0.40 -2.35 -0.15 -2.35 -0.05)
                 (lineto  ,(* (- a-length 2.40) -1) -0.05)
                 (rlineto  -0.30 -0.55)
                 (rlineto  -2.10  0.00)
                 (rlineto   0.30  0.60)
                 (rlineto  -0.30  0.60)
                 (rlineto   2.10  0.00)
                 (rlineto   0.30 -0.55)
                 (lineto  ,(* (- a-length 2.40) -1)  0.05)
                 (lineto   -2.35  0.05)
                 (curveto  -2.35  0.10 -2.40  0.40 -2.50  0.60)
                 (lineto    0.00  0.00)
                 (closepath)))))
            (markup 
             (#:override (cons (quote filled) #t)
              (#:path boldness
               `((moveto    0.00  0.00)
                 (lineto   -2.50 -0.60)
                 (curveto  -2.40 -0.40 -2.35 -0.15 -2.35 -0.05)
                 (lineto   ,(* a-length -1) -0.05)
                 (lineto   ,(* a-length -1)  0.05)
                 (lineto   -2.35  0.05)
                 (curveto  -2.35  0.10 -2.40  0.40 -2.50  0.60)
                 (lineto    0.00  0.00)
                 (closepath)))))))
     
      ((and (string=? type "long")(and (eq? axis X)(eq? direction -1)))
       (if (eq? fletching fletching?)
           (markup 
             (#:override (cons (quote filled) #t)
              (#:path boldness
               `((moveto    0.00  0.00)
                 (lineto    2.50 -0.60)
                 (curveto   2.40 -0.40  2.35 -0.15  2.35 -0.05)
                 (lineto  ,(- a-length 2.40) -0.05)
                 (rlineto   0.30 -0.55)
                 (rlineto   2.10  0.00)
                 (rlineto  -0.30  0.60)
                 (rlineto   0.30  0.60)
                 (rlineto  -2.10  0.00)
                 (rlineto  -0.30 -0.55)
                 (lineto  ,(- a-length 2.40)  0.05)
                 (lineto    2.35  0.05)
                 (curveto   2.35  0.10  2.40  0.40  2.50  0.60)
                 (lineto    0.00  0.00)
                 (closepath)))))
            (markup 
             (#:override (cons (quote filled) #t)
              (#:path boldness
               `((moveto    0.00  0.00)
                 (lineto    2.50 -0.60)
                 (curveto   2.40 -0.40  2.35 -0.15  2.35 -0.05)
                 (lineto   ,a-length -0.05)
                 (lineto   ,a-length  0.05)
                 (lineto    2.35  0.05)
                 (curveto   2.35  0.10  2.40  0.40  2.50  0.60)
                 (lineto    0.00  0.00)
                 (closepath)))))))
      
      ((and (string=? type "long")(and (eq? axis Y)(eq? direction 1)))
       (if (eq? fletching fletching?)
           (markup 
             (#:override (cons (quote filled) #t)
              (#:path boldness
               `((moveto    0.00 0.00)
                 (lineto   -0.60 -2.50)
                 (curveto  -0.40 -2.40 -0.15 -2.35 -0.05 -2.35)
                 (lineto   -0.05 ,(+ (* a-length -1) 2.40))
                 (rlineto  -0.55 -0.30)
                 (rlineto   0.00 -2.10)
                 (rlineto   0.60  0.30)
                 (rlineto   0.60 -0.30)
                 (rlineto   0.00  2.10)
                 (rlineto  -0.55  0.30)
                 (lineto    0.05 ,(+ (* a-length -1) 2.40))
                 (lineto    0.05 -2.35)
                 (curveto   0.10 -2.35  0.40 -2.40  0.60 -2.50)
                 (lineto    0.00  0.00)
                 (closepath)))))
            (markup 
             (#:override (cons (quote filled) #t)
              (#:path boldness
               `((moveto    0.00  0.00)
                 (lineto   -0.60 -2.50)
                 (curveto  -0.40 -2.40 -0.15 -2.35 -0.05 -2.35)
                 (lineto   -0.05 ,(* a-length -1))
                 (lineto    0.05 ,(* a-length -1))
                 (lineto    0.05 -2.35)
                 (curveto   0.10 -2.35  0.40  -2.40  0.60 -2.50)
                 (lineto    0.00  0.00)
                 (closepath)))))))
     
      ((and (string=? type "long")(and (eq? axis Y)(eq? direction -1)))
       (if (eq? fletching fletching?)
           (markup 
             (#:override (cons (quote filled) #t)
              (#:path boldness
               `((moveto    0.00  0.00)
                 (lineto   -0.60  2.50)
                 (curveto  -0.40  2.40  -0.15  2.35 -0.05 2.35)
                 (lineto   -0.05 ,(- a-length 2.40))
                 (rlineto  -0.55  0.30)
                 (rlineto   0.00  2.10)
                 (rlineto   0.60 -0.30)
                 (rlineto   0.60  0.30)
                 (rlineto   0.00 -2.10)
                 (rlineto  -0.55 -0.30)
                 (lineto    0.05 ,(- a-length 2.40))
                 (lineto    0.05  2.35)
                 (curveto   0.10  2.35  0.40  2.40  0.60 2.50)
                 (lineto    0.00  0.00)
                 (closepath)))))
            (markup 
             (#:override (cons (quote filled) #t)
              (#:path boldness
               `((moveto    0.00  0.00)
                 (lineto    -0.60 2.50)
                 (curveto  -0.40   2.40 -0.15  2.35 -0.05 2.35)
                 (lineto   -0.05 ,a-length)
                 (lineto    0.05 ,a-length)
                 (lineto    0.05  2.35)
                 (curveto    0.10  2.35  0.40  2.40  0.60 2.50)
                 (lineto    0.00  0.00)
                 (closepath)))))))          
      (else (ly:error "Arrows' parameter(s) do not fit")))))





\header {
	title = "Prelude"
	subsubtitle = "Melody for a New York Appartment"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}

\score {
	\midi {}
	\layout {}


	\new Staff \relative c'' {
	\numericTimeSignature
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
	\key a \major
	\time 12/8
	\clef "treble_8"
	\tempo "With Purpose"
	a8 cis e, a cis e, a cis e, a cis e, 
	a cis e, a cis e, a cis e, a cis e, 
	a cis e, a cis e, a cis e, a cis e, 
	a cis e, a cis e, a cis e, a cis e,
\break
	<<{a8 cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	 }\\{d,1. ~ d}>>
	<<{a''8 cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	 }\\{d,1. ~ d}>>
	<<{a''8 cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	 }\\{r4}>>
	
	<<{a8 cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	 }\\{d,1. ~ d}>>
	<<{a''8 cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	 }\\{d,1. ~ d}>>
	<<{a''8 cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	 }\\{r4}>>

\break
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1 1 1 1)
	a8 [cis e,] a cis e, 
		\override Score.BarLine.stencil = ##f
		a cis e, a cis e, 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 

	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #55 #0.3       }
    } 
	cis' e, a cis e, a cis e, a cis [e, a]
	\revert Score.BarLine.stencil
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(3 3 3 3)
\break

	<<{cis8 e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e, a
	 }\\{d,,1. ~ d ~ d d}>>
	<<{cis''8  e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e, a
	 }\\{r4}>>
\pageBreak
	<<{cis8 e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e, a
	 }\\{d,,1. ~ d ~ d d}>>
	<<{cis''8  e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e, a
	 }\\{r4}>>
	
	
\break
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1 1 1 1)
	cis8 [e, a] cis e, 
		\override Score.BarLine.stencil = ##f
		a cis e, a cis e, a
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 

	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #55 #0.3       }
    } 
	a8 cis e, a cis e, a cis e, a [cis e,]
\break
	a8 [cis e,] a cis e, a cis e, a cis e, 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 

	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #55 #0.3       }
    } 
	e a cis e, a cis e, a cis e,[ a cis]
	\revert Score.BarLine.stencil
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(3 3 3 3)
\break
	
	<<{e,8 a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e, a cis
	 }\\{d,,,1. ~ d}>>
	<<{e''8 a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e, a cis
	 }\\{d,,1. ~ d}>>
	<<{e'8 a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e, a cis
	 }\\{r4}>>
	<<{e,8 a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e, a cis
	 }\\{d,,,1. ~ d}>>
	<<{e''8 a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e, a cis
	 }\\{d,,1. ~ d}>>
	<<{e'8 a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e,
	a cis e, a cis e, a cis e, a cis e, a cis
	 }\\{r4}>>

\break
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1 1 1 1)
	e,8 [a cis] e, a cis 
		\override Score.BarLine.stencil = ##f	
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 

	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #25 #0.3       }
    } 
	a cis e, a [cis e,] a cis e, s s s
	s8 s s s s s s s s s s s 
	s8 s s s s s s s s s s s 
	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #25 #0.3       }
    } 
	e8 a cis e, [a cis] e, [a cis]
	\revert Score.BarLine.stencil
	\bar "|."

}
}


