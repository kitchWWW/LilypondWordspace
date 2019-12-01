\version "2.18.0"

\header {
	dedication = \markup{\italic"For Jordan and the collective thing"}
	title = "My battery is low and it is getting dark"
	subtitle = ""
	subsubtitle = "For Marimba and live electronics"
	composer = "Brian Ellis"
	tagline = ""
}
\defineBarLine "-right" #'(" " " " " ")


\paper{
  indent = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
%  ragged-last-bottom = ##f
} 

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Marimba"
    \new Staff = "upper" \relative c'' {
  \clef treble
  \key d \major
 \override Staff.TimeSignature #'stencil = ##f 

  \time 5/4
%\set Timing.defaultBarType = "-right"
	<<{fis,1:32 s4}\\{s4\< s s^"*"\> s s\!}>> \breathe
\time 4/4
	<<{a1:32 ~a2: \breathe b:( a:)}\\{s4 s s^"*" s}>>
	r2
	<<{d,1:32}\\{s4 s s^"*" s}>> \breathe
	r2 r2^"fd. A"
	b'2:32 (a:32)\fermata \breathe
	s1 s1
	r2 r2^"fd. b,d"
	r1
	<<{a4:32 (b4: cis2:)\fermata}\\{s8 s8^"*" s4 s4}>>
	\breathe
	<<{cis2:32 (d: cis: b: cis1:)}\\{s1 s1 s2 s2^"*"}>>
	r2 r2^"fd. c#"
	e4: (d: cis2:\fermata)
	s1 s1
	<fis d'>4 r2.
	b2:32 (cis: d1:32)~d:
	
}

    \new Staff = "lower" \relative c {
  \clef bass
  \key d \major
 \override Staff.TimeSignature #'stencil = ##f 


	s1 s4 s1 s s s
	<d, d'>4 r2.
	s1
	<<{s1 s2 s2^"*" }\\{g'2:32 ^(a: b1:32)}>>
	<d,, d'>4 r2.
	s1 s1
	s s s 
	<fis fis'>4 r2.
	s1
	<<{s1 s2 s2^"*" }\\{	b'2:32 ^(cis: d1^\fermata) }>>
	s2 s2^"fd. d"
	s1 s2 s2^"fd. f#,a" r1
	

}
  >>
  \layout { }
  \midi { }
}