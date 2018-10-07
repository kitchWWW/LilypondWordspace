
\header{
	title = "Music for Listeners"
	tagline = ""
	composer = "Brian Ellis"
	arranger = "  "
}


\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}



\score {
\header{
piece="Part I."
}
    \new Staff \with { \remove "Time_signature_engraver" } {
\absolute {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
\clef "percussion_8"
\override Voice.Stem.direction = #up
\override Staff.StaffSymbol.line-count = #6
	\time 4/8
	d8 [ f a f]
	\time 5/8
	d8 [ f a f] a
	\time 6/8
	d8 [ f a f] a [f]
	\time 7/8
	d8 [ f a f] d [a f]
	\time 8/8
	d8 [ f a f] d [f a f]
\break
	\time 9/8
	d8 [ f a f] d8 [ f a f] a
	\time 10/8
	d8 [ f a f] d8 [ f a f] a [f]
	\time 11/8
	d8 [ f a f] d8 [ f a f] d [a f]
	\time 12/8
	d8 [ f a f] d8 [ f a f] d [f a f]
\break
	\time 13/8
	d8 [ f a f] d8 [ f a f] d8 [ f a f] a
	\time 14/8
	d8 [ f a f] d8 [ f a f] d8 [ f a f] a [f]
	\time 15/8
	d8 [ f a f] d8 [ f a f] d8 [ f a f] d [a f]
	\time 16/8
	d8 [ f a f] d8 [ f a f] d8 [ f a f] d [f a f]
\break
	\time 15/8
	d8 [ f a f] d8 [ f a f] d8 [ f a f] d [a f]
	\time 14/8
	d8 [ f a f] d8 [ f a f] d8 [ f a f] a [f]
	\time 13/8
	d8 [ f a f] d8 [ f a f] d8 [ f a f] a
	\time 12/8
	d8 [ f a f] d8 [ f a f] d8 [ f a f]
\break
	\time 11/8
	d8 [ f a f] d8 [ f a f] d [a f]
	\time 10/8
	d8 [ f a f] d8 [ f a f] a [f]
	\time 9/8
	d8 [ f a f] d8 [ f a f] a
	\time 8/8
	d8 [ f a f] d8 [ f a f]
\break
	\time 7/8
	d8 [ f a f] d [a f]
	\time 6/8
	d8 [ f a f] a [f]
	\time 5/8
	d8 [ f a f] a
	\time 4/8
	d8  [ f a  f]
\bar "||" \mark \markup{\normalsize{\italic{"attacca"}}}
}
}
  \layout {
  ragged-last = ##f
}
}





\score {
\header{
piece="Part II."
}
    \new Staff \with { \remove "Time_signature_engraver" } {
\absolute {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
\clef "percussion_8"
\override Voice.Stem.direction = #up
\override Staff.StaffSymbol.line-count = #6
	\time 4/8
	d8 [ f a f]
	\time 3/8
	d [a f]
	\time 2/8
	a [f]
	a [d]
	f [d]
	f [a]
	d [a]
	d [f]
	a [f]
\time 21/8
	d [a f] a [f] a [f] a [f] a [f] a [f] a [f] a [f] a [f] a [f] 
\time 19/8
	d [a f] a [f] a [f] a [f] a [f] a [f] a [f] a [f] a [f]
\time 17/8
	d [a f] a [f] a [f] a [f] a [f] a [f] a [f] a [f]
\time 15/8
	d [a f] a [f] a [f] a [f] a [f] a [f] a [f]
\time 13/8
	d [a f] a [f] a [f] a [f] a [f] a [f]
\time 11/8
	d [a f] a [f] a [f] a [f] a [f]
\time 9/8
	d [a f] a [f] a [f] a [f]
\time 7/8
	d [a f] a [f] a [f]
\time 5/8
	d [a f] a [f]
\time 3/8
	d [a f]
\time 5/8
	d [a f] a [f]
\time 7/8
	d [a f] a [f] a [f]
\time 9/8
	d [a f] a [f] a [f] a [f]
\time 11/8
	d [a f] a [f] a [f] a [f] a [f]
\time 13/8
	d [a f] a [f] a [f] a [f] a [f] a [f]
\time 15/8
	d [a f] a [f] a [f] a [f] a [f] a [f] a [f]
\time 17/8
	d [a f] a [f] a [f] a [f] a [f] a [f] a [f] a [f]
\time 19/8
	d [a f] a [f] a [f] a [f] a [f] a [f] a [f] a [f] a [f]
\time 21/8
	d [a f] a [f] a [f] a [f] a [f] a [f] a [f] a [f] a [f] a [f] 
	\time 2/8
	a [f]
	a [d]
	f [d]
	f [a]
	d [a]
	d [f]
\bar "||" \mark \markup{\normalsize{\italic{"(Optional)"}}}
	g, [f]
	d [f]
	g, [f]
	d [f]
	d [a]
	g, [a]
	g, [f]
	a [f]
	d [f]
	d [b,]
	f [b,]
	a [b,]
	e, [g,]
	a [f]
	a [g,]
	e, [g,]
	e, [f]
	e, [d]
	e, [g,]
	a [b,]
	a [d]
	a [f]
	d [f]
	
	


\bar "||" \mark \markup{\normalsize{\italic{"attacca"}}}
}
}
  \layout {
  ragged-last = ##f
}
}



