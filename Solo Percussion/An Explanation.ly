
\version "2.18.2"
	
#(set-global-staff-size 19)

\header {
title ="An Explanation"
subtitle = "Solo Percussion "
poet = "For two bowls of rice and suspended cymbal"
composer = "Brian Ellis"
meter = " "
tagline =""
dedication = \markup{\italic"For Andrew"}

}


\paper{
  left-margin = 2.5\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-page-number = ##f
	#(set-paper-size "letter" 'landscape)
  system-separator-markup = \slashSeparator
  ragged-last = ##f

}

\score{

\new StaffGroup <<

\new Staff {

\relative c' {

   
  \override Score.BarNumber.break-visibility = ##(#f #f #f)


	\clef percussion
	\time 6/8
	\stopStaff
\override Staff.StaffSymbol.line-count = #1
\startStaff
	\bar ".|:"

	<<{
	\xNote c4.\mp
	^\markup{
	\center-column{
	\tiny\italic"small handful"
	\tiny\italic"thrown at"
	\tiny\italic"wall of bowl"
	}
	}
	 \override Glissando.style = #'zigzag
	\hideNotes

 	c16\glissando
	s8.^\markup{ \tiny\italic\column{"poured" "back"}}
 	c8
 	\unHideNotes
	}\\{
	\tiny
	s4.
	 \parenthesize a4.}\\{
	s2. \bar ":|." \mark \markup{ "x7"}
	}>>

	<<{
	\xNotesOn
	c4.^\markup{\tiny\italic"(throw)"} c8 c4 
	\xNotesOff
	
	}\\{}>>

		<<{
	\xNote c4. 
	 \override Glissando.style = #'zigzag
	\hideNotes
 	c8\glissando\<
	s4^\markup{\tiny\italic"slow pouring"}
	s2\>
	s4
	c8\!
 	\unHideNotes
	}\\{
	\tiny
	s4. \parenthesize a4. ~ \parenthesize a2.}>>

	r2 \fermata s8^\markup{\italic"~0:30"}
\break
	
	<<{
	\bar".|:"
	\xNote c4.
	\override Glissando.style = #'zigzag
	\hideNotes
 	c8\glissando
	s8
 	c8
 	\unHideNotes
	}\\{
	\tiny
	s4. \parenthesize a4.}\\{
	s2. \bar ":|.|:" \mark \markup{ "x3"}
	}>>
	
	<<{
	\xNote c4._\markup{\tiny\italic"accel..."}	 
	\harmonicsOn
	c8^\markup{\tiny\italic\column{"spin rice" "in bowl"}} c c
	\harmonicsOff
	}\\{
	s2. \bar ":|." \mark \markup{ "x4"}
	}>>
	<<{
	\override Staff.NoteHead.style = #'triangle
	c4.\mf^\markup{\tiny\italic\column{"upward toss" "(pancake flip)"}}
	c8 c4}\\{}>>
	\override Staff.NoteHead.style = #'default
	c4.->^\markup{\tiny\italic"set down"}_\markup{ \tiny\italic"a tempo"}

	\xNotesOn
	c8\p\>
	 c^\markup{\tiny\italic"pinches thrown"} c
	\bar ".|:"
	c c c c c c
	\bar ":|." \mark \markup{\small\column{"While rice""remains"}}

	\xNotesOff

	s8\!r2 \fermata s8^\markup{\italic"~1:15"}
\break
	
	\bar ".|:"
	<<{\xNote c4.\mf^\markup{\tiny\italic"(throw) (spin)"}
		 _\markup{\tiny\italic"accel..."}
	 c4.\harmonic }\\{s8 s s s s s}>>
	\bar ":|."  \mark \markup{x10}

	\harmonicsOn
	 \override Glissando.style = #'zigzag
	c4. c8 c4\glissando 
	s2.\>
	\hideNotes
	c2.\!
	\unHideNotes
	\xNotesOn
	c4. c8 c4
	s2.
	
	<<{
	\override Staff.NoteHead.style = #'triangle
	c4.^\markup{\tiny\italic"(toss)"}
	c8 c4}\\{}>>
	\override Staff.NoteHead.style = #'default

	<<{
	 \override Glissando.style = #'zigzag
	\hideNotes
	c16\glissando ^\markup{\tiny\italic"fast pour"}
	s c4 }\\{
	\tiny
	\parenthesize a8 
	\normalsize
	c4\rest c4.\rest
	}>>

	s8 r2\fermata s8 ^\markup{\italic"~1:50"}
\break	
	s2.
	s4. \breathe s4.
	s2. 
	s

	<<{
	 \override Glissando.style = #'zigzag
	\hideNotes
 	c2.\glissando\<
	s2^\markup{\tiny\italic"(pour)"}\>
 	\unHideNotes
	c4\!^\markup{\tiny\italic"(set down)"}
	}\\{
	\tiny
	\parenthesize a2. ~ \parenthesize a2
	}>>

	\xNotesOff
	\harmonicsOff
	s2.
	<<{ 
		\override Glissando.breakable = ##t
		\override Glissando.after-line-breaking = ##t
		\override Glissando.style = #'zigzag
	c2.\<\glissando^\markup{\tiny\italic"shivering"}
	s2.\f s2. s s4.\>
	\hideNotes
	c4.\!}\\{s2. s4 s8^\fermata s4. ^\markup{\italic"~3:00"}
	}>>
	\xNotesOn
	\bar ".|:" c8
	^\markup{\tiny\italic"rubato"}
	 c c c c c \bar ":|." \mark \markup{x3}
	s2.
	\bar ".|:" c8 c c c c c \bar ":|." \mark \markup{x4}
	s2.
	\bar ".|:" c8 ^\markup{\tiny\italic"rit..."}
	 c c c c c \bar ":|." \mark
		\markup{\small\column{"While rice" "remains"}}
	s8 r2\fermata s8^\markup{\italic"~4:15"}

}
}

