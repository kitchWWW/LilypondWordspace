#(set! paper-alist (cons '("my size" . (cons (* 9 in) (* 8 in))) paper-alist))

\header {
tagline = ""
}

\paper{
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 1.5\cm
  bottom-margin = 2\cm
  print-all-headers = ##t
  print-page-number = ##f
  indent = 1\cm
  ragged-last-bottom = ##f
  #(set-paper-size "my size")

}

one = \relative c'' {
  \clef treble
  \key d \major
\time 9/4
	r4^"0:00"   \xNotesOn
	a4^"0:05"_\markup{\italic"clap"} \xNotesOff
	r4

	a4:8^"0:31"
	~a:
	b:^"1:03" ~b:
	a:^"1:37" ~a:

\time 6/4
\break

	fis4:32^"2:06"
	g:^"2:20" ~g: ~ g:
	fis:^"3:29" ~fis:

\break

\time 1/4
\bar ".|:"
	 e8^"4:04" [d]
\bar ":|.|:"
	 d^"4:23" [cis]
\bar ":|.|:"
	 d^"4:36" [b]
\bar ":|.|:"
	 a^"4:49" [e']
\bar ":|.|:"
	 a,^"5:08" [e']
\bar ":|.|:"
	 b^"5:23" [d]
\bar ":|."

\time 9/4	
\break
	
	d4:8^"5:37"
	cis:^"5:47"
	b:^"6:00"
	a:~^"6:16" a:
	b:^"6:45"
	d:^"7:05"
	r^"7:25"
\bar "|."
}	

two = \relative c' {
  \clef treble
  \key d \major
	r4^"0:00"   \xNotesOn
	fis4^"0:05"_\markup{\italic"clap"} \xNotesOff
	r4

	fis4:8^"0:37"
	g:^"0:52"
	~g: ~g:
	fis:^"1:38" ~fis:

\break

	e4:32^"2:09"
	d:^"2:21"
	g:^"2:40"
	e:^"3:00" ~e:
	d:^"3:49"

\break

	\clef bass	d8^"4:10" [b]
	 cis^"4:17" [a]
	 b^"4:40" [a]
	 fis^"4:55"  [a]
	 g^"5:12" [a]
	 g^"5:17" [b]
	

\break
 
	b4:8 ^"5:33"
	a:8^"5:52" ~a:
	fis:^"6:18"
	g:^"6:30"
	d:^"6:46"
	~d:
	r^"7:24"

}	


three = \relative c' {
  \clef treble
  \key d \major
	r4^"0:00"   \xNotesOn
	e4^"0:05"_\markup{\italic"clap"} \xNotesOff
	r4

	e4:8^"0:40"
	d:^"0:53" ~d:
	e:^"1:20" ~e:
	d: ^"1:46" ~

\break

	d4:32^"2:00"
	cis:^"2:23"
	b:^"2:42"
	\clef bass  
	a:^"3:09" ~a:
	b:^"3:46"
	
\break

	b8^"4:02" [g] 
	 a^"4:15" [fis]
	 a^"4:30" [fis]
	 d^"4:45" [fis]
	 d^"5:00" [g]
	 d^"5:25" [g]

\break
	
	g4:8^"5:32"
	fis:^"5:53" ~fis:
	d:~^"6:19" d:
	g:^"6:49"
	fis:^"7:06"
	r^"7:32"

}	



four =  \relative c' {
  \clef treble
  \key d \major
 \clef bass
	r4^"0:00"   \xNotesOn
	d4^"0:05"_\markup{\italic"clap"} \xNotesOff
	r4

	d4:8^"0:43"
	cis:^"0:56"
	b:^"1:01"
	a:^"1:16"~ a:
	b:^"1:45" ~

\break

	b4:32^"2:03"
	a:^"2:26"~ a:
	fis:^"3:01"
	g:^"3:21"
	d:^"3:43"

\break

	g8^"4:08" [e]
	 fis^"4:21" [e]
	 fis^"4:34" [d]
	 d,^"4:47" [d']
	 d,^"5:04" [d']
	 g,^"5:21" [d']
	

\break

	e4:8^"5:34" ~e:
	d:^"6:05"
	\clef treble d''4:^"6:15"
	cis:^"6:37"
	b: ^"6:52"
	a:^"7:00"
	r^"7:21"

}


five =  \relative c' {
  \clef bass
  \key d \major
	r4^"0:00"   \xNotesOn
	b4^"0:05"_\markup{\italic"clap"} \xNotesOff
	r4

	b4:8^"0:28"
	a:^"0:51" ~a:
	fis:^"1:18"
	g:^"1:34"
	d:^"1:51"

\break

	g4:32^"2:04"
	fis:^"2:25" ~fis:
	d:^"3:04" ~d:
	g:^"3:48"

\break

	e8^"4:06" [g]
	 e^"4:25" [e,]
	 d'^"4:42" [fis]
	 \clef treble d''8^"4:57" [b]
	 cis^"5:06" [a]
	 b^"5:15" [a]
	

\break
 
	a4:8^"5:30" ~a:
	b:^"6:02" ~b:
	a:^"6:31" ~a: ~
	a:
	r^"7:28"

}



six = \relative c' {
  \clef bass
  \key d \major
	r4^"0:00"   \xNotesOn
	g4^"0:05"_\markup{\italic"clap"} \xNotesOff
	r4
	g4:8^"0:25" 
	fis:^"0:50" ~fis:
	d:^"1:22"~ d:
	g:^"1:53"

\break

	e4:32^"2:08" ~e:
	d:^"2:45"
	\clef treble
	d''4:^"3:03"
	cis:^"3:27"
	b: ^"3:47"

\break

	a8^"4:00" [fis]
	 a^"4:19" [g]
	 b^"4:38" [g]
	 b^"4:51" [e,]
	 a^"5:02" [e]
	 a^"5:19" [d,]
	

\break

	fis4:8 ^"5:36"
	g:^"5:48" ~g:  ~g:
	fis:^"6:33" ~fis:
	~fis:
	r^"7:33"

}


