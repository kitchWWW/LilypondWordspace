\version "2.18.0"

#(set-global-staff-size 18)

\header {
	title = "After Brower"
	subtitle = ""
	composer = "Brian Ellis"
	tagline = ""
}

upper = \relative c'' {
  \clef treble
  \key c \major

  \time 8/8
	\tempo 4. = 120
	r1
	g4.\mf -.( e-. c8) r
	g'4.\p (e des8\<) ( e
	f4.\f\<) (a <c des>8) r
	f,4. (a <c d>8\ff) r
\clef bass
	g,,4.-.\mp d'-. b4--
	g4.-.\mf d'-. bes4--

	c,4.->\> ( \clef treble e''' g4\pp\fermata)
	<e, g>8\ff\> <e g> <e g>
	<d f> <d f> <d f>
	e e e
	d d d
	c c c\pp

	r4. r r 
	\time 8/8
	g'4.\mf -.( e-. c8) r
	g'4.\p (e des8\<) ( e
	f4.\f\<) (a <c des>8) r
	f,4. (a <c d>8\ff) r
\clef bass
	g,,4.-.\mp d'-. b4--
	g4.-.\mf d'-. bes4--
	c,4.->\> ( \clef treble e''' g4\pp\fermata)
\clef bass
	\time 2/4
	r4
	<e,, g> \fermata\arpeggio
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 8/8

\override TextSpanner.bound-details.left.text =
  \markup { \upright "rit." }
	\set PianoStaff.connectArpeggios = ##t
	<bes' c>8^"very even"\pp
		[<bes c> <bes c> <bes c> <bes c> <bes c> <bes c> <bes c>]
	<bes c> [<bes c> <bes c> <bes c> <bes c> <bes c> <bes> <bes c>]
	<bes c> [<bes c> <bes c> <bes c> <bes c> <bes c> <bes c> <bes c>]
	<bes c> [<bes c> <bes c> <bes c> <bes c> <bes c> <bes c> <bes c>]
	<bes c> [<bes c> <bes c> <bes c> <bes c> <bes c> <bes c> <bes c>]
	<bes c> [<bes c> <bes c> <bes c> <bes c> <bes c> <bes c> <bes c>]
	<bes c> [<bes c> <bes c> <bes c> <bes c> <bes c> <bes c> <bes c>]
	<bes c>\startTextSpan 
		[<bes c> <bes c> <bes c> <bes c> <bes c>] r4\stopTextSpan

	\time 3/8
	<f a c>8^"a tempo" <f a c> <f a c>
	<g b> <g b> <g b>
	<a c> <a c> <a c>
	b b b
	b b b
	
	<b c> [<b c> <b c> <b c> <b c> <b c> <b c> <b c> <b c>]
	<b c> [<b c> <b c> <b c> <b c> <b c> <b c> <b c>]
	<b c> [<b c> <b c> <b c> <b c> <b c> <b c> <b c>]
	<b c> [<b c> <b c> <b c> <b c> <b c> <b c> <b c>]
	<b c> [<b c> <b c> <b c> <b c> <b c> <b c> <b c>]
	<b c> [<b c> <b c> <b c> <b c> <b c> <b c> <b c>]
	<b c> [<b c> <b c> <b c> <b c> <b c> <b c> <b c>]
	<b c>\startTextSpan
		[<b c> <b c> <b c> <b c> <b c>\stopTextSpan]
	r4
	r4
	<f, a c>\arpeggio
	
	\bar "|."

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
