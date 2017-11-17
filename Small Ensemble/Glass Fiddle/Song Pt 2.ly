\version "2.18.2"
	
\include "parts/fluteSongTwo.ly"
\include "parts/violinOneSongTwo.ly"
\include "parts/violinTwoSongTwo.ly"
\include "parts/violaSongTwo.ly"
\include "parts/celloSongTwo.ly"
\include "parts/vibesSongTwo.ly"
\include "parts/guitarSongTwo.ly"


#(set-global-staff-size 22)
	
\header{
piece ="Song, Pt. 2"
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
	\fluteSongTwo
}
%=========================================================================
\new Staff \with {
  instrumentName = #"Violin 1"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
\violinOneSongTwo

}
%=========================================================================

\new Staff \with {
  instrumentName = #"Violin 2"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	
	\violinTwoSongTwo
}

%=========================================================================

\new Staff \with {
  instrumentName = #"Viola"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	\violaSongTwo

}

%=========================================================================

\new Staff \with {
  instrumentName = #"Cello"
  shortInstrumentName = #""
  midiInstrument = "Cello"
}{
	\celloSongTwo

}

%=========================================================================

\new Staff \with {
  instrumentName = #"Vibes"
  shortInstrumentName = #""
  midiInstrument = "Vibraphone"
}{
\vibesSongTwo

}
%=========================================================================

\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
\guitarSongTwo

}



>>
\midi {}
\layout{}
}