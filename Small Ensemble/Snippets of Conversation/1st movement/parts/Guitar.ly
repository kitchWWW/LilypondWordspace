
Guitar = {
	\set Score.markFormatter = #format-mark-box-alphabet
	\clef "treble_8"	
	R1*14
	\clef "treble_8"
	\tempo 4 = 100
	<<{
	\times 2/3 {e'8 c e} \times 2/3 {c e c}
		\times 2/3 {e8 c e} \times 2/3 {c e c}
		\times 2/3 {e8 c e} \times 2/3 {c e c}
		\times 2/3 {e8 c e} \times 2/3 {c e c}
	\times 2/3 {e8 c e} \times 2/3 {c e c}
		\times 2/3 {e8 c e} \times 2/3 {c e c}
		\times 2/3 {e8 c e} \times 2/3 {c e c}
		\times 2/3 {e8 c e} \times 2/3 {c e c}
	\times 2/3 {e8 c e} \times 2/3 {c e c}	
		\times 2/3 {e8 c e} \times 2/3 {c e c}
		\times 2/3 {e8 c e} \times 2/3 {c e c}
		\times 2/3 {e8 c e} \times 2/3 {c e c}
	\times 2/3 {e8 d e} \times 2/3 {d e d}
		\times 2/3 {e8 d e} \times 2/3 {d e d}
		\times 2/3 {e8 d e} \times 2/3 {d e d}
		\times 2/3 {e8 d e} \times 2/3 {d e d}
	\times 2/3 {f8 d f} \times 2/3 {d f d}
		\times 2/3 {f8 d f} \times 2/3 {d f d}
		\times 2/3 {f8 d f} \times 2/3 {d f d}
		\times 2/3 {f8 d f} \times 2/3 {d f d}
	\times 2/3 {e8 b e} \times 2/3 {b e b}
		\times 2/3 {e8 b e} \times 2/3 {b e b}
		\times 2/3 {e8 b e} \times 2/3 {b e b}
		\times 2/3 {e8 b e} \times 2/3 {b e b}
	}\\{
	\shiftOff
	a,8 a' e a e a e a e a e a e a e a
	b, g' e g e g e g e g e g e g e g 
	c, g' e g e g e g e g e g e g e g 
	c, g' f g f g f g f g f g f g f g 
	f a f a f a f a a, a' f a f a f a 
	e,  gis' e gis e gis e gis e gis e gis e gis e gis    
	}>>
	\bar ":|."
	\key e \major
	<<{
	\times 2/3 {fis'8 dis fis} \times 2/3 {dis fis dis}
		\times 2/3 {fis8 dis fis} \times 2/3 {dis fis dis}
		\times 2/3 {fis8 dis fis} \times 2/3 {dis fis dis}
		\times 2/3 {fis8 dis fis} \times 2/3 {dis fis dis}
	\times 2/3 {gis8 e gis} \times 2/3 {e gis e}
		\times 2/3 {gis8 e gis} \times 2/3 {e gis e}
		\times 2/3 {gis8 e gis} \times 2/3 {e gis e}
		\times 2/3 {gis8 e gis} \times 2/3 {e gis e}
	\times 2/3 {ais8 g ais} \times 2/3 {g ais g}
		\times 2/3 {ais8 g ais} \times 2/3 {g ais g}
		\times 2/3 {ais8 g ais} \times 2/3 {g ais g}
		\times 2/3 {ais8 g ais} \times 2/3 {g ais g}
	\times 2/3 {b gis b} \times 2/3 {gis b gis}
		\times 2/3 {b gis b} \times 2/3 {gis b gis}
		\times 2/3 {b gis b} \times 2/3 {gis b gis}
		\times 2/3 {b gis b} \times 2/3 {gis b gis}
	\times 2/3 {g dis g} \times 2/3 {dis g dis}
		\times 2/3 {g dis g} \times 2/3 {dis g dis}
		\times 2/3 {g dis g} \times 2/3 {dis g dis}
		\times 2/3 {g dis g} \times 2/3 {dis g dis}
	\times 2/3 {g cis, g'} \times 2/3 {cis, g' cis,}
		\times 2/3 {g' cis, g'} \times 2/3 {cis, g' cis,}
		\times 2/3 {g' cis, g'} \times 2/3 {cis, g' cis,}
		\times 2/3 {g' cis, g'} \times 2/3 {cis, g' cis,}
			}\\{
	\shiftOff 
		b, fis' b, fis' b,fis' b,fis' b,fis' b,fis' b,fis' b, fis'
		cis gis' cis, gis' cis, gis' cis, gis'
			cis, gis' cis, gis' cis, gis' cis, gis'
		dis ais' dis, ais' dis, ais' dis, ais'
			 dis, ais' dis, ais' dis, ais' dis, ais'
		e, gis' e gis e gis e gis e gis e gis e gis e gis 
		c, g' c, g' c, g' c, g' c, g' c, g' c, g' c, g'
		ais, f' ais, f' ais, f' ais, f' ais, f' ais, f' ais, f' ais, f' 
	}>>
	\bar ":|."


	
}
	

\score {
\header{
title ="Snippets of Conversation"
subtitle="Guitar"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	%\layout {}
	\new Staff \relative c{\Guitar}
}

\pageBreak


