\header{
title ="Down in the Valley"
composer = "arr. Brian Ellis"
tagline = ""
}

\new Staff
<<
	\relative c''{
%put all the stuff here
	\time 3/4
	\key d \major

\repeat volta 2 {

<<{
	a'2.^"VII" fis2 d4 e2\3 e4 fis (e) d
}\\{
	d,,4 a' a' d2 s4
	a, a'
}>>
	b\3 a, d' a d, d'
	b a, d' a d, d'

}
\alternative {
  {d e\2 fis\2 }
  {fis, <a d> fis d <a' d> d, fis <a d> fis d <a' d> d, }
}
<<{%wish I was a slave to an age old trade
	a''4 a a fis2 d4 e2 e4 fis2. e,8 fis4. fis4 fis2. e8 fis4. fis4 fis2 s8 e'
}\\{
	d,,4 <fis' d'> s4 s4 a, g' s4 <fis a> s4 d, d d d2. s4 a' d, d2. s4 a' d,
}>>

<<{%like ridin' round on rail cars...
	fis''8 fis fis e4 b8 d d e d4. e,8 fis4. fis4 fis2. e8 fis4. fis4 fis2.
}\\{
	d,8 a' d <d' a>4. d,,8 a'4 d4. d,2. s4 a' d, d2. s4 a' d,
}>>
<<{
	fis''2 fis4 e2 e4 d2 d4 b2. e,8 fis4. fis4 fis2.
}\\{
	d,4 a' <d a' d> d,4 a' <d a' d> d,4 a' <d a'> d,4 a' g' d,2. s4 a' d,4
}>>
<<{
	d''2 d4 b2 b4 a b d d2. e,8 fis4. fis4 fis2. d'4 e fis
}\\{
	s4 a,,4 <d a' d> s a <d a' b> d, a' d d, a' d d,2. s4 a' d, d a' d
}>>

<<{%we do it over and over and over again
	a''4 a a fis fis fis e e e d2.
}\\{
	d,,4 <d' b' d> s d,4 <d' b' d> s d, a'' d, a d d,
}>>

<<{%call it one drink too many, call it pride of a man
	a'''4 a a fis fis fis e e d8 (e) fis2.
}\\{
	d,,4 <g' b> a, d,4 <g' b> a, d,4 <g' b> a, d, a' d
}>>

<<{% cuz they both end in trouble and start with a grin
%grace b8
	d'4 d d b2 g4 a a d d2. 
}\\{
	d,,4 b'' s s a, s d s s d, a' d
}>>


}
>>

\midi{}

\layout {
	\context {
		\Score
			\override SpacingSpanner
			#'base-shortest-duration = #(ly:make-moment 1 16)
	}
}


