\version "2.18.0"


\header {
	title = "A Little Bit of Everything"
	subtitle = ""
	composer = "Dawes"
	arranger = "arr. Brian Ellis"
	tagline = ""
}

upper = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4

\repeat volta 2 {

	\partial 2 {
	\tempo 4 = 120
	g4 a }
	
	b4.^"Introduction and Verse" b8 b4 a a g g e e d2.
	r2
	e4 g a4. a8 a4 g a g a4. b8 b1
	r2
	b4 d e4. e8 e4 d d b b a a g2.
	r4
	d e g a a a b4 a g e4. g8 g1
	r2
	}
	
\repeat volta 2 {

	b4^"Chorus" d e4. e8 e4 d d b g a8 b e4 e2 d8 d d4. 
	g,8 b4 d e e2 d8 d d4 b g a8 b b4 a a g a4.
	d,8 e4 g a a a b a8 g4 d8 e4 g a4 a b a e4.
	d8 e4 g a a a b a g d e g g g a g2
	}

}

lower = \relative c {
  \clef bass
  \key g \major
  \time 4/4

\repeat volta 2 {

	\partial 2 {r2}
	<g b d>1 <g c e> <g b d>2. g4 g1
	<fis a d>1 <fis a d>1 <g b d>2. g4 g1
	<e' g b>1 <d fis a>1 <c e g>2. c4 c1
	<g b d> <g c e> <g b d>2. g4 g2
	}
	
\repeat volta 2 {

	r2 <e' g b>1 <g, b d> <e' g b>1 <d fis a>
	<e g b>1 <g, b d> <fis a d> <fis a d>
	<g b d> <g c e> <fis a d> <e g b>
	<fis a d> <g c e> <g b d> <g b d>2
	}

}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 32)
    }
	}
  \midi { }
}
