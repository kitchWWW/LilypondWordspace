\version "2.18.2"
		
#(set-default-paper-size "letter" 'portrait)
#(set-global-staff-size 20)

\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  ragged-bottom = ##f

}


\header{
title ="Phasing"
composer = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout {}

\new Staff
	\relative c'' {
\time 12/8
\tempo 4 = 150
\key e \major
gis'16 b cis e cis b 
gis b cis e cis b 
gis b cis e cis b 
gis b cis e cis b 

}

}