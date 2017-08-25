\version "2.18.2"
#(set-global-staff-size 24)

\paper{
  paper-width = 8.5\in
  left-margin = 2.25\cm
  right-margin = 1.75\cm
  top-margin = 3\cm
  bottom-margin = 2.5\cm
%  ragged-last-bottom = ##t
  indent = 0.0\cm
}

\header{
title ="Opening"
subtitle = "For Classical Guitar"
tagline=""
composer = "Philip Glass"
arranger = "Brian Ellis"
}


\score{
\midi {}
\layout{}
\new Voice \with {
  \remove "Forbid_line_break_engraver"
} \relative c'{
	<<{
	\times 2/3 { e'8 g e} \times 2/3 { g8 e g} 
		\times 2/3 { e8 g e} \times 2/3 { g8 e g} 
	\times 2/3 { e8 g e} \times 2/3 { g8 e g} 
		\times 2/3 { e8 g e} \times 2/3 { g8 e g} 
	
	}\\{
	e,,1 ~e
	
	}\\{
	\shiftOff
	g'8 b g b g b g b
	g8 b g b g b g b
	
	}>>
}
}