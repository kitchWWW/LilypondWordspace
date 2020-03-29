\version "2.18.0"

\header {
	dedication = \markup{\column{\italic"For <REMOVED>" " "}}
	title = "Meg's Song - 1."
	subtitle = ""
	subsubtitle = "For Classical Guitar and Live Electronics"
	composer = "<REMOVED>"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c''{

  \override Score.BarNumber.break-visibility = ##(#f #f #f)
	\clef "treble"
	\key e \major
\omit Score.BarLine
\override Staff.TimeSignature #'stencil = ##f 

	e1:32\pp\< _\markup{\italic{"undulate on strings 1, 2, 3"}}
	~e: ~e:\mp ~e:^\markup{"+"} ~e: ~e:\> ~e: ~e:\pp
	r1


\break


\undo \omit Score.BarLine
\bar "[|:"
s1_\markup{\italic{"repeat phrases in any order as desired"}}
^\markup{\italic{"after ~10sec,"}{"+"}\italic{" then continue for ~30sec"}}
\time 9/4
\bar "||"
	e4\mf\1 (a2~a8 gis8gis1)
	r4 \fermata

\bar "||"
	e4 (b'2~b8 a8 a1)
	r4 \fermata
\bar "||"
\time 4/4
s1
\bar ":|]"


\break


s4 r2 e4 \f
\bar ".|:"
e'4^\markup{"+" \italic"(first time only)"}_\markup{\italic{"repeat as desired"}} e e e8 cis
\bar ":|."
s4     
 \hide Stem
cis_\markup{\italic{\column{"gesticulate with pitches," "order and rhythm as desired"}}} e
s4
\undo \hide Stem

\break


r1 
\omit Score.BarLine
a,,1:32\< ~ a:\mp\>  r\!
a1:32\< ~ a:\mf\>  r\!
a1:32\< ~ a:^\markup{"+"} ~ a:\mf\> ~ a:  r\!
\undo \omit Score.BarLine


\break


r1
\omit Score.BarLine
cis1:32\2\< ~ cis: ~ cis:\mf\> ~ cis:^\markup{"+"}  b2\2\sfp
	r2
\undo \omit Score.BarLine


\break
\pageBreak

r1
\omit Score.BarLine
cis1:32\2\< ~ cis: ~ cis:  b1:\mf ~b:^\markup{"+"} ~b:\> ~b:
	r1\!
\undo \omit Score.BarLine
	

\break


r1
\omit Score.BarLine
a1:32\2\< ~ a: ~ a: ~b:\mp\> ~b:
	r1\!
\undo \omit Score.BarLine


\break


r1
\bar ".|:"
\time 12/16
e,,16\sf_\markup{\italic{"(sf first time only)"}} (gis) b
e,^\markup{"+" \italic{"(first time only)"}} (gis) b
e, (gis _\markup{\italic{\column{"repeat as desired"}}} ) b
e, (gis) b
\bar ":|."
\time 4/4
r1_\markup{\italic{"fade out"}}


\break


r1
\bar ".|:"
\time 3/4

<a'' fis>8 _ \markup{\italic{\column{"repeat ascending subsections" "as desired"}}}
 [<a fis>]^\markup{"+" \italic{"(first time only)"}} <b gis> [<b gis>] <cis a> [<cis a>]
\bar ":|." 

\time 4/4
<dis b>2_\markup{\italic{"precede with c#, a"}} r2


\break


\undo \omit Score.BarLine
\bar "[|:"
s1_\markup{\italic{"repeat phrases in any order as desired"}}
^\markup{\italic{"after ~10sec,"}{"+"}\italic{" then continue for ~30sec"}}
\time 9/4
\bar "||"
	e,4\mf\1 (a2~a8 gis8gis1)
	r4 \fermata

\bar "||"
	e4 (b'2~b8 a8 a1)
	r4 \fermata
\bar "||"
	e4 (cis'2~cis8 b8 b1)
	r4 \fermata
\bar "||"

\time 4/4
s1
\bar ":|]"


\break


r1 
\omit Score.BarLine
dis,1:32\< ~ dis:\mp\>  r\!
dis1:32\< ~ dis:\mf ~ dis:^\markup{"+"}\>  e2\! r2
\undo \omit Score.BarLine

\bar "|."

}
}
