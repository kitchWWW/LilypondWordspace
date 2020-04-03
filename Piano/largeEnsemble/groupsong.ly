\score {
  \new StaffGroup <<
  \new Staff \with {
  instrumentName = #"1"
  shortInstrumentName = #"1"
}  \relative c'' {
	\time 6/4
\tempo 4 = 40
  \clef treble
  \key d \major
	a4^"0:31"
	~a
	b^"1:03" ~b
	a^"1:37" ~a

\break

	fis4^"2:06"
	g^"2:20" ~g ~ g
	fis^"3:29" ~fis

\break

	e8^"3" [d] d [cis] d [b] a [e'] a, [e'] b [d]

\break
	
	d4^"4" cis b a^"5" a b
}	

  \new Staff \with {
  instrumentName = #"2"
  shortInstrumentName = #"2"
}  \relative c' {
  \clef treble
  \key d \major
	fis4^"0:37"
	g^"0:52"
	~g ~g
	fis^"1:38" ~fis

\break

	e4^"2:09"
	d^"2:21"
	g^"2:40"
	e^"3:00" ~e
	d^"3:49"

\break

	\clef bass	d8^"4" [b] cis [a] b [a] fis  [a] g [a] g [b]

\break
 
	b4^"5" a a fis^"6" g g

}	
  \new Staff \with {
  instrumentName = #"3"
  shortInstrumentName = #"3"
} \relative c' {
  \clef treble
  \key d \major
	e4^"0:40"
	d^"0:53" ~d
	e^"1:20" ~e 
	d ^"1:46" ~

\break

	d4
	cis^"2:23"
	b^"2:42"
	\clef bass  
	a^"3:09" ~a 
	b^"3:46"
	
\break

	b8^"5" [g] a [fis] a [fis] d [fis] d [g] d [g]
	g4^"6" fis fis d^"7" d d

}	
  \new Staff \with {
  instrumentName = #"4"
  shortInstrumentName = #"4"
}  \relative c' {
  \clef treble
  \key d \major
 \clef bass
	d4^"0:43"
	cis^"0:56"
	b^"1:01"
	a^"1:16"~ a
	b^"1:45" ~

\break

	b4
	a^"2:26"~ a
	fis^"3:01"
	g^"3:21"
	d^"3:43"

\break

	g8^"6" [e] fis [e] fis [d] d, [d'] d, [d'] g, [d']

\break

	e4^"7" e d \clef treble d''4^"1" cis b 

}

\new Staff \with {
  instrumentName = #"5"
  shortInstrumentName = #"5"
}  \relative c' {
  \clef bass
  \key d \major
	b4^"0:28"
	a^"0:51" ~a
	fis^"1:18"
	g^"1:34"
	d^"1:51"

\break

	g4^"2:04"
	fis^"2:25" ~fis
	d^"3:04" ~d
	g^"3:48"

\break

	e8 [g] e [e,] d' [fis] \clef treble d''8 [b] cis [a] b [a]

\break
 
	a4^"1" a b b^"2" a a

}
\new Staff \with {
  instrumentName = #"6"
  shortInstrumentName = #"6"
}  \relative c' {
  \clef bass
  \key d \major
	g4^"0:25" 
	fis^"0:50" ~fis
	d^"1:22"~ d
	g^"1:53"

\break

	e4^"2:08" ~e
	d^"2:45"
	\clef treble
	d''4^"3:03"
	cis^"3:27"
	b ^"3:47"

\break

	a8 [fis] a [g] b [g] b [e,] a [e] a [d,]

\break

	fis4^"2" g g  g^"3" fis fis

}

\new Staff \with {
  instrumentName = #"7"
  shortInstrumentName = #"7"
}  \relative c {
  \clef bass
  \key d \major
	e4^"0:34" ~e
	d^"1:09"
	\clef treble d''4^"1:15"
	cis^"1:35"
	b ^"1:49"

\break

	a4^"2:07" ~a
	b^"2:41" ~b
	a^"3:20" ~a
	
\break

	fis8 [e] g [d] g [d] g [e] fis [e] fis [d]

\break

	e4^"3" d d e^"4" e d
}

  >>
  \layout { }
  \midi { }
}










%{
a4^"1" a b b^"2" a a
	fis4^"2" g g  g^"3" fis fis
	e4^"3" d d e^"4" e d
	d4^"4" cis b \clef bass a^"5" a b
	b4^"5" a a fis^"6" g g
	g4^"6" fis fis d^"7" d d
	e4^"7" e d \clef treble d''4^"1" cis b 




%	a4 a b d cis b 
%	fis4 g g b a a
%	e4 d d g fis fis
%	d4 cis b e e d
%	b4 a a a a b
% 	g4 fis fis fis g g
% 	e4 e d d d d

%}