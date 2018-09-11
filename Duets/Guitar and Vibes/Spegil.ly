\version "2.18.2"
	
%#(set-global-staff-size 22)
	
\header{
title ="Spiegel im Spiegel"
subtitle = "For Vibraphone and Guitar"
composer = "Arvo Part"
arranger = "Brian Ellis"
tagline =""
}
\score{
\midi {}
\layout{

\context {
      \Staff
      \hide Stem
    }
}

<<
	

\new Staff \with {
  instrumentName = #"Vibraphone"
  shortInstrumentName = #""
  midiInstrument = "Violin"
}{
	
	\relative c' {
	\time 6/4
	\tempo 4 = 80
	\key d \major
\mark \default
	R1*6/4*3
\mark \default
	e1. fis1. ~ fis ~ fis2. r2.
\mark \default
	g1. fis1. ~ fis ~ fis2. r2.
\mark \default
	d1. e fis1. ~ fis ~ fis2. r2.
\mark \default
	a1. g fis1. ~ fis ~ fis2. r2.
\mark \default
	e1. d cis fis1. ~ fis ~ fis2. r2.
\mark \default
	g1. a b fis1. ~ fis ~ fis2. r2.
\mark \default
	b,1. cis d e fis1. ~ fis ~ fis2. r2.
\mark \default
	cis'1. b a g fis1. ~ fis ~ fis2. r2.
\mark \default
	e1. d cis b a fis'1. ~ fis ~ fis2. r2.
\mark \default
	g1. a b cis d fis,1. ~ fis ~ fis2. r2.
\mark \default
	g,1. a b cis d e fis1. ~ fis ~ fis2. r2.
\mark \default
	e'1. d cis b a g fis1. ~ fis ~ fis2. r2.
\mark \default
	e1. d cis b a g fis fis'1. ~ fis ~ fis2. r2.
\mark \default
	g1. a b cis d e fis fis,1. ~ fis ~ fis2. r2.
\mark \default
	e,1. fis g a b cis d e fis1. ~ fis ~ fis2. r2.
\mark \default
	g'1. fis e d cis b a g fis1. ~ fis ~ fis2. r2.
\mark \default
	fis1. ~ fis ~ fis2. r2.
	
	}	
}


 %===================================================================
