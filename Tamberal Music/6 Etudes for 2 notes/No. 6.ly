\version "2.18.2"


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




#(set-global-staff-size 24)

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
  ragged-last-bottom = ##f
  indent = 0.0\cm
}

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Etude No. 6" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "For insturments with two ways to play one note" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}


\score{
\midi {}
\layout{}
\new Voice \with {
  \remove "Forbid_line_break_engraver"
} \relative c'{
	 \override Staff.StaffSymbol.line-count = #2
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\clef percussion
	\time 9/8
	<b d>8 b b d b b d b b
	<b d>8 b b d b b d b b \noBreak
	<b d>8 b b d b b d b b
	<b d>8 b b d b b d b b
\break
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1 )
	d [b b] d b b d b b
		\override Score.BarLine.stencil = ##f
	s s s s s s s s s
	s s s s s s s s s b
	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #18 #0.3       }
    } 
	d b b d b b [d b]
	\revert Score.BarLine.stencil
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(3 3 3 3)
\break
	<b d>8 d b b d b b d b
	<b d>8 d b b d b b d b
	<b d>8 d b b d b b d b
	<b d>8 d b b d b b d b

\break
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1 )
	b [d b] b d b b d b
		\override Score.BarLine.stencil = ##f
	s s s s s s s s s
	s s s s s s s s s b
	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #18 #0.3       }
    } 
	d b b d b [b] d [b]
	\revert Score.BarLine.stencil
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(3 3 3 3)
\break
	<b d>8 [d] b [b] d [b] b [d] b
	[b] d [b] b [d] b [b] d [b]
	<b d>8 [d] b [b] d [b] b [d] b
	[b] d [b] b [d] b [b] d [b]

\break
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1 )
	b [d] b [b] d b b d b
		\override Score.BarLine.stencil = ##f
	s s s s s s s s s
	s s s s s s s s s b
	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #18 #0.3       }
    } 
	b d b b d b [b d]
	\revert Score.BarLine.stencil
	\set Timing.beamExceptions = #'()
	\set Timing.beatStructure = #'(3 3 3 3)
\break
	<b d>8 b d b b d b b d
	<b d>8 b d b b d b b d
	<b d>8 b d b b d b b d
	<b d>8 b d b b d b b d
	
	<b d>2.
	\bar "|."	
	
	
}
}