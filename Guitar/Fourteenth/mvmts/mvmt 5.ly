\version "2.18.2"

firstMainThemefive = {
<<{
	a'4 b4 c4 c4. d8 c4
	<b e,>2.
	fis4 f8 fis gis4 
	gis^"II" fis e
	e4.\2 fis8 g4
	fis4.\2	fis8-1 g-3 e-0

}\\{
	<c a,>2.
	<e d gis,>2 s4
	<d gis,> a, e
	<dis' a' b>2.
	<e ais cis>2.
	<a, c'>
	<e dis''>
}>>

%and we do it all again

<<{
	a''4 b4 c4 c4. d8 c4
	<b e,>2.
	fis4 f8 fis gis4 
	gis fis e
	e4. fis8 g4
	fis4.
	fis8 gis a

}\\{
	<c, a,>2.
	<e d gis,>2 s4
	<d gis,> a, e
	<dis' a' b>2.
	<e ais cis>2.
	<a, c'>
	<e dis''>
}>>


}

nextbit = {
<<{
	a8 cis e a cis e
	e cis a b a e
	fis a b cis 4 cis8
	e cis a cis a fis
	b fis e a4.


}\\{
	a,,2.
	a4. d
	a a
	a d a a
}>>
}

lowtheme = {
<<{
	<a'' c,>4^"V" s s
	<gis e>4. s8 s4
	<d b'>2^"VII" s4
	<dis fis a,>2^"II" s4
	<b dis>2^"IV" s4
	

}\\{}\\{
	a4 b4 c4 c4. d8 c4
	<b>2.
	fis4 f8 fis gis4 
	gis fis e
	e4. fis8 g4
	<fis dis' >4.
	dis'8 e g
}\\{
	a,,2.
	s
	a4 e fis
	s2.
	e
	a
	e
}>>
}

differentTheme = {
<<{
	a''4. b8 c4
	<b e,>2.
	a4. b8 c4
	<b e,>2.

	a4 b4 c4
	c4. d8 e4
	<e f,> <d e,> <c d,>
	<b e,>2.
	
	fis4 fis8 f fis gis 
	gis4 fis e
	e4. fis8 g4
	fis4. g8 fis4
	<e\2 b>2.
	<e b>2.
	<e b>4.
	e8 e4
	<e b>2.

}\\{
	<c a,>2.
	<d gis,>4 a, e
	<a c'>2.
	<d' gis,>4 a, e

	<a c'>2.
	<e'' d gis,>2 s4
	a,,2.
	<d' gis,>4 a, e

	<dis' a' b>2.
	<e ais cis>2.
	<a, c'>
	<e dis''>
	c'4. b8 a4
	a4. g8 fis4
	e2.
	e

}>>

\bar "|."

}


\score{

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3
         "Moment 5" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
}



\midi {}
\layout {}
<<
\new Staff {
\relative c''{
\time 3/4
%\key e \major
	\firstMainThemefive
	\lowtheme
	\differentTheme
}
}
>>
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

\pageBreak