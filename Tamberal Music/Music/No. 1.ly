

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














\version "2.18.2"
#(set-global-staff-size 20)

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
  ragged-last-bottom = ##t
  indent = 0.0\cm
}

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Music No. 1" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "For any instrument with three ways of playing one note" }
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
tagline = ""
piece =\markup{\column{"soul song." "   "}}

}

\book{

\score{
\midi {}
\layout{}
\new Staff <<
\new Voice {
}
\new Voice \with {
  \remove "Forbid_line_break_engraver"
} \absolute {

\overrideProperty NonMusicalPaperColumn.line-break-system-details
  #'((X-offset . 90))

	\override Staff.StaffSymbol.line-count = #3
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\clef "percussion"
	\set Staff.middleCPosition = #5

	\time 8/4
	g\mp^\markup{\italic{"pont."}} e g e g e g e
	g\< e g e g e g e
	g e g e g e g e
	g\mf\> e g e g e g e
\break
	g\< c g c g c g c
	g\> c g c g c g c
	g\< c g c g c g c
	g\> c g c g c g c
\break
	g\mp^\markup{\italic{"natural"}} e g e g e g e
	g\< e g e g e g e
	g e g e g e g e
	g\mf\> e g e g e g e
\break
	g\< c g c g c g c
	g\> c g c g c g c
	g\< c g c g c g c
	g\> c g c g c g c\!
\break
	g\mp^\markup{\italic{"pont."}} e g e g e g e
	g\< e g e g e g e
	g e g e g\f\> e g e
	g e g e g e g e
\break
	g\< c g c g c g c
	g c g c g c g c
	g\!\< c g c g c g c
	g c g c g c g c\!
\break
	g\mp^\markup{\italic{"tasto"}} e g e g e g e
	g\< e g e g e g e
	g\ff e g e g e g e
	g e g e g\> e g e\mf
\break
	g\f\> c g c g c g c
	g c g c g c g c
	g\> c g c g c g c
	g c g c g( e g c)
\bar "||"
\break
\pageBreak   

	g\p^\markup{\italic{"gradually nat."}} e
	\override Score.BarLine.stencil = ##f

	g e g e
	s2 s2 s2 s2 g4.
	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #6 #0.3       }
    } 
	
	 e8 g4. e8 g4. e8

	s2 s2 g4..
	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #6 #0.3       }
    } 

	 e16 g4.. e16 g4.. e16
	
	s2 s2<g e>2
	^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #6 #0.3       }
    }
	<g e>2^\markup{\italic{"brash"}} <g e>2
	\revert Score.BarLine.stencil
\break
	<g e>\mf (<g e> <g e>) <g e>\< ( 
	<g e> <g e>\!) <g e>( <g e> 
	<g e>) <g e>(\> <g e> <g e>\!)
	<g e> <g e> <g e> <g e> 
\break
	<g c>\pp <g c> <g c> <g c> 
	<g c> <g c> <g c>\sfp <g c> 
	<g c> <g c> <g c> <g c> 
	<g c>\sfp <g c> <g c> <g c> 
\break
	<g e>\f (<g e> <g e>) <g e>\ff ( 
	<g e> <g e>) <g e>\f ( <g e> 
	<g e>) <g e>(\ff <g e> <g e>\!)
	<g e>\mf <g e> <g e> <g e> 

	}%relative
>>
}%score

}%book



