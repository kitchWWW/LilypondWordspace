

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  title = "Wind Mixture"
  subtitle = ""
  subsubtitle = "for solo oboe"
  composer = "Brian Ellis"
  tagline = ""
}
  \paper{
  indent = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}



  \layout {
    ragged-right = ##f
    \context {
      \Staff
      % \omit TimeSignature
    }
  }


\markup{
	\column{
		"Notes:"
		"1. +tmb.: play with different timbre than preceding note"
		"2. ~ttr: timbral trill"
		"3. wind noise: blow through any hole / something to make a 'wosssssssh'"
		"4. key clicks: key clicks"
		" "
		" "
	}
}

\score {

	\relative c' {
		\tempo "lush, like a Miyazaki film" 4 = 80 - 90 
		
		<<{
			\xNotesOn
		b'1 ^\< ^\markup{\italic\column{" " "wind noise"}} ~ 
		b2^\> s2^\!
			}\\{
				\xNotesOn
				s1

\override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { e,16\<_\markup{\italic"key clicks"} [e e e e e e e] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { e 16\> [e e e e e e e \! ] }

		}>>

\time 1/4
r4 \fermata
\break
\time 4/4	
		\grace {d16\mf  (fis} d'2)
		\grace {d,16 (fis} d'4)
		\grace {d,16 (fis} d'4)
		\grace {d,16 (fis} e'2)
		fis8. (d16 ~ d4
		\times 2/3{cis2 a g ~ } g2.)
		r4
\break
		\xNotesOn
		r4 b2.\<^\markup{\italic"wind noise"} ~ b2\> r4\!
		\xNotesOff
		

		g8\mp (a 
		c2)
		\grace {g16 (a c} d4)
		\grace {g,16\< (a c d} e4)
		\times 2/3{g,2 f'2\f f^"+tmb."}

\break		
		<<{
		
		f1^\markup{\italic"~ttr"}\> r2\!

		\xNotesOn
		b,2^\<^\markup{\italic"wind noise"} ~ b1\> ~ b2 b2\rest\!

			}\\{
				\xNotesOn
				s1
				e,16_\markup{\italic"unvoiced, keep trilling key clicks"} e e e e e e e 
		\override Beam.grow-direction = #LEFT
		  \featherDurations 1
		  { e 16\> [e e e e e e e \! ] }
		}>>

\break

		e'4. \mf ( \times 2/3 {b16 a gis} fis'4. \times 2/3 {b,16 a gis}
		fis'4. \times 2/3 {b,16 a gis} gis'4. \times 2/3 {b,16 a gis}
		gis'2 ~ gis8 \times 2/3 {b,16 a gis}
		g'8-. ) r8
		\break
		\times 2/3{gis2\mp\< gis^"+tmb." gis^"+tmb."}
		fis2\f^\markup{\italic"~ttr"} 




		<<{
		gis2^\markup{\italic"~ttr"} ~ gis1^\markup{\italic"~ttr"}\> r2\! b,4\rest
		\xNotesOn
		b4^\markup{\italic\column{"wind noise," "short puffs"}}
		\time 3/4
		b4\rest
		b4
		b4\rest 

			}\\{
				s2
				\xNotesOn
				s1
		\override Beam.grow-direction = #LEFT
		  \featherDurations 1
		  { e,16\>_\markup{\italic"unvoiced, keep trilling key clicks"} [e e e e e e e \! ] }
		}>>

		\break
		\time 6/8

		c'4.\mf \times 6/7 {g16 f e d e f g}
		c4. \times 6/9 {g16 f e d c d e f g}
		\break
		d'4. \times 6/11 {g,16 f e d c b c d e f g}
		e'4 c8 \times 6/7 {c16 b a g a b c}
		\time 3/4
		b4\> g f
		\time 4/4
		\break
		\times 2/3 {g2\mp f'^"+tmb." f^"+tmb."}
		r4_\markup{\italic"rit..."}
		g,4 f'^"+tmb." f^"+tmb."
		r4
		g,4 f'^"+tmb." f^"+tmb."


\time 1/4
r4
\break
\time 4/4
		<<{
			s2
			\xNotesOn
		b,2 ^\< ^\markup{\italic\column{" " "wind noise"}} ~ 
		b1^\> ~ b2^\!
			}\\{
				\xNotesOn

\override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { e,16\<_\markup{\italic"key clicks"} [e e e e e e e] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { e 16\> [e e e e e e e \! ] }
		}>>
r2
\break

d'4._\markup{\italic"a tempo"}\p\< e8 fis16\mp\> d8.  cis4 a4 g4 ~ g2^\markup{\italic"~ttr"}\p
r4 g4\pp ~ g2^\markup{\italic"~ttr"}
r4 
			\xNotesOn
e16_\markup{\italic"key clicks"}\> _[e e e e e e e\!] r4
\xNotesOff

\break

<<{
			s2
			\xNotesOn
		b'2 ^\< ^\markup{\italic\column{" " "wind noise"}} ~ 
		b1^\> ~ b2^\!
			}\\{
				\xNotesOn

\override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { e,16\<_\markup{\italic"key clicks"} [e e e e e e e] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { e 16\> [e e e e e e e \! ] }
		}>>
r2
\bar "|."
	}
	\layout{}
	\midi{}
}