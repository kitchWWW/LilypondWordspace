\version "2.18.0"

\header {
	title = "Prelude No. 3"
	subtitle = "Op. 6"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c'{
	\key c \major
	\time 5/4
	\tempo 4 = 80
	\times 2/3 {e8\mp\< g b(} c4--) (b2\!) r4\fermata
	\times 2/3 {e,8\mp\< g b(} c8--) (b) f'--\! (e) ~e4 r4\fermata
	\times 2/3 {e,8\mp\< g b(} c8--) (b) f'--\f\> (e) d-- (c) c-- (b)
	bes-> (a) \grace a16 (g4)--\mp \times 2/3{<e c>8->\sf g\mp  b(} c4--) (b)
	\times 2/3 {<e, c>8\mf\< g c(} d8--) (c) g'--\! (f) (e4) r4\fermata
	\times 2/3 {<e, c>8\mf\< g b(} d8--) (c) f--\> (e) d (c) a (g)
	\times 2/3 {<e b>8\mf\< g b(} c8--) (b) f'--\> (e) d (c) c (b)
	a (g) c (b) d c e d e4 f2 r2.\fermata
}
}