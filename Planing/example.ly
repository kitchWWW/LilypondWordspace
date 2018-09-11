#(set-global-staff-size 22)



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
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
}

\score {
	\midi {}
	\layout {}


	\new Staff \relative c'' {
	\numericTimeSignature
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
	\time 3/4
	\clef "treble"
	c4 d e 
	s2.
	c4 ^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #20 #0.3       }
    }  ~c16 d8 e16~e4
\break
	c4 ~c16 d8 e16~e4
	s2.
	c4.^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #30 #0.3       }
    } <d e>
\break
	c4. <d e>
	s2.
	c4 ^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #35 #0.3       }
    } ~c16 e8 d16~d4
\break
	c4~c16 e8 d16~d4
	s2.
	c4 ^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #25 #0.3       }
    } e d

}
}


