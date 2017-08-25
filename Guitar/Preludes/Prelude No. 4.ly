#(set-global-staff-size 25)


\header {
	title = "Prelude"
	subsubtitle = "Fugue"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 1\cm
  left-margin = 2.5\cm
  right-margin = 2.5\cm
  top-margin = 4\cm
  bottom-margin = 2.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

<<
	\new Staff \relative c'' {
	\time 2/4
	\key d \major
	cis,4 (d a' g) r2
	cis,4 (d a' g) r2
	cis,4 (d a' g) r2
	cis,4 (d a'2 g4) r4
	cis,4 (d a' g) r2
	cis,4 (d a' g) a2 r
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
	cis,4( d a' g)
}
\new Staff \relative c'' {
	\time 2/4
	\key d \major
S2*19
	r4 cis,4 (d a' g) r2
	cis,4 (d a'~a g4) r4
	cis,4 (d a' g) r4 r
	cis,4 (d a' g) a4 ~a2
	S2 S2 
	cis,4 (d a' g) r
	cis,4 (d a'2 g4) r4
	cis,4 (d a' g) r2
	cis,4 (d a' g) a2 r
}
>>
}


