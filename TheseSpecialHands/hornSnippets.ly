% #(set-default-paper-size "ansi a" 'landscape)
#(set-default-paper-size '(cons (* 8.5 in) (* 11 in)))

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  % title = "Attention Meditation"
  % subtitle = ""
  % subsubtitle = "map for any voice in any instrument"
  % composer = "Brian Ellis"
  tagline = ""
}
  \paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
  ragged-last = ##t
}

\score {
  \new Staff \relative c {
    \key f \major
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
\set Staff.forceClef = ##t
      \clef bass
     % \hide Stem
     \time 12/4
      \override Hairpin.circled-tip = ##t
     f1\< ~ f\f\> r1\!
     \break
\time 13/4
      f1\< (g\f\> f\!) r4
     \stopStaff
      \time 4/4
      s1
      \startStaff
   \time 13/4
      a1\< (bes\f\> a\!) r4
     \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 17/4
      a1\< (bes c4\f\> g2. f1\!) r4
     \stopStaff
      \time 4/4
      s1
      \break
      \startStaff
      \time 14/4
      f2\< (d2 c2.\f\> d2 f1\!) r4

      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 15/4
      \times 2/3{a,2\< (c f} d2.\f\> f4 g1 a2) r4\!

      \break
      \time 16/4
      s1 s1 s1 s1 

\break
      \clef treble
      \time 5/4
      a'2\f ( \grace { a64 b cis dis e fis g gis } a2) r4

    \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 5/4
      c,2\f ( \grace { c64 d e fis g a bes b } c2) r4

      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 7/4
    \break
      \clef bass
      f,,,2(\mp \glissando d \glissando f) r4

      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 11/4
      \clef bass
      f1(\mp \glissando c2 \glissando g' \glissando f) r4

      \stopStaff
      \time 4/4
      s1
      \startStaff
      \time 9/4
      \clef bass
      a,2(\mp \glissando g \glissando bes \glissando a) r4
      \break

      \time 120/4
      \override Hairpin.circled-tip = ##t
     f'1\< ~ f\f\> r4\! s1 r4 f1\< ~ f\f\> r4\!  s1 r4 f1\< ~ f\f\> r4\! s1 s1 
     \break



      % \stopStaff
      % \time 4/4
      % s1
      % \startStaff   

  }
  \layout {
    ragged-right = ##t
    \context {
      \Staff
      \omit TimeSignature
    }
  }
}

