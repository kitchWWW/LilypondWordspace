\version "2.18.2"

\include "parts/guitar1.ly"
\include "parts/guitar2.ly"
\include "parts/guitar3.ly"
\include "parts/guitar4.ly"


%#(set-global-staff-size 10)


\paper{
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-all-headers = ##t
}

\header { tagline = ""}

\score {
\header{
title ="Chaconne"
subtitle="Guitar 1"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	\layout {}
	\new Staff \relative c'{\guitarA}
}

\pageBreak


\score {
\header{
title ="Chaconne"
subtitle="Guitar 1"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	\layout {}
	\new Staff \relative c'{\guitarB}
}
\pageBreak


\score {
\header{
title ="Chaconne"
subtitle="Guitar 3"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	\layout {}
	\new Staff \relative c'{\guitarC}
}
\pageBreak



\score {
\header{
title ="Chaconne"
subtitle="Guitar 1"
tagline=""
composer = "Brian Ellis"
}
	%\midi {}
	\layout {}
	\new Staff \relative c'{\guitarD}
}
\pageBreak









