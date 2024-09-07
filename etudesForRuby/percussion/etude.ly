

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  title = \markup{\normal-text\huge"Board but no Batten"}
  subtitle = \markup{\normalsize\normal-text\italic{\center-column{" " "So all board and batten means is this..." "the batten (smaller piece) just covers the seam of the board (wider piece)" \normal-text\tiny"- u/Infamous_Camel_275 " " "}}}
  subsubtitle = "for solo percussionist"
  composer = "Brian Ellis"
  tagline = ""
}
  \paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  ragged-last = ##f
  print-page-number=##f
}



  \layout {
    ragged-right = ##f
    \context {
        \Score
        \omit BarNumber
    }
  }

\markup{
	\column{
		\line{
			\column{
				" "
				"Equipment List:"
				" "
				"Vibraphone"
				"Floor Tom"
				"Break Drum"
				"Low Wood Slat"
				"High Wood Slat"
				" "
			}
			"    "
			\column{
				" "
				" "
				" "
				"Triangle beaters"
				"Soft yarn mallets"
				"Soft beater"
				" "
				"Aluminum foil"
			}
		}
		" "
		\italic"Prepare the Vibes:"
		"Place aluminum foil on uppermost 5th of vibraphone (resting on keys b5 - f6)"
		" "
		" "
	}

}

\score{
	    \new Staff \with { instrumentName = "Key" } \relative c {
	    \time 75/4
	     \omit Score.TimeSignature
	    	\clef percussion
	    	e^\markup{\column{"floor" "tom"}}
	    	s s
	    	\xNotesOn
	    	g^\markup{\column{"brake" "drum" "surface"}}
	    	s s 
	    	a^\markup{\column{"brake" "drum" "rim"}}
	    	s s
	    	% \xNotesOff
	    	% c^\markup{\column{"low" "bongo"}}
	    	% s4
	    	% e^\markup{\column{"high" "bongo"}}
	    	% s4
	    	% \xNotesOn
	    	f'^\markup{\column{"low" "wood" "slat"}}
	    	s s 
	    	a^\markup{\column{"high" "wood" "slat"}}
	    	s s
	    }
}


\score {
\header{
	piece = \markup{\normal-text\huge\column{"Board but no Batten" " " " "}}
	composer = "Brian Ellis"
}
	\relative c' {
		\time 8/4
		\clef treble
			\omit Score.TimeSignature
		  \hide Stem
		  \tweak Parentheses.font-size 4
		  \parenthesize<b'' c d e f> ^\markup{\column{"vibraphone" "triangle beaters"  " "}}
		  s4
		  \undo \hide Stem
		  \override NoteHead.transparent = ##t
      e32\p\sustainOn [ f d c b e f d c f^\markup{\italic\column{"aleatoric pitches from set" "as fast as possible" "with buzzing from foil"}} d e b c d b e f d c f d e b c c f d e^\markup{\huge"   ..........."}
      s32 s s s s s s s
      b32 c d b e f d c f d e]
      \mark \markup{\normalsize\column{"~75 secconds" " "}} 
			\time 1/4
      r4 \fermata

\break
		  \clef percussion
      \undo \override NoteHead.transparent = ##t
      \xNotesOn
      \tempo 4 = 120
      \time 7/4
      g,,,16\sustainOff\f^\markup{\column{" " "brake drum" "triangle beaters"}} g a a g g a a g g a a g g a a^\markup{\huge"    .............."} s s s s g g a a g g a a
      \mark \markup{\normalsize\column{"~55 secconds" " "}} 
			
			\time 1/4
      r4 \fermata
\break
			\clef treble
    	\time 18/4
			
			\xNotesOff
      \tempo 4 = 55
      <g c d g>2\sustainOn\mp^\markup{\column{"vibraphone" "soft yarn mallets"}}
      <g c d a'>2
      <g c e a>2
      <g c e g>2
      <g d' e g>2
      <g c e g>2^\markup{\huge"     .............."}^\markup{\normalsize\column{"continue in C major," "changing only one note at a time" " "}}
      s2
      <g b e g>2
      <g c d g>2
 			\time 1/4		\mark \markup{\normalsize\column{"~75 secconds" " "}} 

      r4\sustainOff \fermata
\break
		\clef percussion
		\tempo 4 = 80

		\time 16/4
<<{
	e4\mf^\markup{\column{"floor tom" "soft beater"}}_\markup{\column{"+" "(muted)"}}  e_"+" e_\markup{\italic"simpre"} e e^\markup{\tiny\column{"with other hand, personify" "tiny critter living in wall," "scratching + pattering" "on surface of drum head"}} e
		e e e4 s s s  e e e e

		}\\ \makeClusters{
			s1 s4 c'8 f d g g, <f b> <g g'> <d, d''> <e c''> <c d''><c e''>4 <d g''>8 <c e''> <g'' b> <f c'> <a d> b e c f
		}>>

		\mark \markup{\normalsize\column{"~35 secconds" " "}} 
		  
 			\time 1/4
      r4 \fermata
\break
	\time 3/4
		<<{
					\xNotesOn

			r16\p^\markup{\column{"wood slats" "triangle beaters" \italic"very light and fast"}} a8 a a16
			}\\{
						\xNotesOn

				a8 a a
				}>>
		\time 17/8
	\bar ".|:"
		<<{
		\xNotesOn
			r16 f8 [ f f s s f f
			a8^\< a a a a a\f\> a a a a f\p f f f ]
			}\\{
		\xNotesOn
				f8 [ f f s^\markup{\huge" ....."} s f f
				f f f f f 
				f\parenthesize\p f f f f f f f f f 
				]
		}>>
		\bar ":|."

		\mark \markup{\normalsize\column{"~75 secconds" " "}} 
		  
 			\time 1/4
      r4 \fermata
\break


	\clef treble
	
	\time 4/4
	 g'1\mf:32 ~	\sustainOn^\markup{\column{"vibraphone" "soft yarn mallets"}} 
	 	\time 17/4
	 	\bar ".|:"
	g1: ~ g1:\< ~ g4\ff g1:\pp\< ~ g1:\mf 
			\bar ":|."


	\time 1/4 \mark \markup{\normalsize\column{"~60 secconds" " "}} 
	
      r4 \fermata
\break


\break
		\time 29/8
		\clef percussion
		\xNotesOn
		f,16\sf ^\markup{\column{"wood slats" "triangle beaters" }}_\markup{\column{\italic"like two woodpeckers competing" \italic"on your siding at 5am" " "}} [f f f\> f f f f\!]
		r4
		a16\sf [a a a\> a a a\mp\< a a a a\ff] r4
		f16\mf\< [ f f f f f f f\ff] r4
		a16\fff [a a a a a a a a a a ^"       ....... etc."]
		
		s s s s s s s s	
		

		\mark \markup{\normalsize\column{"~75 secconds" " "}} 
		  \noBreak
 			\time 1/4
      r4 \fermata
      \bar "|."





% \bar "|."
	}
	\layout{}
	\midi{}
}