\new Staff{
\relative c'{
	\stopStaff
	\override Staff.Clef.stencil = ##f
	\override Staff.TimeSignature.stencil = ##f
	\clef percussion
	\override Staff.StaffSymbol.line-count = #1
	s2. s s s s s s s s s s s s
	\startStaff
	\override Staff.Clef.stencil = ##t
	\override Glissando.style = #'zigzag
	c2.^\markup{\tiny\italic"brush"}
	\p\<\glissando ~c2.\mf \glissando \hideNotes c8 
	\unHideNotes
	r2^\markup{\tiny\italic"mute"} s8
	c4.\glissando
	c8 c8 r
	s8 r2 s8
	
	<<{
	 \override Glissando.style = #'zigzag
	c8\glissando
	\hideNotes
	c4 }\\{
	s8 c4\rest c4.\rest
	}>>
	
	
	s8 r2\fermata s8

\break
	%cymal noise
	\bar".|:"
	b4.^\markup{\tiny\italic"scrape"}\p\bendAfter #+4
	b4.\bendAfter #+4
	\bar":|."\mark \markup{x2}
	s4. \breathe s4.
	\bar".|:"
	b4.\<\bendAfter #+4
	r4._\markup{\tiny\italic"rit..."}
	\bar":|.|:"\mark \markup{x3}
	c2.^\markup{\tiny\italic"a tempo"}\f\glissando
	\hideNotes
	c2.^\markup{\tiny\italic"let ring"}
	s2.
	\bar ":|." \mark \markup{x2}
	\unHideNotes
	c2.\glissando
	\hideNotes
	c2.
	s2.	
\break
	\bar ".|:"
	s
	\unHideNotes
	b2.\f\bendAfter #+4
	\bar ":|." \mark \markup{x3}
	r4. b4.\mf\bendAfter #+4
	
	s2.
	b2.\mp\bendAfter #+4
	s
	b4.\pp\bendAfter #+4
	r4.
	s2.
	s8 r2\fermata s8
	\bar "|."
}
}


>>

\midi{}
\layout {
  \context { 
    % add the RemoveEmptyStaffContext that erases rest-only staves
    \Staff \RemoveEmptyStaves 
  }
  \context {
    \Score
    % Remove all-rest staves also in the first system
    \override VerticalAxisGroup.remove-first = ##t
    % If only one non-empty staff in a system exists, still print the starting bar
    \override SystemStartBar.collapse-height = #1
  }
}

}