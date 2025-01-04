% #(set-default-paper-size '(cons (* 14 in) (* 8.5 in)))
% #(set-default-paper-size '(cons (* 17 in) (* 11 in)))
% #(set-default-paper-size '(cons (* 15 in) (* 10 in)))
#(set-default-paper-size '(cons (* 11 in) (* 8.5 in)))
% #(set-default-paper-size '(cons (* 8.5 in) (* 11 in)))


\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  title = \markup{\normal-text\huge{ "Rooted"}}
  subtitle = \markup{\normal-text\italic{ "for Hon Ning Cheung"}}
  subsubtitle = \markup{\normal-text"for 14 hole chromatic harmonica"}
  composer = "Brian Ellis"
  tagline = ""
}
  \paper{
  indent = 3\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  % ragged-last = ##t
  % systems-per-page = 4
}



  \layout {
    ragged-right = ##f
    \context {
      \Staff
      % \omit TimeSignature
    }
  }


\markup{
	\column{
		"Notes:"
		"This piece is about exploring timbre and different expressive ways to play the same note."
    "Please make use of vibrato and tone color changes liberally to be as expressive as possible."
    "+ means to play the note differently than before (ex: the first measure could start 6+ and then change to 7+)"
    "Where two notes are written (such as m3), play both notes (6+ and 7+)"
    " "
	}
}

\score {
 \new StaffGroup <<
\new Staff \with {
  instrumentName = "Chromatic Harmonica"
  shortInstrumentName = "ch"
}
	\relative c'' {
		% \override Hairpin.minimum-length = #12
		\tempo "Very Lyrical"
    % \override Score.BarNumber.break-visibility = ##(#t #f #f)
    \clef treble

      \override Hairpin.circled-tip = ##t

      \time 4/4

      c2. ( \< c4\mp^"+"\> ~ c2.) r4\!\fermata

      \time 3/4
      c2\<( <c c>8\mp-> ~ c^"+" ~
      \times 2/3{c2 <c c>4} c4 ^"+" ~
      \time 4/4
      c2. ) r4\fermata 

      \break

      <c c g>1~\mf
      \time 3/4
      <c c g>2~<c c g>8 r8 

      

      \time 4/4
      <d, f a>2\<
      <d dis f fis a ais>2\f
      c'1\p ~
      \time 5/4
      <c c>2 r2 r4\fermata

      \break

      \time 4/4

      <c, c>8 \mf-> ~c4\p ~<c c'>8 ~c8 ~<c c'>8 ~c4~
      \times 2/3{c8 ~<c c'>8 ~c ~} c8.~<c c>16\mf->
  
       r8
      \override Hairpin.circled-tip = ##t
      c'8^"8"(~\< c4
      <b c d dis>4.^"8,9"\mf\> c8~ c4) r4\!\fermata
      \time 5/4
      \times 2/3{c'2\< ( c^"+"\mp\> c^"+")}
      r4\!\fermata
      \bar "|."
	}



\new Staff \with {
  instrumentName = "Voice"
  shortInstrumentName = "v"
}
  \relative c'' {
    \stopStaff

  \override Staff.Clef.color = #white

    \override Staff.TimeSignature.color = #white

    s1 s1 s2. s2.
    \undo   \override Staff.Clef.color = #white
    \undo     \override Staff.TimeSignature.color = #white
  
   \override Hairpin.circled-tip = ##t
      
    \startStaff
    r4 c2\mp r4\fermata
    r4 c4\mf \times 2/3{a g c}~c4 a8 c8 r4
    r1
    r2 c4.\mp a8~
    \time 5/4
    a4 e4 ~e2\> r4\!\fermata

    \time 4/4
    r2 r4
    \times 2/3{c'8\p r8 c8}
    r4
    \stopStaff



  }
  >>
	\layout{}
	\midi{}
}