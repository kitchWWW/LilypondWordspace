
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










\version "2.18.0"

\header {
	dedication = \markup{\column{\italic"for those who will only ever see 59 seconds of this on instagram" " " " " }}
	title = "But I Paid My Sunshine Tax!"
	subtitle = ""
	subsubtitle = "For Solo Egg Shaker and Live Electronics"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c'{
\numericTimeSignature
\override Score.BarNumber.break-visibility = ##(#f #f #f)
\omit Score.BarLine
\override Staff.TimeSignature #'stencil = ##f 



\clef percussion
	\tempo \markup{\column{"lazily"}}
\time 1/4
	r4
\time 4/4
	c1\<^"(swirl, continious wash of sound)" ~c1\!^\markup{\huge\sans"PED."}~c1

	~c1\> ~c1\! ^"~0:20"
\break
	b4_\markup{\italic"gradual accel."} ^\markup{\column{"(open hand)""(down)"}}
		r2. d4^"(upward)" r2.
	\time 3/4
	b4 r2^\markup{\huge\sans"PED."} d4 r2
	\time 2/4
	
	s2
	\time 4/4
	b8  ^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #15 #0.3       }
    } 
    d\tempo 4 = 130 b d^\markup{\huge\sans"PED."} b d b d
\undo \omit Score.BarLine
\undo \override Staff.TimeSignature #'stencil = ##f 
\tempo \markup{\column{"brisk"}}
\time 4/4
	b->\mf  d b^"(accented notes should trigger electronics)" d b d b d
	b d b d b d b d
	b-> d b d b d b d
	b d b d b-> d b d
	b d b d-> b d b-> d
	b-> d b d-> b d b-> d
	\times 2/3{b4-> d b}
	\times 2/3{d b d}
	b8-> d b d b d-> b d
	b-> d b d b d-> b d
	b-> d b d b-> d b d
	c2:32^"(quiver)"\< b8->\! r b d
	b d b d b d b d
	b d b d b d-> b d
	b d b d b d b d
	b d-> b d b d b d
	b-> d b-> d b d b d
	\times 2/3{b4-> d b}
	\times 2/3{d-> b d}
	b8-> d b d-> b d b-> d
	c2:32\< b8->\! r b d
	b d b d b-> d b d->
	b^\markup{\huge\sans"PED."} d c2:32\< b8->\! r
	\bar ".|:"
	c2.:32\fermata_\markup{\italic"repeat with varying lengths as desired"}
		\< b8->\! r\fermata
	\bar ":|."
\break
\override Staff.TimeSignature #'stencil = ##f 

	s1^\markup{\italic"improvize a-rhythmically with increasing intensity... (~15 seconds)"}
\omit Score.BarLine

	 s1 s s\< s 
\break
	c1:32^\markup{\column{"(vigerous shaking)" " "}}
		_\markup{\italic"gradual deaccel."}\ff\>
	\time 1/4
	b32^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #10 #0.3       }
    } d b d b d b d
	s4 s
	\time 4/4
	b8^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #10 #0.3       }
    }^\markup{\column{"(transition to closed hand)" " "}}
  d\tempo 4 = 80 b d b^\markup{\huge\sans"PED."}\mp d b d
\break	
\undo \omit Score.BarLine
	\bar ".|:"
	b_\markup{\italic"vamp as desired"} d b d b d b d
	\bar ":|."
\undo \override Staff.TimeSignature #'stencil = ##f 
\time 4/4
	b-> _\markup{\italic"gradual accel."} d b d b d b d
	b d b d b d b d
	b-> d b d b d b d
\time 9/8
	b->\< d b d-> b d b-> d d
\time 2/4
	b-> d b-> d
\time 9/8
	b->^"(open hand)"\mf d b d-> b d b-> d d
\time 2/4
	b-> d b-> d
\time 3/4
	b->^"(closed hand)" d b d-> b d
	b-> d b-> d b-> d
	b-> d b d-> b d
\time 2/4
	b-> d b-> d
\time 4/4
	b->^"(open hand)" d b d b d b d
\break
	g,4.^\markup{\column{"(throw)" "R to L"}} f'4.^"L to R" g,4
	f'4. g,4. f'4
\time 2/4
	b,8->^"(open hand)" d b-> d
\time 3/4
	b->^"(closed hand)" d b d-> b d
		\break
	b-> d b-> d b-> d
	g,4.^"R to L" f'4.^"L to R"
\time 2/4
	b,8-> d b-> d^\markup{\huge\sans"PED."}

\break
\override Staff.TimeSignature #'stencil = ##f 
\time 4/4

	s1^\markup{\italic"improvize rhythmically with constant intensity... (~20 seconds)"}
\omit Score.BarLine

	 s1 s 
\break
	s1^\markup{\italic"improvize w/ rhythms from electronics... (~15 seconds)"}
	s1 s1 s s s\< s s1^\markup{\huge\sans"PED."} s1^\markup{\italic"(~5 seconds before proceeding)"}

\break
	c1:32\fff^\markup{\column{"(vigerous shaking)" " "}}
		_\markup{\italic"gradual deaccel."}
	\time 1/4
	b32^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #10 #0.3       }
    } d\> b d b d b d
	s4 s
	\time 4/4
	b8\f^\markup {
      \concat {
        \raise #1
        \scale #'(1.2 . 0.8)
        \arrow #"long" ##f #X #RIGHT #10 #0.3       }
    }^\markup{\column{"(transition to closed hand)" " "}}
  d\tempo 4 = 80 b d b^\markup{\huge\sans"PED."} d b d
\break	
\time 2/4
	b_\markup{\italic"as if running out of steam"} d b d
	b r d r b r d r 
	b4\p
		\undo \omit Score.BarLine 
	r






	\bar "|."


}
}