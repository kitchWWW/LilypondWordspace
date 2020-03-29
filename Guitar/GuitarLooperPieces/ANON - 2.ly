\version "2.18.0"

glissSkip = {
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}

glissSkipStopA = {
  \revert NoteColumn.glissando-skip
}

glissSkipStopB = {
  \undo \hide NoteHead
	  \revert NoteHead.no-ledgers
}

\header {
	dedication = \markup{\column{\italic"For anyone who would like it" " "}}
	title = "2."
	subtitle = ""
	subsubtitle = "For Classical Guitar and Live Electronics"
	composer = "<REMOVED>"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1\cm
  right-margin = 1\cm
  top-margin = 1.5\cm
  bottom-margin = 1\cm
  ragged-last-bottom = ##f
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c''{
\tempo "Unmetered"
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
	\clef "treble"
\omit Score.BarLine
\override Staff.TimeSignature #'stencil = ##f 

	e,,1:32\f\> _\markup{\italic{"nail sustain"}}
	~e:\mf ~e:^\markup{"+"} ~e: ~e: ~e:~

\break

	e1:32 \glissando
	e'2:\6 \glissando c: ^\markup{"+"}
	\glissando d4: \glissando g,2: \glissando a4: \glissando
	cis2: \glissando dis4: \glissando fis,4:\glissando
	a2: \glissando f!2:	
	(e1:) \breathe
	e2_\markup{\italic{"natural"}}
	s2
	r1
\break

	\override Stem.stencil = ##f
	c'''4^\markup{\italic{"like flecks of rain"}}
	 ees b^\markup{"+"} d bes cis a f aes e g fis
	\revert Stem.stencil

\break
\time 3/4
	g8 [aes
	\glissando \glissSkip
	e  \glissSkipStopA b' ] \glissSkipStopB
	r4\fermata

\time 4/4
	g8 [ 	\glissando \glissSkip
	 a
	f b
	e,  \glissSkipStopA b' ] \glissSkipStopB
	r4\fermata


e,8 ^\markup{"+"} [ 	\glissando \glissSkip
	 g
	d a'
	c,  \glissSkipStopA b' ] \glissSkipStopB
	r4\fermata


\undo \omit Score.BarLine

\bar ".|:"
\hide NoteHead
e,8 _\markup{\italic{"accel."}} ^\markup{\italic{   \column {
 "rep. as desired w/ any" "starting pitch & length"}}}   [ 	\glissando \glissSkip
	 g
	d a'
	c,  \glissSkipStopA b' ] \glissSkipStopB
	r4\fermata
\bar ":|."


	\time 1/4	
	a8 \< ^\markup{"+"} \omit Score.BarLine
    ais
	aes b 
	g c
	ges cis
	f, d'
	e, dis' \ff\! ^\markup{"+"}
        \once \override NoteHead #'hide-accidental = #'#f

		ees32[^\markup{\italic{"quick but uneven"}}
	 ees ees ees ees ees ees ees e e e e e^\markup{\italic{"rit."}} e e e ]
	
	r1
\break
\time 4/4
	d,1:\4\pp\< _\markup{\italic{"nail sustain"}} \glissando
	fis,2: \glissando b:\mp \glissando ^\markup{"+"} 
	ais2.: \glissando g4: \glissando fis2: r4 
		fis4_\markup{\italic{"natural"}}
\break
\override Stem.stencil = ##f
\time 1/4
	g4 (e) aes (f) a (cis)
\revert Stem.stencil
r4
g,4
~g2:
\time 1/4
r4
\time 4/4
\break
	bes''8 d r4\fermata b!8 ees->
r2
	\revert Stem.stencil
	c,,1:^\markup{"+"}\pp\<_\markup{\italic{"nail sustain"}} ~c:\f\>  ~c:\pp

\undo \omit Score.BarLine

\bar "|."

}
}
