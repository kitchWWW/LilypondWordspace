\version "2.18.0"

\header{tagline=""}

#(set-global-staff-size 30)

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
\header {
	piece = "Tonkawa Song"
	subsubtitle = "For Guitar"
	composer = "Traditional"
	tagline = ""
}
	\midi {}
	\layout {}
	\new Staff \relative c'{
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\time 4/4
	g''\1\f-3\f e\1-0 e\1-0 e\1-0 
	g e e e
	d\2\p-3 b\2-0 b\2-0 b\2-0
	d b b b
	g'\f\1-3 e\1-0 e e 
	g e e e
	d\p\2-3 b\2-0 b b
	e1\1-0
	\bar "|."
}
}


\score {
\header {
	piece = "C Major Scale"
	subsubtitle = "For Guitar"
	composer = "Physics"
	tagline = ""
}
	\midi {}
	\layout {}
	\new Staff \relative c'{
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\time 4/4
	c4\5-3 d\4-0 e\4-2 f\4-3 g\3-0 a\3-2 b\2-0 c\2-1 c b a g f e d c
	\bar ":|."
	c1 \bar "|."
}
}


\score {
\header {
	piece = "C Major Scale"
	subsubtitle = "For Guitar"
	composer = "Physics"
	tagline = ""
}
	\midi {}
	\layout {}
	\new Staff \relative c'{
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\time 4/4
	c4\5-3 d\4-0 e\4-2 f\4-3 g\3-0 a\3-2 b\2-0 c\2-1 c b a g f e d c
	\bar ":|."
	c1 \bar "|."
}
}