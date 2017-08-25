
\version "2.18.2"
	
%#(set-global-staff-size 22)

\header {
tagline =""
}


\paper{
  left-margin = 2.5\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-page-number = ##f
	#(set-paper-size "letter" 'landscape)
  system-separator-markup = \slashSeparator
}

\score{

\new StaffGroup <<

\new Staff {

\relative c' {

   
  \override Score.BarNumber.break-visibility = ##(#f #f #f)

	\clef percussion

	\time 6/4
	\stopStaff
\override Staff.StaffSymbol.line-count = #1
\startStaff
\omit Staff.TimeSignature
	\partial 1{
	c16 [c^"... (fast passes)" c c c c c c c c c c c c c c]}
	r4 \xNote c^"crunch"\xNote c\xNote c\xNote c\xNote c
	<<{c1.^"blow" }\\{s2\< s4 s s s\!}>>
	
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