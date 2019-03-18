\version "2.18.0"
#(set-global-staff-size 24)


\header {
	title = "Fur Alina"
	subtitle = "Arranged for Guitar"
	subsubtitle = ""
	composer = "Arvo Part"
	arranger = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  print-all-headers = ##t
}

\score {
	\midi {}
	\header {
	title = "   "
	subtitle = ""
	composer = ""
	arranger = ""
	tagline = ""
	piece = "          "}



	\new Staff

\transpose b b {
 \relative c' {
	\numericTimeSignature
	\hide Staff.TimeSignature 
\hide Stem
	\clef "treble_8"
	\key b \minor
	<<{
	\time 5/4
	cis4 d1
	\time 6/4
	e4 fis fis1
	\time 7/4
	e4 d cis b1
	\time 8/4
	fis'4 e fis d e1
	\time 9/4
	d4 fis b cis b d,1
	\time 10/4
	e4 d b cis fis d e1
	\time 11/4
	fis4 d' cis b b, fis' g a1
	\time 10/4
	d,4 e b cis d cis b1
	\time 9/4
	a'4 g a b, cis fis1
	\time 8/4
	g4 d e fis fis1
	\time 7/4
	d4 b d, e1
	\time 6/4
	b4 fis' d'1
	\time 5/4
	b4 d,1
	\time 6/4
	b'4 cis b1
	
	
}\\{
	b4 b1
	d4 d d1
	d4 b b fis1
	d'4 d d b d1
	b4 d fis b fis b,1
	d4 b fis b d b d1
	d4 b' b fis fis, d' fis fis1
	b,4 d fis, b b b fis1
	fis'4 fis fis fis, b d1
	fis4 b, d d cis1
	b4 fis b, d1
	fis,4 d' b'1
	fis4 b,1
	fis'4 b fis1
	

}>>
\bar "|."

} 

}

\layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \hide Stem
    }
     }
}
