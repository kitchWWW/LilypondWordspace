
firstMainTheme = {
	\xNotesOn
	e4^"Pizz."\f a \xNotesOff
	<cis''\1 e,\3>\staccato <d fis,> <d fis,>\staccato <cis e,>2.
	\xNotesOn e,,,4^"Pizz." a \xNotesOff
	<cis'' e,>\staccato <d fis,> <d fis,>\staccato <cis e,>2.	\xNotesOn e,,,4^"Pizz." a \xNotesOff
	<cis'' e,>\staccato <d fis,> <d fis,>\staccato <cis e,>
	e,,, <gis''-2 e-1>
	e,, <fis'' d> e,, <e'' cis> e,, <fis'' d> e,, <gis'' e>
	e,, a <a''e> a,, a a2.

	\xNotesOn e4^"Pizz."\p a \xNotesOff
	<cis'' e,> <d fis,> <d fis,> <cis e,>2.
	\xNotesOn e,,,4^"Pizz." a \xNotesOff
	<cis'' e,> <d fis,> <d fis,> <cis e,>2.
	\xNotesOn e,,,4^"Pizz." a \xNotesOff
	<cis'' e,> <d fis,> <d fis,> <cis e,>
	e,,, <gis''\2 dis b> e,, <fis'' cis a> e,, <e'' d gis,>
	e,, <fis'' cis a> e,, <gis'' d b>
	e,, a <a''e cis> a,, a a2^"Fine" r8
	<<{
	\shiftOff
	a''8 (
\time 3/4
	b4.\mp) cis 8  b4 a2 s4
	gis^"VII" fis e
	e fis gis a2 a4

	}\\{\shiftOff
	s8
	a,,2.
	<a c'>2 s4
	e2 s4
	e2.
	a2 s4

	}\\{
	}\\{\shiftOff
	s8
	d'2.
	s4 e d
	d2 s4
	<cis>2 s4
	<e cis>2 s4
	}>>

% and we do it all again
<<{\shiftOff

	b'4.\mf cis 8  b4 a2 s4
	gis^"VII" fis e
	e fis gis a2 a4 \glissando
	(cis,2.)

	}\\{\shiftOff
	e,,2.
	<e cis'>2 s4
	a2 s4
	a2.
	e2 s4
	e2.

	}\\{
	}\\{\shiftOff
	d''2.
	s4 e d
	d2 s4
	<cis a>2 s4
	<dis b>2 s4 
	<e, a>2. ^"D.C. al Fine"
	\bar "|."
	}>>

	
}


\score {

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "Moment 4" }
tagline="   "
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
}

\new Staff
\relative c{
\time 4/4
\key a \major
	\firstMainTheme
}
\layout{}
}


\paper{
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  print-all-headers = ##t
  print-page-number = ##f
  indent = 0.0\cm
}

\header{
tagline = ""
}
