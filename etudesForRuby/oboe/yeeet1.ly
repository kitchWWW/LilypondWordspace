

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
		"4. key clicks: make percussive noise by clicking the keys without playing on the reed"
		" "
		" "
	}
}

\score {

	\relative c' {
		\tempo "lush, like a Miyazaki film" 4 = 80 - 90 
		
		<<{

			\xNotesOn
				s1

		  \override Hairpin.circled-tip = ##t

\override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { f'16^\<^\markup{\column{" " "key clicks"}} [f f f f f f f] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { f 16\mp\> [f f f f f f f \! ] }

			}\\{
		  \override Hairpin.circled-tip = ##t

			\xNotesOn
		b,1 _\< ^\markup{\column{" " "wind noise"}} ~ 
		b2\mp\> s2^\!				
		}>>

\time 1/4
r4 \fermata
\break
\time 4/4	
		\grace {d,16\mf  (fis} d'2)
		\grace {d,16 (fis} d'4)
		\grace {d,16 (fis} d'4)
		\grace {d,16 (fis} e'2)
		fis8. (d16 ~ d4
		\times 2/3{cis2 a4~ }
		\times 2/3{a4 g2 ~}  g2.)
		r4
\break
		\xNotesOn
				  \override Hairpin.circled-tip = ##t

		r4 b2.\<^\markup{"wind noise"} ~ b2\mf\> r4\!
		\xNotesOff
		
		\undo 		  \override Hairpin.circled-tip = ##t


		g8\mp (a 
		c2)
		\grace {g16 (a c} d4)
		\grace {g,16\< (a c d} e4)
		\times 2/3{g,2 f'4 ~}
		\times 2/3{f4\f f2^"+tmb."}

\break		
		<<{
		  \override Hairpin.circled-tip = ##t

		\xNotesOn
				s1
				f16^\markup{\column{"key clicks emerge" "as trill decrescendos"}} f f f f f f f 
		\override Beam.grow-direction = #LEFT
		  \featherDurations 1
		  { f 16^\> [f f f f f f f \! ] }


		
			}\\{


				  \override Hairpin.circled-tip = ##t

		f1^\markup{"~ttr"}\> s2\!

		\xNotesOn
		b,2_\<_\markup{"wind noise"} ~ b1\mp_\> ~ b2 b2\rest\!

				
		}>>

\break

		e4. \mf ( \times 2/3 {b16 a gis} fis'4. \times 2/3 {b,16 a gis}
		fis'4. \times 2/3 {b,16 a gis} gis'4. \times 2/3 {b,16 a gis}
		gis'2 ~ gis8 \times 2/3 {b,16 a gis}
		g'8-. ) r8
		\break
		\times 2/3{gis2\mp\< gis4^"+tmb."~}
		\times 2/3{gis4 gis2^"+tmb."}
		fis2\f^\markup{"~ttr"} 




		<<{
					  \override Hairpin.circled-tip = ##t

		gis2^\markup{"~ttr"} ~ gis1^\markup{"~ttr"}\> s2\! b,4\rest
		\xNotesOn
		b4^\markup{\column{"wind noise," "short puffs"}}
		\time 3/4
		b4\rest
		b4
		b4\rest 

			}\\{
				s2
				\xNotesOn
				s1
		\override Beam.grow-direction = #LEFT
				  \override Hairpin.circled-tip = ##t

		  \featherDurations 1
		  { g'16\>^\markup{\column{"key clicks emerge" "as trill decrescendos"}} [g g g g g g g \! ] }
		}>>

		\break
		\time 6/8

		c,4.\(\mf \times 6/7 {g16 f e d e f g}
		c4. \times 6/9 {g16 f e d c d e f g}
		\break
		d'4. \times 6/11 {g,16 f e d c b c d e f g}
		e'4 c8 \times 6/7 {c16 b a g a b c}
		\time 3/4
		b4\>\) g f
		\time 4/4
		\break
		\times 2/3 {g2\mp f'4^"+tmb." ~ }
		\times 2/3{f4 f2^"+tmb."}
		r4^\markup{\italic"rit..."}
		g,4 f'^"+tmb." f^"+tmb."
		r4
		g,4 f'^"+tmb." f^"+tmb."


\time 1/4
r4
\break
\time 4/4
		<<{
					  \override Hairpin.circled-tip = ##t

			s2
			\xNotesOn
		b,2 ^\< ^\markup{\column{" " "wind noise"}} ~ 
		b1^\mp\> ~ b2^\!
			}\\{
				\xNotesOn
		  \override Hairpin.circled-tip = ##t

\override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { e,16\<^\markup{"key clicks"} [e e e e e e e] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { e 16\mp\> [e e e e e e e \! ] }
		}>>
r2
\break

d'4.^\markup{\italic"a tempo"}\p\< e8 fis16\mp\> d8.  cis4 a4 g4 ~ g2^\markup{"~ttr"}\p
r4 g4\pp ~ g2^\markup{"~ttr"}
r4 
			\xNotesOn
					  \override Hairpin.circled-tip = ##t

e16^\markup{"key clicks"}\p\> _[e e e e e e e\!] r4
\xNotesOff

\break

<<{
			  \override Hairpin.circled-tip = ##t

			s2
			\xNotesOn
		b'2 ^\< ^\markup{\column{" " "wind noise"}} ~ 
		b1^\pp\> ~ b2^\!
			}\\{
				\xNotesOn
		  \override Hairpin.circled-tip = ##t

\override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { e,16\<^\markup{"key clicks"} [e e e e e e e] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { e 16\pp\> [e e e e e e e \! ] }
		}>>
r2
\bar "|."
	}
	\layout{}
	\midi{}
}