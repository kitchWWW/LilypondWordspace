
global= {
  \time 4/4
  \key c \major
}

\paper {

  indent = 10\mm
  left-margin = 15\mm
  right-margin = 15\mm
  bottom-margin = 15\mm
  top-margin = 10\mm
  line-length = 180\mm
  ragged-last-bottom = ##f
  max-systems-per-page = 5


}


\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Be Still" }
subtitle ="  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "for String Duo" }
tagline = " "

composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}



violinOne = \new Voice \relative c' {
  \set Staff.instrumentName = #"1 "
    \set Staff.midiInstrument = #"violin"
\tempo 4 = 80
	d1\ppp\<^\markup { \teeny "III" } ^\markup{\tiny\italic{{"very thin, pont."}}}
	d1
	<d a'>1
	<d a'>1\p~
	<d a'>4 <d a'>2.\<
	<d a'>1\mp\>
	<d a'>4\p <d a'> <d a'>2~<d a'>2
	<d a'>2\< <d a'>1\mp ~ <d a'>2.
		
	<d a'>4->
	<d a'>1
	<<{a'8 d a2.~ a1~a4}\\{\stemUp d,1 ~d1 ~d4}>>
	<d a'>2.
	<d a'>2. <d a'>4~<d a'>2~ \times 2/3{<d a'>4 <d a'>2}
	<<{\times 2/3{a'4 d8 ~ } d2.}\\{d,1}>>
	<<{a'1 a}\\{d,1 \times 2/3{a'8 d, a'} d,2. }\\{s1\< s2 s4 s4\mf}>>
	\breathe
	<d a'>1\sp ~<d a'>4 <d a'>2.->	
	<<{a'1 a1~a2. a4~a1}
		\\{d,1\< a'4\mf\> d, a' d, ~ \stemUp  d2.\! d4->~d1 }>>
	<<{a'2.~a8 d a4 d8 a a2}
		\\{d,1\mp\< d2 g4 d8 a'\f}>>
	<<{a1 a4 d8 a a4. d8}
		\\
		{d,2.\mf\< \times 2/3{a'8 d, a'} d,8 a' aes4 g4 d\ff }>>
	<d a'>1\mp ^\markup{\tiny\italic{{"tasto"}}}
	<d a'>1 
	<d a'>1 ^\markup{\tiny\italic{{"...slow shift to nat."}}}

	<<{a'4 a'2\harmonic a,4\< a'2\harmonic a,4
		a'4\harmonic ~ a4\harmonic a,2.\mf }\\{ d,2.~d4~ d2. d4~d1 }>>
	<d a'>1\sp ~<d a'>2 <d a'>2-> ~ <d a'>2.\< <d a'>4 ~ \mf \>
	<d a'>2 <a' d\harmonic>2\mp ~ <a d\harmonic>4
	
	<d, a'>2 
	<<{<d a'>4~->
		<d a'>1\< ~ <d a'>2  \times 2/3{a'4\f d2}
		}\\{ s4 s1 s2
		d,2}>>
	<d a'>4.-> <d a'>8-> ~<d a'>2
	~<d a'>4 <a' a>2.-> ~ <a a>2 <a a>2->
	<<{<d, a'>1->\> a'1\! a1}\\{s1 d,8 ^\markup{\tiny\italic{{"pont, airy, thin"}}}\mf
		a' d, g ~g2 \glissando a1}>>
	<<{a2\mp d2\harmonic}\\{d,1}>>
	<d a'>4 <d d>2.~ <d d>1
	<d d>2.\mp^\markup{\tiny\italic{{"dark, rich"}}} r4
	<d des>1\mf
	r4
	<<{d4\p d'2\harmonic d,4}\\{d2.~d4}>>
	r4 d4\p r
	<d d>1\pp\> ~ <d d> r1 \!

  \bar "|."
}

violinTwo = \new Voice \relative c'' {
  \set Staff.instrumentName = #"2 "
    \set Staff.midiInstrument = #"violin"
	a1\ppp\< ~ ^\markup { \teeny "III" }
	a4 a2.~
	a2 <d, a'>\p ^\markup { \teeny "III, IV" }
	~<d a'>8 <d a'>2..
	<d a'>2
	<<{a'2\< \glissando aeh1\mp\> \glissando a4\p}\\{\stemUp d,2 d1 d4}>>
  	<d a'>2. 
	<d a'>2. <d a'>4->
	<<{d8\mp a' d, a'~a2 ~a1}\\{d,1~d1}>>	
	<<{\times 2/3{d4 a' d,} a'2 ~a1}\\{d,1~d1}>>	<<{d8 a' d, a'~a2 ~a1}\\{d,1~d1}>>	
	<d a'>4 <d a'>2.
	<<{d8 a' d, a'~a2 ~a1}\\{d,1~d1}>>	
	<<{\times 2/3{d8 a' d,} a'8 d,~ d2 d1}\\{
		d2.\< a4 d2~ \times 2/3{d4 a2->\mf}}>>
	\breathe
	<d d>2.\sp <d d>4~<d d>2. <d a'>4
	<<{a'2\< \glissando aeh2 \glissando a1\mf\>~a4\!
		}\\{\stemUp d,2 d2 d1~d4}>>
	<d a'>2.-> <d a'>2
	<<{\times 2/3{d8\sf a' d,} g4}\\{d2}>>
	<<{a'2 d, d1 }\\{
		d1\mp\< d2 \times 2/3{d4 a2\f}}>>
	<<{d8 a' d, a' ~a2 a1 }\\{
		d,1\mf\< \times 2/3{d2 g,1\ff}}>>
	<d' a>1\mf\> ~<d a>4\mp
	<<{d2.~d1~d1
		}\\{a2.~a2 ~a8 d a d ~ d1}>>
	<<{\times 2/3 {r2 \times 2/3{d4 a' d,} a'2}}\\{
		d,1\< <a' g,>2 <d, a>2\mf}>>
	<<{ a'1}\\{a,8 d4.\sp~d2}>>
	<d a'>2. <<{a'4 ~ a2\<\glissando aes\mf\>\glissando a4 d2.\mp
		}\\{d,4~d1~d1}>>
	<d g>2 <d b'>
	<<{a'1 d,8 a' d, a'~a4.}\\{
		d,2\<\glissando dis \glissando d2.. <d a'>8\f~<d a'>2. }>>
	<d a'>4->~<d a'>1
	<d d>1->\>~<d d>2 \mf
	<<{<d d>2~<d d>1 d1}\\{s2 s1 \times 2/3{d2 a4~} a2}>>
	<d d>1\mp~<d d>
	<<{d1\mf}\\{\times 2/3{g,2 a d}}>>
	<d d>2.\mp r4
	<d d>1\mp r4
	<d d>2.\p ~ <d d>4
	r4 r2
	<d d>1\pp\> ~<d d>
	r1\!

  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff << \global \violinOne >>
    \new Staff << \global \violinTwo >>
  >>
  \layout { }
  \midi { }
}