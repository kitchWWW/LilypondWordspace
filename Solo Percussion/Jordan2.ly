\version "2.18.0"

#(set-global-staff-size 18)

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
  %ragged-last-bottom = ##f
} 

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Marimba"
    \new Staff = "upper" \relative c'' {
  \clef treble
  \key d \major
% \override Staff.TimeSignature #'stencil = ##f 
  \time 5/4
%\set Timing.defaultBarType = "-right"
	\tempo "Very Slow"
	<<{fis,1:32 s4}\\{s4\< s s^"* R1"\p\> s s\!}>> \breathe
	<<{a1:32 s4}\\{s4\< s s\p\> s s\!}>> \breathe \break
\time 6/4
	<<{b2:32 (a1:)}\\{s4\< s s4\mf\> s4^"* R2" s^\fermata s\!}>>
	\time 2/4
	r2
\break
\time 5/4
	<<{d,1:32 s4}\\{s4\< s s^"* R3"\p\> s s\!}>>
\time 1/4
	r4
	r4
\time 2/4
	r2^"F2"
\break
\time 5/4
	<<{b'2:32 (a2:)}\\{s4\< s s4\mp\> s s\!}>> \breathe
\time 9/4
	r1 r1 s4
\time 1/4
\break
	r4
	r4
	r4^"F2, F3"
\time 6/4
	<<{a2:32 (b2: cis2:)\fermata}\\{s8 s8^"R2" s4 s4}>>
\time 1/4
	r4
\break
\time 6/2
	<<{cis2:32 (d: cis: b: cis1:)}\\{s1 s1 s2 s2^"R3"}>>



}

    \new Staff = "lower" \relative c {
  \clef bass
  \key d \major
% \override Staff.TimeSignature #'stencil = ##f 
  \time 5/4
%\set Timing.defaultBarType = "-right"

	r1 s4
	r1 s4
	r1.
	r2
	r1 s4
	r4
	<d, d'>\mf
	r2
	r1 s4
	<<{s1\< s2\f\> s2^"R2" s4\!}\\{g'2:32 ^(a: b1:32)}>>
	r4
	<d,, d'>\mf
	r4
	r1.
	r4
	r1 r1 r1
	
}
  >>
  \layout { }
  \midi { }
}
