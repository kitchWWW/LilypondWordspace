\version "2.18.0"
#(set-global-staff-size 18)
%\setlength{\topmargin}{-2in}

\header {
      % The following fields are centered
    dedication = ""
    title = "Etude No. 2"
    subtitle = "   "
    subsubtitle = ""
      % The following fields are evenly spread on one line
      % the field "instrument" also appears on following pages
    instrument = "Solo Violin"
    composer = "Brian Ellis"
	arranger = "  "
    tagline = ""
    copyright = ""
  }
\score{
\midi {}
\layout{}
<<
\new Staff 
{
	\relative c {
	%Theme
	\tempo 4 = 110
	\time 4/4
	\partial 4 a'4
	\grace c'16 (d2) \grace c16 (d4) \grace c16 (d4)
	\grace c16 (d2.) \grace {c,32 (b} a4)
	\grace e'16 (f2) \grace e16 (f4) \grace e16 (f4)
	\grace dis16 (e2.) b4
	\grace fis''16 (g2) \grace fis16 (g4) \grace fis16 (g4)
	\grace {a32 (g} fis2.) \grace {b,,32 (a} gis4) ~gis2
	\grace a16 (gis4) \grace a 16 (gis4)
	\grace gis16 (g2)cis'2
%fast bit
	\grace {c,32 (b } a8) e'8 \grace {c32 (b } a8) e'
	\grace {c32 (b } a8) e'8 \grace {c32 (b } a8) e'
	\grace {c32 (b } a8) f'8 \grace {c32 (b } a8) f'
	\grace {c32 (b } a8) d8 \grace {c32 (b } a8) d
	\grace {c32 (b } a8) e'8 \grace {c32 (b } a8) e'
	\grace {c32 (b } a8) e'8 \grace {c32 (b } a8) e'
	\grace {c32 (b } a8) f'8 \grace {c32 (b } a8) f'
	\grace {c32 (b } a8) fis'8 \grace {c32 (b } a8) fis'
	\grace {c32 (b } a8) a'8 \repeat tremolo 8 { a32 ais } a4
%melodic bit
	d2 \grace e16 (d4) \grace cis16 (d4) \grace dis16 (d2.)	
	
	}
}
>>
}