\new Staff \with {
  instrumentName = #"Guitar"
  shortInstrumentName = #""
  midiInstrument = "Acoustic Guitar (nylon)"
}{
	\relative c'' {
	\time 6/4
	\tempo 4 = 80
	\key d \major


<<{
%%{
\mark \default %=============== 1
	a4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 4
	g,4 d' e g, d' e
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 8
	b,4 fis' g b, fis' g
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 12
	fis,4 a d fis, a d
	g,4 d' e g, d' e
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 17
	cis fis a cis, fis a
	b,4 fis' g b, fis' g
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 22
	g,4 d' e g, d' e
	fis,4 a d fis, a d
	e, a cis e, a cis
	a4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 28
	b,4 fis' g b, fis' g
	cis, fis a cis, fis a
	d, a' b d, a' b
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 34
	d, a' b d, a' b
	e, a cis e, a cis
	fis,4 a d fis, a d
	g,4 d' e g, d' e
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 41
	e a cis e, a cis
	d, a' b d, a' b
	cis, fis a cis, fis a
	b,4 fis' g b, fis' g
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 48
	g,4 d' e g, d' e
	fis,4 a d fis, a d
	e, a cis e, a cis
	d, a' b d, a' b
	cis, fis a cis, fis a
	a4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 56
	b,4 fis' g b, fis' g
	cis, fis a cis, fis a
	d, a' b d, a' b
	e, a cis e, a cis
	fis,4 a d fis, a d
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 64
	b,,4 fis' g b, fis' g
	cis, fis a cis, fis a
	d, a' b d, a' b
	e, a cis e, a cis
	fis,4 a d fis, a d
	g,4 d' e g, d' e
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 73
	g4 d' e g, d' e
	fis,4 a d fis, a d
	e, a cis e, a cis
	d, a' b d, a' b
	cis, fis a cis, fis a
	b,4 fis' g b, fis' g
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 82
	g,4 d' e g, d' e
	fis,4 a d fis, a d
	e, a cis e, a cis
	d, a' b d, a' b
	cis, fis a cis, fis a
	b,4 fis' g b, fis' g
	a,4 d fis a, d fis
	a4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 92
	b,4 fis' g b, fis' g
	cis, fis a cis, fis a
	d, a' b d, a' b
	e, a cis e, a cis
	fis,4 a d fis, a d
	g,4 d' e g, d' e
	a,4 d fis a, d fis
	a,,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 102
	g,,4 d' e g, d' e
	a,4 d fis a, d fis
	b,4 fis' g b, fis' g
	cis, fis a cis, fis a
	d, a' b d, a' b
	e, a cis e, a cis
	fis,4 a d fis, a d
	g,4 d' e g, d' e
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis
\mark \default %=============== 113
	b4 fis' g b, fis' g
	a,4 d fis a, d fis
	g,4 d' e g, d' e
	fis,4 a d fis, a d
	e, a cis e, a cis
	d, a' b d, a' b
	cis, fis a cis, fis a
	b,4 fis' g b, fis' g
	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis

	a,4 d fis a, d fis
	a,4 d fis a, d fis
	a,4 d fis a, d fis

%%}
}\\{

<<{
%%{
%=============== 1
s1. s s
%=============== 4
s2. a
s1. s s
%=============== 8
s2. d
s1. s s
%=============== 12
s2. a s1.
s1. a s
%=============== 17
s1. s2. d
s1. s s
%=============== 22
s2. a s s s fis
s1. s s
%=============== 28
s2. d' s s s fis
s1. s s
%=============== 34
s2. fis, s s s a s1.
s1. a s
%=============== 41
s1. s2. fis' s s s d
s1. s s
%=============== 48
s2. a s s s fis s s s fis
s1. s s 
%=============== 56
s2. d' s s s fis s s s a
s1. s s
%=============== 64
s2. d,, s s s fis s s s a s s
s1. a s
%=============== 73
s2. s s a' s s s fis s s s d
s1. s s
%=============== 82
s2. a s s s fis s s s fis s s s d
s1. s s
%=============== 92
s2. d' s s s fis s s s a s s s d
s1. s s
%=============== 102
s2. a,, s s s d s s s fis s s s a s s
s1. a s
%=============== 113
s2. s s d' s s s a s s s fis s s s d 
s1. s s

s1. a s

%%}

}\\{
%=============== 1
s1. d,,, s1.
%=============== 4
s1.
s1. d s
%=============== 8
s1.
s1. d s
%=============== 12
s2. s s d'
s1. s s
%=============== 17
s2. fis s s
s1. d, s
%=============== 22
s2. s s a' s s
s1. d, s
%=============== 28
s2. s s a'' s s
s1. d,, s
%=============== 34
s2. s s a' s s s d
s1. s s
%=============== 41
s2. a' s s s fis s s
s1. d, s
%=============== 48
s2. s s a' s s s fis s s
s1. d s
%=============== 56
s2. s s fis' s s s a s s
s1. d,, s
%=============== 64
s2. s s fis s s s a s s s d
s1. s s
%=============== 73
s2. d' s s s a s s s fis s s
s1. d, s
%=============== 82
s2. s s a' s s s fis s s s fis s s
s1. d s
%=============== 92
s2. s s fis' s s s a s s s d s s
s1. d,, s
%=============== 102
s2. s s d s s s fis s s s a s s s d
s1. s s
%=============== 113
s2. fis' s s s d s s s a s s s fis s s 
s1. d, s
}>>

}>>

}	
}
>>
}