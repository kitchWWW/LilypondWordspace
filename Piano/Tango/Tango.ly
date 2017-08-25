\version "2.18.0"

#(set-global-staff-size 22)

\header {
	title = "Piano Composition"
	subtitle = ""
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 2.5\cm
  bottom-margin = 2.5\cm
%  ragged-last-bottom = ##t
  indent = 2.0\cm
}


upper = \relative c' {
  \clef treble
  \key c \major

  \time 2/4
	\tempo 4 = 80
	\partial 8 c8
	g'8.\p f16 g8-. e-.	
	f8.^"sempre" e16 f8 e	
	d8. c16 f8 d
	d8. f16 g16 f e d
	c4\< c8 c
	f8.\mf e16 f8 f
	d8. c16 d8 d
	c8.\< e16 c8 f
	\bar "||"
	g4.\f a8
	b4 d c d b c a8. b16 c8 d d2 b g4. c,8
	\bar "||"
	g'8.\p f16 g8-. e-.	
	f8. e16 f8 e	
	d8. c16 f8 d
	d8. f16 g16 f e d
	c4\< c8 c
	f8.\mf e16 f8 f
	d8. c16 d8 d
	c8.\< e16 c8 f
	g8. f16 g8 d
	c2\f
}

lower = \relative c {
  \clef bass
  \key c \major
 	r8
	c4 e8-. g-.
	c,4 f8 g
	f4 d8 f
	d4 f8 g
	r8. f16 f4
	f4 e8 c
	g'4 f8 d
	c4 e8 g
	\repeat percent 8 { b,16 (d f d) b (d f d) }
	c4 e8-. g-.
	c,4 f8 g
	f4 d8 f
	d4 f8 g
	r8. f16 f4
	f4 e8 c
	g'4 f8 d
	c4 e8 g
	f4 g8 f
	e8. d16 c4
	\bar "|."
}

\score {
	\header {	piece ="Tango"}
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {}
  \midi { }
}


