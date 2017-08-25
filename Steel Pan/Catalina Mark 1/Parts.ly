\version "2.18.2"
	


date = \markup { "Engraved on " #(strftime "%m-%d-%Y" (localtime (current-time)))}

\header{
tagline = " "
}



\paper{
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-all-headers = ##t
  print-page-number = ##f
}

\include "parts/Tenor.ly"
\include "parts/Double.ly"
\include "parts/Guitar.ly"
\include "parts/FourBass.ly"
\include "parts/SixBass.ly"
\pageBreak

#(set-global-staff-size 18)

\relative c { a' }
