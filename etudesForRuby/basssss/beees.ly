#(set-default-paper-size '(cons (* 14 in) (* 8.5 in)))
% #(set-default-paper-size '(cons (* 17 in) (* 11 in)))
% #(set-default-paper-size '(cons (* 15 in) (* 10 in)))
% #(set-default-paper-size '(cons (* 11 in) (* 8.5 in)))
% #(set-default-paper-size '(cons (* 8.5 in) (* 11 in)))


\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  title = \markup{\normal-text\huge{ "Etude for doing stuff while also playing D"}}
  subtitle = ""
  subsubtitle = \markup{\normal-text"for solo double bass"}
  composer = "Brian Ellis"
  tagline = ""
}
  \paper{
  indent = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  systems-per-page = 4
}



  \layout {
    ragged-right = ##f
    \context {
      \Staff
      % \omit TimeSignature
    }
  }


\markup{
	\column{
		"Notes:"
		"Preparation: wrap alumanum foil around the E and A strings, so that when bowed, they buzz metallically."
		"Different pitches for L.H. knocking should roughly translate to higher or lower thumps via knocking different parts of the instrument."
    "Hide re-articulation of the D Drone wherever possible."
    " "
	}
}

\score {

	\relative c {
		% \override Hairpin.minimum-length = #12
		\tempo "Very Lyrical" 4 = 60 - 70
    % \override Score.BarNumber.break-visibility = ##(#t #f #f)
    \clef bass
    \romanStringNumbers


    d1^\markup{\column{"II"}}\p\<_\markup{\column{" " \italic"warm, lush"}} ~ d4 ~ <d d'>^\markup{\column{" " "I" "II"}}~\mp <d d'> ~ d4 ~ <d d'>4. ~ d8 ~ d8 ~ <d d'>8 ~ <d d'>4 ~
    d4 ~ \times 2/3{ d8 ~ <d a>4--^\markup{\column{"II" "III"}}} ~ d4 ~ \times 2/3{ d4 ~ <d a>8--} ~
    d4 ~ d8 ~ <d d'>8\<_\markup{\column{" " \italic"lyrical, free"}} \( ~ <d d'>8 ~
    <d e'>4. ~ <d e'>8 ~ <d fis'>8\mf ~ <d fis'>4 ~ <d d'>4 ~ <d b'>4 ~ <d b'>4 \) ~ d2.\mp  ~
    <d e'>4\mf \( ~ <d fis'> ~ <d d'> ~ <d b'> ~ 
    \times 2/3 {<d b'>4 \) ~ d8\mp} ~ d4 ~ \times 2/3 { d4 ~ <d a>8-- ~ } <d a>4 ~
    d4 ~ <d a>-- ~ d4 ~ 

    \times 2/3{d8 ~ <d d>4--^\markup{\column{"II" "III"}} ~}
    d4^\markup{\column{"II"}} ~<d a>8-- ~ d8 ~ \times 2/3{d8 ~ <d d>-- ~ d ~}


    \times 2/3{d8 ~ <d a>4-- ~ } 

    <<
    {<d a>1 \tweak Parentheses.font-size 2 \parenthesize \mp ~ <d a>4 ~ 

   		d4 ~ d1  \tweak Parentheses.font-size 2 \parenthesize \mp  _~ }
    { d'8\rest
    \stemUp
    \override NoteHead.style = #'triangle
    
    \override Beam.grow-direction = #RIGHT

    s4
    a32[^\mf^"ad. lib. L.H. knocking on body" b c b c a b d b a]
    s16

    \override Beam.grow-direction = #'()

    \undo \override NoteHead.style = #'triangle
    \stemNeutral
    d4\rest
    \time 2/4
    s4
    s4
    \time 4/4
    d4\rest
    \stemUp
    \override NoteHead.style = #'triangle


    \override Beam.grow-direction = #RIGHT
    a16[^\f^"knocking" c b d] 

    \override Beam.grow-direction = #LEFT
    a [b a c]
    \override Beam.grow-direction = #'()

    
    \undo \override NoteHead.style = #'triangle

    \stemNeutral
    d4\rest
    }
  >>

% \pageBreak

  d,4 \times 2/3{ a8-> d a} \times 2/3{d-> a d ~} <d d'\harmonic>4^\markup{\column{"I" "II"}}\< ~ <d d'\harmonic>2\f\> ~ d2\mp ~ 


  d4 _(
  \clef treble
  <d e''>4\p) ^\( ~<d fis''>4. ~ <d d''>8~ <d d''>4 ~ \times 2/3{<d b''>4 ~ <d d''>8 ~} <d d''>4 \) _( 
  \clef bass
  d\p) ~<d d'\harmonic>2^\markup{\column{"I" "II"}}\<
  ~<d d'\harmonic>2\mf\> ~ 
  <<
    {<d>1\mp _~ }
    { d'8\rest 
    \stemUp
    \override NoteHead.style = #'triangle

    s4
    \override Beam.grow-direction = #RIGHT
    a32[^\mp^"knocking" d b a b c ] 
    \override Beam.grow-direction = #LEFT
    a32 [b c b a c]
    \override Beam.grow-direction = #'()
    s8

    

    \undo \override NoteHead.style = #'triangle
    \stemNeutral
    d8\rest
    }
  >>
    d,4 \times 2/3{ a8-> d a} \times 2/3{d8-> a d } \times 2/3{a8-> d4 ~ }
    d8 \breathe a4.\sf ~
    <a fis>2\mf\< ~ <a fis>2\ff d4\mp ~ <d d' \harmonic>4^\markup{\column{"I" "II"}}\< ~ <d d'\harmonic>2\mf\> ~ d2\mp ~
    <<{
    	 d1 _~
    	}{

    		d'4 \rest
    		% \xNotesOn
		    \stemUp
    		\times 2/3{ d4^"+" e^"+" fis^"+"} d8^"+" b^"+"
    		\stemNeutral
    		% \xNotesOff
    	}>>
    	\times 2/3{d,4 \breathe <d a>2\sf}
    <<{
		\stemNeutral
		<a fis>2\f\< ~
		  \override Hairpin.circled-tip = ##t
    <a e>1\ff\> s4\!
    }\\{
    	s2
    d'4\rest
    \stemUp
    \override NoteHead.style = #'triangle
    \override Hairpin.circled-tip = ##t




    \override Beam.grow-direction = #RIGHT

    a16^\mf^"knocking" c b d a b a d a c d c \tweak Parentheses.font-size 2 \parenthesize ^\mf
    
    \override Beam.grow-direction = #LEFT
    a16 [d a c d c a d a c d c]
    \override Beam.grow-direction = #'()



    \undo \override NoteHead.style = #'triangle
    }>>
    r4
		  \override Hairpin.circled-tip = ##t
    d1\harmonic^\markup{\column{"I"}}\< ~ d2\mp\>\harmonic
    r2\! \bar "|."



	}
	\layout{}
	\midi{}
}