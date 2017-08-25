\version "4.216.4"
\header{
title ="Danza"
subtitle="Duet for Oboe and Classical Guitar"
composer = "Brian Ellis"
tagline =""
}

%#(set-global-staff-size 24)

\paper{
  left-margin = 2.5\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-page-number = ##f
%	#(set-paper-size "letter" 'landscape)
}


\score{
\midi {}
\layout{}
%\unfoldRepeats {
\new StaffGroup

<<
\new Staff \with {
  instrumentName = #"Oboe"
  shortInstrumentName = #"ob."
  midiInstrument = "Oboe"
}{
	
	\relative c' {
	\key b \major
	\tempo 4 = 100
	\time 2/4
	R2*6 r16 fis16 (gis ais cis8) b32 (ais gis16
	fis4.) ais8
	gis16 fis8. ais8 dis
	r16 gis, b gis cis8. b16
	ais16 gis8. cis8 e8
	r16 e fis e g8. fis16

	e16 dis8. cis8 b32 ais gis16
	fis4.) ais8
	gis16 fis8. ais8 dis
	r16 gis, b gis cis8. b16
	ais16 gis8. cis8 e8
	r16 e fis e g8. fis16
	
	b,16 cis dis8 e8. dis16
	cis16 dis e8 fis8. e16
	r16 dis e r f4
	r16 dis e r fis4
	r16 dis e r fisis4
	
	b,4. ais8

	b2
	dis8. fis16~fis4~fis4
	r16 fis16 e32 dis32 cis16

	
	\key b \minor
	b4. r16 e,
	fis8 gis16 gis r a g e
	cis'4. r16 g
	cis8 d16 d r e d b
	a8 b16 b r cis b a
	d8 e16 e r fis e cis d2
	
	}	
}

\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #"Gtr."
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c {
\key b \major
\clef "treble_8"
	\time 2/4
	b8 fis'16 bes-. r dis bes8-.
	fis, fis'16 bes-. r dis bes8-.
	ais,8 e'16 gis-. r cis gis8-.
	ais,8 e'16 gis-. r cis gis8-.
	b,8 e16 g-- r cis g8
	b,8 e16 g-- r b g8\fermata
	R2
	b,8. <fis' bes>16 r dis'16 r <fis, bes>
	fis,8. <fis' bes>16 r dis'16 r <fis, bes>
	e,8. <e' gis>16 r cis' r <e, gis>
	fis,8. <e' gis>16 r cis' r <e, gis>
	g,8. <e' gis>16 r cis' r <e, gis>
	
	fis,8. <e' ais>16 r fis' <fis dis> <fis cis>
	
	b,,8. <fis' bes>16 r dis'16 r <fis, bes>
	fis,8. <fis' bes>16 r dis'16 r <fis, bes>
	e,8. <e' gis>16 r cis' r <e, gis>
	fis,8. <e' gis>16 r cis' r <e, gis>
	g,8. <e' gis>16 r cis' r <e, gis>
	
	gis,8. <d' gis>16 r b' r <d, gis>
	e,8. <b' d gis>16 r b' r <d, gis>
	a8. b16 r e f e
	a,8. b16 r e fis e
	a,8. b16 r e fisis e

	b8. <fis' bes>16 r dis'16 r <fis, bes>

	<<{r8. <fis b cis>16 ~ <fis b cis>4 ~ <fis b cis>2
		}\\{fis,8. r16 r4
		}\\{s2r4 r16 \xNotesOn b'16 b b \xNotesOff
		}\\{b,2~b
	}>>
	<<{\harmonicsOn
		b'8.^"a harm. XX" e16^~e8.
		\harmonicsOff e,,16->}\\{r4 r16
		\xNotesOn
		%b16_"nail on top" b b
		\xNotesOff
	}>>

	\key b \minor
	b'8 cis16 cis-> r d  cis a->
	b4. r16 a
	e'8 fis16 fis r g fis d
	e,8. g'16 b8 cis16 cis r d cis a 
	<<{cis8 d16 d r e d b}\\{b4}>>
	d8 e16 e r fis e b <d fis a, d,>8.
	}
}
>>
%}


}