\version "2.18.0"

#(set-global-staff-size 18)
\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Top Bottom Music" }
subtitle ="   "
subsubtitle =  \markup {
         \override #'(font-series . "medium")
	         \override #'(font-series . "medium")

	\fontsize #2
	     "Four Etudes for the Howling Monster" 
}
tagline=""
composer = \markup { 
        \override #'(font-series . "medium")
	\fontsize #1
         "Brian Ellis" }
arranger = "   "
}


\paper{
  paper-width = 8.5\in
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 2\cm
  bottom-margin = 2.5\cm
  ragged-last-bottom = ##f
  indent = 1.5\cm
}

upperA = \relative c' {
  \clef treble
  \key a \minor
  \time 4/4
	f4.\mp\< (e8 e d d4-.\mf)
	f4. \mp \< (e8 e d d4-.\f)
	e8 \p\<(b b f' f d d c c2->\f b\p)

}



lowerA = \relative c {
  \clef bass
  \key a \minor
	e4. (d8 d c c4)
	e4. (d8 d c c4)
	d8 (a a e' e c c b b2 a)
	\bar "|."
}

upperB = \relative c' {
  \clef treble
	\key e \minor
	\time 6/8
	c'4\f (b8-. c4 b8-. c8 b16 a g8 a4.->)
	c4\mp (b8-. c4 b8-. c8 b16 a g8 fis4.)
}

lowerB = \relative c {
  \clef bass
	\key e \minor
	\time 6/8
	b'4 (a8-. b4 a8-. b8 a16 g fis8 g4.->)
	b4 (a8-. b4 a8-. b8 a16 g fis8 e4.)
	\bar "|."
}

upperC = \relative c' {
  \clef treble
	\key b \minor
	\time 4/2
	fis2.\mf (e4 d2 e2)
	g2. (fis4 e1)
	fis2. (e4 d2 cis2)
	fis4 (g e fis d4.\> e16 d cis2\pp)
	\bar"|."
}

lowerC = \relative c {
  \clef bass
	\key b \minor
	\time 4/2
	e2. (d4 cis2 d2)
	fis2. (e4 d1)
	e2. (d4 cis2 b2)
	e4 (fis d e cis4. d16 cis b2)
	\bar"|."
}

upperD = \relative c'' {
  \clef treble
	\key fis \minor
	\time 4/4
	d16->\f\< (cis b a) d-> (cis b a) gis8.( cis16->\ff cis4)
	d16->\f\< (cis b a) d-> (cis b a\ff) gis8.\p ( a16 a4)
	cis16^\markup { \italic "sempre" }
		 ( b a gis) cis (b a gis) b8.( a16 a4)
	cis16 ( b a gis) cis (b a gis) a8.( gis16 gis4)

}

lowerD = \relative c' {
  \clef bass
	\key fis \minor
	cis16-> (b a gis) cis-> (b a gis) fis8.( b16-> b4)
	cis16-> (b a gis) cis-> (b a gis) fis8.( gis16-> gis4)
	b16 ( a gis fis) b (a gis fis) a8.( gis16 gis4)
	b16 ( a gis fis) b (a gis fis) gis8.( fis16 fis4)
	\bar"|."
}

\score {
	\header {
	piece = "No 1. Allegretto"
}

  \new PianoStaff <<
    \new Staff = "upper" \upperA
    \new Staff = "lower" \lowerA
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


\score {
	\header {
	piece = "No 2. Vivo / Dolce"
}

  \new PianoStaff <<
    \new Staff = "upper" \upperB
    \new Staff = "lower" \lowerB
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


\score {
	\header {
	piece = "No 3. Choros"
}

  \new PianoStaff <<
    \new Staff = "upper" \upperC
    \new Staff = "lower" \lowerC
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


\score {
	\header {
	piece = "No 4. Vivace"
}

  \new PianoStaff <<
    \new Staff = "upper" \upperD
    \new Staff = "lower" \lowerD
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