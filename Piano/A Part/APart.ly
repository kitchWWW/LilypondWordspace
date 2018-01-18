\version "2.18.0"

#(set-global-staff-size 20)

\header {
	title = "A Part"
	subtitle = ""
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  paper-width = 8.5\in
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  indent = 0.7\cm
}


upper = \relative c''' {
  \clef treble
  \key c \major
  \time 8/4
	\tempo 4 = 100
	
	r1 <g g'>2 <g g'>
	r1 <f f'>2 <f f'>
	r1 <e e'>2 <e e'>
	r1 <d d'>2 <d d'>
\break
	r1 <g g'>2 <g g'>
	r1 <a a'>2 <a a'>
	r1 <b b'>2 <b b'>
	r1 <a a'>2 <a a'>\breathe
\break
	r1 <g g'>2 <g g'>
	r1 <f f'>2 <f f'>
	r1 <e e'>2 <e e'>
	r1 <d d'>2 <d d'>
	r1 <c c'>2 <c c'>
	r1 <b b'>2 <b b'>
	r1 <a a'>2 <a a'>
\break
	r1 <g' g'>2 <g g'>
	r1 <a a'>2 <a a'>
	r1 <b b'>2 <b b'>
	r1 <a a'>2 <a a'>\breathe
\break
	r1 <g g'>2 <g g'>
	r1 <f f'>2 <f f'>
	r1 <e e'>2 <e e'>
	r1 <d d'>2 <d d'>
	r1 <c c'>2 <c c'>
	r1 <b b'>2 <b b'>
	r1 <a a'>2 <a a'>
	r1 <g g'>2 <g g'>
	r1 <f f'>2 <f f'>
	r1 <e e'>2 <e e'>
\break
	r1 <g' g'>2 <g g'>
	r1 <a a'>2 <a a'>
	r1 <b b'>2 <b b'>
	r1 <a a'>2 <a a'>\breathe
\break
	r1 <g g'>2 <g g'>
	r1 <f f'>2 <f f'>
	r1 <e e'>2 <e e'>
	r1 <d d'>2 <d d'>
	r1 <c c'>2 <c c'>
	r1 <b b'>2 <b b'>
	r1 <a a'>2 <a a'>
	r1 <g g'>2 <g g'>
\ottava #1
	<g' c> \breve
	<c>
	<e g>
	<g>
\ottava #2
	<c e>
	<e g>
	c'(s)
	s s s1 s1

}

lower = \relative c, {
  \clef bass
  \key c \major
 	<c e>\breve
	<e g>
	<g c>
	<c e>

	<c, e>
	<e g>
	<g c>
	<c e>

	<c, e>
	<e g>
	<g c>
	<c e>
	<e g>
	<g c>
	<c e>

	<c,, e>
	<e g>
	<g c>
	<c e>
\break
	<c, e>
	<e g>
	<g c>
	<c e>
	<e g>
	<g c>
	\clef treble
	<c e>
	e
	<g c>
	c

	\clef bass
	<c,,, e>
	<e g>
	<g c>
	<c e>
	r
	<e g>
	<g c>
	\clef treble
	<c e>
	<e g>
	<g c>
	<c e>
	e
	r1 <f, f'>2 <f f'>
	r1 <e e'>2 <e e'>
	r1 <d d'>2 <d d'>
	r1 <c c'>2 <c c'>
	r1 <b b'>2 <b b'>
	r1 <a a'>2 <a a'>
	r1 <g g'>2 <g g'>
	r1 <a a'>2 <a a'>
	r1 <b b'>2 <b b'>
	r1 <c c'>2 <c c'> ~\once \hideNotes <c c'>\breve
\bar "|."
	
}

\score {
	\header {	piece ="with pedal throughout."}
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {}
  \midi { }
}


