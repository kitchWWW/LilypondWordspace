

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  title = \markup{\normal-text"Board but no Batten"}
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
		" "
		" "
	}
}

\score{
	    \new Staff \with { instrumentName = "Key" } \relative c {
	    \time 14/4
	          \omit Score.TimeSignature
	    	\clef percussion
	    	e^\markup{\column{"floor" "tom"}}
	    	s4
	    	\xNotesOn
	    	g^\markup{\column{"brake" "drum" "surface"}}
	    	s4
	    	a^\markup{\column{"brake" "drum" "rim"}}
	    	s4
	    	% \xNotesOff
	    	% c^\markup{\column{"low" "bongo"}}
	    	% s4
	    	% e^\markup{\column{"high" "bongo"}}
	    	% s4
	    	% \xNotesOn
	    	f'^\markup{\column{"low" "wood" "slat"}}
	    	s4
	    	a^\markup{\column{"high" "wood" "slat"}}
	    	s4
	    }

}


\markup{
	\column{
		"Prepare the Vibes:"
		"Place aluminum foil on uppermost 5th of vibraphone (resting on keys b5 - f6)"
		" "
		" "
	}
}

\score {

	\relative c' {
		\time 8/4
		\clef treble
			          \omit Score.TimeSignature

		  \hide Stem
		  \tweak Parentheses.font-size 4
		  \parenthesize<b'' c d e f> ^\markup{\column{"vibraphone" "metalic sound," "triangle beaters"  " "}}
		  s4
		  \undo \hide Stem
		  \override NoteHead.transparent = ##t
      e32\p\sustainOn [ f d c b e f d c f^\markup{\italic\column{"aliatoric pitches from set" "as fast as possible"}} d e b c d b e f d c f d e b c c f d e^\markup{\huge"   ..........."}
      s32 s s s s s s s
      b32 c d b e f d c f d e]
      \mark \markup{\normalsize\column{"~15 secconds" " "}} 
			\time 1/4
      r4 \fermata
\break
		  \clef percussion
      \undo \override NoteHead.transparent = ##t
      \xNotesOn
      \tempo 4 = 120
      \time 7/4
      g,,,16\sustainOff\f^\markup{\column{" " "brake drum" "triangle beaters"}} g a a g g a a g g a a g g a a^\markup{\huge"    .............."} s s s s g g a a g g a a
      \mark \markup{\normalsize\column{"~15 secconds" " "}} 
			
			\time 1/4
      r4 \fermata
\pageBreak
			\clef treble
    	\time 16/4
			
			\xNotesOff
      \tempo 4 = 55
      \sustainOn
      <g c d g>2\mp^\markup{\column{"vibraphone" "soft yarn mallets"}}
      <g c d a'>2
      <g c e a>2
      <g c e g>2
      <g d' e g>2
      <g c e g>2
      <g b e g>2
      <g c d g>2
 			\time 1/4
      r4\sustainOff \fermata
\break
		\clef percussion
		\tempo 4 = 80

		\time 16/4
<<{
	e4\mf^\markup{\column{"floor tom" "soft beater"}}_\markup{\column{"+" "(muted)"}}  e_"+" e_\markup{\italic"simpre"} e e^\markup{\tiny\italic\column{"with other hand, personify" "tiny critter living in wall," "scratching + pattering" "on surface of drum head"}} e
		e e e4 s s s  e e e e

		}\\ \makeClusters{
			s1 s4 c'8 f d g g, <f b> <g g'> <d, d''> <e c''> <c d''><c e''>4 <d g''>8 <c e''> <g'' b> <f c'> <a d> b e c f
		}>>

		\mark \markup{\normalsize\column{"~15 secconds" " "}} 
		  
 			\time 1/4
      r4 \fermata
\break
	\bar ".|:"
		\time 26/8
		<<{
		\xNotesOn
			r16^\markup{\column{"wood slats" "triangle beaters" \italic"very light and fast"}} f8 [f f f f s s f f
			a8^\< a a a a a\f\> a a a a f\p f f f f f]
			}\\{
		\xNotesOn
				f8\p [f f f f s^\markup{\huge"   ......."} s f f
				f f f f f 
				f\parenthesize\p f f f f f f f f f f f
				]
		}>>
		\bar ":|."

		\mark \markup{\normalsize\column{"~15 secconds" " "}} 
		  
 			\time 1/4
      r4 \fermata
\break


	\clef treble
	\time 8/4
	\sustainOn
	
	 g'1\mf:32^\markup{\column{"vibraphone" "soft yarn mallets"}} ~ g1:
	

	\time 1/4 \mark \markup{\normalsize\column{"~15 secconds" " "}} 
	
      r4 \fermata
\break


% \bar "|."
	}
	\layout{}
	\midi{}
}