seven = \relative c {
  \clef bass
  \key d \major
	r4^"0:00"   \xNotesOn
	e4^"0:05"_\markup{\italic"clap"} \xNotesOff
	r4
	e4:8^"0:34" ~e:
	d:^"1:09"
	\clef treble d''4:^"1:15"
	cis:^"1:35"
	b: ^"1:49"

\break

	a4:32^"2:07" ~a:
	b:^"2:41" ~b:
	a:^"3:20" ~a:
	
\break

	fis8^"4:12" [e]
	 g^"4:27" [d]
	 g^"4:32" [d]
	 g^"4:53" [e]
	 fis^"5:10" [e]
	 fis^"5:27" [d]
	

\break

	e4:8 ^"5:31"
	d:^"5:45" ~d:
	e:^"6:21" ~e:
	d:^"6:50"
	~d: r^"7:36"
}




\score {
\header {
title = "Nation-wide Counterpoint"
subtitle = "distributed piano septet with optional voice"
composer="Brian Ellis"
}
  \new StaffGroup <<
  \new Staff \with {
  instrumentName = #"1"
  shortInstrumentName = #"1"
} \one
  \new Staff \with {
  instrumentName = #"2"
  shortInstrumentName = #"2"
}  \two
  \new Staff \with {
  instrumentName = #"3"
  shortInstrumentName = #"3"
} \three
  \new Staff \with {
  instrumentName = #"4"
  shortInstrumentName = #"4"
} \four
\new Staff \with {
  instrumentName = #"5"
  shortInstrumentName = #"5"
} \five
\new Staff \with {
  instrumentName = #"6"
  shortInstrumentName = #"6"
}  \six
\new Staff \with {
  instrumentName = #"7"
  shortInstrumentName = #"7"
}  \seven
  >>
  \layout { }
  \midi { }
}



\pageBreak


global = \relative {
\override Score.BarNumber.break-visibility = ##(#f #f #f)
 \override Staff.TimeSignature #'stencil = ##f 
\time 9/4
	s4
	s
	s
	s1.\p
\time 6/4
	s4\mp
	s
	s\<
	s\>
	s
	s\mp
\time 1/4
\bar ".|:"
	s4	\mf\>
\bar ":|.|:"
	s
\bar ":|.|:"
	s\mp
\bar ":|.|:"
	s\f
\bar ":|.|:"
	s\f\>
\bar ":|.|:"
	s\mf
\bar ":|."

\time 9/4
	s4\p s_\markup{\column{" " " "\italic"(male singing starts)"}} s s
	s_\markup{\column{" " " "\italic"(female singing starts)"}}
	 s4\> s s\!
	s4^"7:40"_\markup{\column{" " " "\italic"(all stop)"}}
\bar "|."
}

\score {
\header {
title = "Nation-wide Counterpoint"
subtitle = "distributed piano septet"
composer="Brian Ellis"
piece ="part 1"
}
  \new Staff  <<
\one
\global
>>
  \layout { }
  \midi { }
}

\pageBreak

\score {
\header {
title = "Nation-wide Counterpoint"
subtitle = "distributed piano septet"
composer="Brian Ellis"
piece ="part 2"
}
  \new Staff  <<
\two
\global
>>
  \layout { }
  \midi { }
}

\pageBreak

\score {
\header {
title = "Nation-wide Counterpoint"
subtitle = "distributed piano septet"
composer="Brian Ellis"
piece ="part 3"
}
  \new Staff  <<
\three
\global
>>
  \layout { }
  \midi { }
}

\pageBreak

\score {
\header {
title = "Nation-wide Counterpoint"
subtitle = "distributed piano septet"
composer="Brian Ellis"
piece ="part 4"
}
  \new Staff  <<
\four
\global
>>
  \layout { }
  \midi { }
}

\pageBreak

\score {
\header {
title = "Nation-wide Counterpoint"
subtitle = "distributed piano septet"
composer="Brian Ellis"
piece ="part 5"
}
  \new Staff  <<
\five
\global
>>
  \layout { }
  \midi { }
}

\pageBreak

\score {
\header {
title = "Nation-wide Counterpoint"
subtitle = "distributed piano septet"
composer="Brian Ellis"
piece ="part 6"
}
  \new Staff  <<
\six
\global
>>
  \layout { }
  \midi { }
}

\pageBreak

\score {
\header {
title = "Nation-wide Counterpoint"
subtitle = "distributed piano septet"
composer="Brian Ellis"
piece ="part 7"
}
  \new Staff  <<
\seven
\global
>>
  \layout { }
  \midi { }
}

\pageBreak







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