fluteSongOne = \relative c'' {
\compressFullBarRests
	\key c \major
	\clef "treble"
\mark \default

\tempo "lyrical"
	\time 5/4
	R1*5/4*6
	R1*5/4*6

\mark \default
\tempo "mechanical"

	\time 7/8
	c8 [g e] r c'[ a g]
	d' [aes f] r d'[ bes aes]
	c [g e] r c' [a g]
	b[ gis e] r d'[ c b]
	a[ g f] r a [g f]
	aes[ g f] r aes[ g f]

\mark \default
	r2 c'8[ a g]
	r2 d'8[ bes aes]
	r2 c8 [a g]
	b8[ gis e gis] r4.
	a8[ g f g] r4.
	aes8[ g f] g r4.

\mark \default

\tempo "lyrical"
	\time 5/4
	R1*5/4*6
	R1*5/4*6

\bar "||"
	}	


