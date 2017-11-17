\version "2.18.2"
\include "parts/fluteSongOne.ly"
\include "parts/violinOneSongOne.ly"
\include "parts/violinTwoSongOne.ly"
\include "parts/violaSongOne.ly"
\include "parts/celloSongOne.ly"
\include "parts/vibesSongOne.ly"
\include "parts/guitarSongOne.ly"

#(set-global-staff-size 22)
	
\header{
piece ="Song, Pt. 1"
composer = "Brian Ellis"
tagline =""
}
\score{

\new StaffGroup <<
%=========================================================================
\new Staff \with {
  instrumentName = #"Flute"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\fluteSongOne
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\violinOneSongOne	
}
%=========================================================================

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	
	\violinTwoSongOne
}

%=========================================================================

\new Staff \with {
  instrumentName = #"Viola"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\violaSongOne
}

%=========================================================================

\new Staff \with {
  instrumentName = #"Cello"
  shortInstrumentName = #""
  midiInstrument = "Cello"
}{
	
\celloSongOne
}

%=========================================================================

\new Staff \with {
  instrumentName = #"Vibes"
  shortInstrumentName = #""
  midiInstrument = "Vibraphone"
}{
	\vibesSongOne
}


%=========================================================================

\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #""
  midiInstrument = "Vibraphone"
}{
	\guitarSongOne	
}

>>
\midi {}
\layout{}
}