\score {
\header{
piece=\markup{"Part III." \italic{(Optional)}}
}
    \new Staff \with { \remove "Time_signature_engraver" } {
\absolute {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
\clef "percussion_8"
\override Voice.Stem.direction = #up
\override Staff.StaffSymbol.line-count = #6
	\time 2/8
	d [f]
	\time 6/8
	d [f] d [f a f]
	\time 16/8
	d [f] d [f a f] d [f a b, a f] d [f a f]
	\time 32/8
	d [f] d [f a f] d [f a b, a f] d [f a b, a g, a b, a f] d [f a b, a f]  d [f a f]
	\time 36/8
	d [f] d [f a f] d [f a b, a f] d [f a b, a g, a b, a f] d [f a b, a g, a e, a g, a b, a f]
\bar ""
\break
	\time 22/8
	d [f a b, a g, a b, a f] d [f a b, a f] d [f a f] d [f]

\bar "||" \mark \markup{\normalsize{\italic{"attacca"}}}

}
}
  \layout {
  ragged-last = ##f
}
}



\score {
\header{
piece="Part IV."
}
    \new Staff \with { \remove "Time_signature_engraver" } {
\absolute {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
\clef "percussion_8"
\override Voice.Stem.direction = #up
\override Staff.StaffSymbol.line-count = #6
	\time 6/8
	d [f a f] d [f]
	d [f a] f [d f]
	d [f] a [f d f]
	d [f] a [f] d [f]
	d [f] a [d] f [a]
	d [f a] d [f a]
	d [f] a [d] f [a]
	d [f a] d [f a]
	\time 3/8
	d [f a]
	\time 4/8
	d [f a] f
	\time 5/8
	d [f a] d [f]
	\time 6/8
	d [f a] d [f a]
	\time 7/8
	 d [f a] d [f a] f
	\time 8/8
	 d [f a] d [f a] d [f]
	\time 9/8
	 d [f a] d [f a] d [f a]
	\time 13/8
	 d [f a] d [f a] d [f a] d [f a] f
	\time 14/8
	 d [f a] d [f a] d [f a] d [f a] d [f]
	\time 15/8
	 d [f a] d [f a] d [f a] d [f a] d [f a]
	\time 9/8
	 d [f a] d [f a] d [f a]
	\time 8/8
	 d [f a] d [f a] d [f]
	\time 7/8
	 d [f a] d [f a] f
	\time 6/8
	 d [f a] d [f a]
	\time 5/8
	 d [f a] d [f]
	\time 4/8
	 d [f a] f
	\time 4/8
	 d [f a f]

\bar "|."

}
}
  \layout {
  ragged-last = ##f
}
}
