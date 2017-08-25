\version "2.18.0"

\header {
	title = \markup{\smallCaps {"Stright Dance Song"}}
	subtitle = "Solo Guitar"
	subsubtitle = \markup {\bold{\italic "Native American Drum Songs"}}
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 2.5\cm
  right-margin = 2.5\cm
  top-margin = 3\cm
  bottom-margin = 3\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {
    	\context {\Staff \numericTimeSignature}
	}

	\new Staff \with {
	midiInstrument = "Acoustic Guitar (nylon)"
	}
	\relative c{
	%\omit Score.BarLine
	%\omit Score.TimeSignature
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\clef "treble_8"
	\tempo 4 = 130
	\key d \major
%lead
<<{
	s1 s2 s4 s8 a''8 a4 a8 fis4 e d fis b a b a8 a8 
	<a d, a>8
}\\{
	\time 8/4
	d,,4-. d-. d-. d-. d-. d-. d-. d-. 
	\time 9/4
	d d d d d g g g g
	\time 1/4
	d
}>>
%Pushup
\repeat volta 2 {
<<{	
	<a'' d, a>4 <a d, a>8 <fis d a>4 <e d a>
		<d a fis> <fis d a> <b b, g>8 <a b, g>4.
		<b b, g>8 <a b, g>4. 
		<<{ <a d, a>2. }\\{ s4 <fis, a,>4 <fis a,>4}>>
	<a' d, a>8 <a d, a>4 
		 <a d, a>8 <fis d a>4 <e d a>
		<d b fis> <e d b>\f <fis d b> <d b fis> <fis d b>8
		<e b g>4 <e b g>4.
		<<{ <d b>2. }\\{ g,4 g g}>>
	<a' d, a>8 <a d, a>4 
		<a d, a>8 <fis d a>4 <e d a>
		<d b fis> <e b fis> <fis d b> <d b fis> <fis d b>8
		<e b g>4 <e b g>4.<d a fis>4
		<<{ <d a>2. }\\{ <fis, a,>4 <fis a,> <fis a,> <fis a,>8}>>
	<<{<a' d, a>4 <d fis, d> <fis d a>}\\{}\\
		{s4 s4 s8 <a d, a>8~-><a d, a>}>>
	<fis b, g>4 <<{a8~a2.}\\{}\\{ <d, a>4 <b, g> <b g> <b g>8 ~<b g>}>>
	<a'' b,, g>4 <fis b,, g> <a b,, g>8 <fis b,, g>4
		<e a, fis>8 <d fis, d>4. <d fis, d>8 
	<<{d4. ~d2 }\\{}\\{ <fis, d>4 <fis d>4 <fis d>4 <fis d>8}>>
	<d' fis, d>8 <d fis, d>4 <b fis d> <a d, d,> 
	<fis d d,> <a d, d,> <b fis d> <a d, d,> <b fis d>8 <a d, d,>4 
	<a d, d,>8  <<{a8 ~a2.}\\{ <d, d,>4 <d d, a>4 <d d, a>4 <d d, a>8}>> 
	
	}\\{%the big kahona between top and bottom

	\time 9/4
	d,,4 d d d d g g g g 
	\time 4/4
	d d d d
	\time 10/4
	d d d b' b b b b b b
	\time 4/4
	g g g d
	\time 11/4
	d d d b' b b b b b b d,
	\time 4/4
	d d d d
	\time 3/4
	<<{<d a' d>\arpeggio <d a' d>\arpeggio <d a' d>\arpeggio
		}\\{s8 <a' d>\arpeggio s <a d>\arpeggio}>>
	\time 5/4
	d4 d d d d
	\time 6/4
	d, d d d d d
	\time 4/4
	d4 d d d
	\time 9/4
	d4 d d d d d d d d
	\time 4/4
	d4 d d d
	}>>
}
\set Score.repeatCommands = #'((volta "1"))
% the short lead
<<{
	<a''' e cis>8 <a e cis>4 <fis cis a> <e cis a> <d a> <e cis a>
	<g d a>8 <fis d a>4. <g d a>8 <fis d a>4. <e a,>8 ~ <e a,>
	<<{d8 ~d2.}\\{}\\{ <d, a>4 <d a>4 <d a>4 a''8}>>
	a4 a8 fis4 e d fis8 a8 <a d, a>8
	
}\\{
	\time 10/4
	a,,4 a a a \set Score.repeatCommands = #'((volta #f)) a a a a a a
	\time 4/4
	d, d d d
	\time 6/4
	d d d d d d
}>>

\set Score.repeatCommands = #'((volta "2-4") end-repeat)
%with no lead
<<{
	<a''' e cis>8 <a e cis>4 <fis cis a> <e cis a> <d a> <e cis a>
	<g d a>8 <fis d a>4. <g d a>8 <fis d a>4. <e a,>8 ~ <e a,>
	<<{d8 ~d2.}\\{}\\{ <d, a>4 <d a>4 <d a>4 <a'' d, a>8}>>
	
}\\{
	\time 10/4
	a,,4 a a a \set Score.repeatCommands = #'((volta #f)) a a a a a a
	\time 4/4
	d, d d d
}>>

\set Score.repeatCommands = #'((volta "5") end-repeat)
%the tial
<<{
	<a''' e cis>8 <a e cis>4 <fis cis a> <e cis a> <d a> <e cis a>
	<g d a>8 <fis d a>4. <g d a>8 <fis d a>4. <e a,>8 ~ <e a,>
	<<{d8 ~d2.}\\{}\\{
		<d, a>4\arpeggio
		<d a>4\arpeggio
		<d a>4\arpeggio
		<d a>4\arpeggio
		<d a>4\arpeggio
		<a'' d, a>8~ <a d, a>
		}>>
	
	<fis b, g>4 <a d, a>8~<a d, a>2.

}\\{
	\time 10/4
	a,,4 a a a \set Score.repeatCommands = #'((volta #f)) a a 
	a <a d a' d fis>\arpeggio a <a d a' d fis>\arpeggio
	\time 6/4
	d, <d a' d a' d fis>\arpeggio <d a' d a' d fis> \arpeggio
	<d a' d a' d fis>\arpeggio <d a' d a' d fis>\arpeggio
	<d a' d a' d fis>\arpeggio
	\time 5/4
}>>
	\time 6/4
	<a''' d, a>4 <fis d a> <a d, a>8 <fis d a>4
		<e b g>4 <d a fis>8 ~<d a fis>2
	\time 12/4
	<d a fis>8 <d a fis>4 <b g d> <a e a,> 
	<fis a,> <a e a,> <b g d> <a e a,> <b g d>8 <a e a,>4 
	<a e a,>4 <b g d>4 <<{<d a d,>1}\\{r4 d,,2.}>>


\bar "|."
\pageBreak
s1

}	
}