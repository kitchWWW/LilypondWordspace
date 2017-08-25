\version "2.18.2"


melody = \relative c'' {
  \clef treble
  \key a \major
  \time 4/4

	cis4 cis2 cis8 cis
	d2. d8 d
	e8 e4. ~ e8 e e e
	
}

text = \lyricmode {
	I knew what was coming,
	I pre- dict- ed it in a dream,
	where the ceiling shattered,
	and crystals fell around me.
}

guitar = \relative c'' {
  \clef treble
  \key a \major
  \time 4/4

  a4 b c d
}

\score {
	
  <<
    \new Voice = "mel" { \autoBeamOff \melody }
    \new Lyrics \lyricsto mel \text
    \new Staff \guitar
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { }
}
