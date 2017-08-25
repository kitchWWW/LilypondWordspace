\header{
title ="La Competència"
subtitle="For Classical Guitar"
tagline=""
composer = "Brian Ellis"
}

base = {
\times 2/3 {fis8 fis fis}
\times 2/3 {fis8 fis fis}
\times 2/3 {fis8 fis fis}
}

main = {
<<{
	fis4 fis-. fis-. e d-. e-. fis-. fis-- fis e e4\fermata e8 fis 
	g4 g g g g \grace{a16} g4 e4 e fis8 e d4 d e8 d cis2.
	g'4 (fis) d8 (e\fermata)
}\\{
	b,8 b' fis4 fis a,8 a' e4 e4 s <d' b g>2 s4 <cis b fis>2
	d,8 b' cis4 cis e,8 a cis4 cis a,8 a' e4 e g8 b g4 g <fis b>2.
}>>
}

second = {
	fis'8 (e) cis (b) ais (g) fis (e fis4) <fis fis,>4 <fis fis,>
	<fis fis,>2 
<<{
	g'2 fis4 e2 d4 cis2 ais4 g2 f4 fis2.
}\\{
	\times 2/3 {fis,8 fis fis}
	\times 2/3 {fis8 fis fis}
	\times 2/3 {fis8 fis fis}
	\base \base \base \base
}>>
 
<fis cis' fis a cis fis>8-. r8 r2

g''4 fis d8 (e) <e cis gis>4. e8 fis g

}

\score{
\midi {}
\relative c''{
	\time 3/4
	\key d \major
	\main
	\second
	
}
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 16)
    }
}
}
