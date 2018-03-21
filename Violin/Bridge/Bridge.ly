\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
}

#(set-global-staff-size 22)


\header{
  title = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Bridge" }
 subtitle = "  "
  subsubtitle = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #2 
         "For Solo Violin" }

tagline = " " 
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "  "
}


\score{
\header{ \piece = "  " %\markup{\italic{"without time"}}}
\layout{}
\new Staff {
\relative c'' {
\override Staff.TimeSignature.stencil = ##f
\override Score.BarLine.stencil = ##f
\override Score.BarNumber.stencil = ##f
%\override Staff.Stem.stencil = ##f
%\revert Staff.Stem.stencil



<<{\harmonicsOn
	s1  e'1\pp\< ( s1\! s1
	s1 s1 e) ( s1 s1)
}\\{
	s1 s s s
	s s s s s s s
	s <e,, a\harmonic>4   _\markup{\italic{"sul d"}}  ( s2. s1 <e a\harmonic>4) ( s2.\mf s1
		^\markup { \musicglyph #"scripts.coda" }
		 s1)  s1
}\\{
\shiftOff
\harmonicsOn
	s1 s1 s1 s1
	\break
	s1 s1 e' _( _ \markup{\italic{"sul a"}} s e) ( s1 s
	\break
	s e) ( s1 s ) s b\rest \breathe

}>>


\break
\override Staff.Stem.stencil = ##f
e'1\harmonic\p
s1 e s1_\markup{\italic{"cresc."}} e\harmonic e  e2 e\harmonic e2 e\harmonic
\break
 e4 
_\markup{\italic{"accel."}}
e\harmonic

\revert Score.BarLine.stencil

\bar ".|:" e 
e\harmonic
\bar ":|." \mark \markup{\line{\hspace #2 \normalsize{"(repeat many times, exit at speed)"}}}

\revert Staff.Stem.stencil
\override NoteHead.transparent = ##t
e16 [ e
\override NoteHead.transparent = ##f
\override Score.BarLine.stencil = ##f
e e\harmonic ]

<e,, a\harmonic>4
<e'\harmonic e'\harmonic>4-!\sf
\override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.curved" }
r4  \breathe

\revert Score.BarLine.stencil
\bar "||" 

    \cadenzaOn
      \stopStaff
                \repeat unfold 1 {
          s1
          \bar ""
        }
        \once \override TextScript.extra-offset = #'( 0 . -3.0 )
        \once \override TextScript.word-space = #1.5
        <>^\markup { \center-column { "D.C. al Coda" \line { \musicglyph #"scripts.coda" \musicglyph #"scripts.tenuto" \musicglyph #"scripts.coda"} } }

        \repeat unfold 2 {
          s1
          \bar ""
        }
     \startStaff
   \cadenzaOff




\break
\hideNotes
<e, a\harmonic>4 ( s2. ^\markup { \musicglyph #"scripts.coda" }
\override Score.BarLine.stencil = ##f
\unHideNotes

<e a\harmonic>4 )
<a, c\harmonic>4 (s2_\markup{\italic{"decresc."}}) r4 
<a c\harmonic>4 (s4.) r4.
<a c\harmonic>4 (s2.) r1

\revert Score.BarLine.stencil
\bar "|." 




}
}

}
\markup {"All pitches should be E6."}
\markup {"Without melody, harmony, or rhythm"}
\markup {"Total Duration ~ 4:45"}
