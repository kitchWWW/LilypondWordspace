#(set-default-paper-size '(cons (* 95 mm) (* 30 mm)))

\version "2.18.2"
	
% #(set-global-staff-size 19)

\header {
title =""
composer = ""
meter = ""
tagline =""
dedication = ""
}


\paper{

  print-page-number = ##f
	% #(set-paper-size "letter" 'portrait)
  left-margin = 0\cm
  right-margin = 0\cm
  top-margin = 0\cm
  bottom-margin = 0\cm
  indent = 0\cm
  % system-separator-markup = \slashSeparator
  ragged-last = ##f
  max-systems-per-page=2
}

\score{

\header{
      piece=\markup{\abs-fontsize #20 "*"}
}

\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 10/4
 r4 d1^"III" ~ \< d1 \> r4\!
 \break
}
}
>>
\layout{}
}
\score{
      \header{
      piece=\markup{\abs-fontsize #20 "*"}
}

\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 10/4
 r4 d1^"IV" ~ \< d1 \> r4\!
 \break
}
}
>>
\layout{}
}

\score{
      \header{
      piece=\markup{\abs-fontsize #20 "*"}
}

\new StaffGroup <<
\new Staff {

\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 10/4
 r4 <d d>1 ~ \< <d d>1 \> r4\!
 \break
}
}
>>
\layout{}
}

\score{
      \header{
      piece=\markup{\abs-fontsize #20 "*"}
}

\new StaffGroup <<
\new Staff {

\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 10/4
 r4 <d d>1:32 ~ \< <d d>1: \> r4\!
 \break
}
}
>>
\layout{}
}


\score{
      \header{
      piece=\markup{\abs-fontsize #20 "*"}
}

\new StaffGroup <<
\new Staff {

\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 6/4

 r4
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {d16\(\<^"III IV III IV ..." d d d d d d d\) }
  \override Beam.grow-direction = #LEFT
  {d16\(\> [d d d d d d d]\)}
  r4\!
 \break
}
}
>>
\layout{}
}

\score{
      \header{
      piece=\markup{\abs-fontsize #20 "*"}
}

\new StaffGroup <<
\new Staff {

\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 10/4
 <<{
  s4
 \makeClusters { <d'>1 <b fis'>1 <d>4}
  }\\{
r4 <d, d>1^"overpressure" ~ \< <d d>1 \> r4\!
    }>>

 \break
}
}
>>
\layout{}
}


\score{
\new StaffGroup <<
\new Staff {

\relative c' {
      \omit Staff.TimeSignature
  \key d \major
  <<{
 \time 2/4
  d2 _~ 
  \time 3/4
  \bar ".|:"

  \times 2/3{
  d8 d d ~
  }
d2\fermata ~
  \bar ":|."
  \time 2/4
  d2
    }\\{
      s2
\times 2/3{g,8 d' g,}
      }>>
 \break
}
}
>>
\layout{}
}




\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 
 \time 2/4
  d2 _~ 
  \time 7/4
  \bar ".|:"
  <d fis>4
  <d d>
  <d fis>
  <d d>
  <d fis>
  <d d>2 ~ \fermata
   \bar ":|."
  \time 2/4
  d2
 \break
}
}
>>
\layout{}
}

\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 
 \time 2/4
  d2 _~ 
  \time 4/4
  \bar ".|:"
  \times 2/3{
  <d a'>4
  <d b'>4
  <d a'>4  
  }
  <d d>2 ~ \fermata
   \bar ":|."
  \time 2/4
  d2
 \break
}
}
>>
\layout{}
}


\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 
 \time 2/4
  d2  
  \time 8/4
  \bar ".|:"
  <d' d'>2->
  <d d'>2->
  <d d'>2->
  d,\fermata
   \bar ":|."
  \time 2/4
  d2
 \break
}
}
>>
\layout{}
}



\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 
 \time 2/4
  d2  
  \time 4/4
  \bar ".|:"
  d'16 [d,]^"(add more as desired)" d' [d,] d' [d,] d' [d,] ~ d2\fermata
   \bar ":|."
  \time 2/4
  d2
 \break
}
}
>>
\layout{}
}




\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 
 \time 2/4
  d2  
  \time 13/8
  \bar ".|:"
  <fis d'>4. <g d'> <fis d'>
  d2 \fermata ~
   \bar ":|."
  \time 2/4
  d2
 \break
}
}
>>
\layout{}
}






\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 
 \time 2/4
  d2  
  \time 5/8
  \bar ".|:"
  <a' a'>8 -.
  d,2 \fermata ~
   \bar ":|."
  \time 2/4
  d2
 \break
}
}
>>
\layout{}
}






\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 2/4
  d2 ~
  \time 3/2
  \bar ".|:"
  d4 b2 a d4 ~
  \bar ":|."
  \time 2/4
  d2
 \break
}
}
>>
\layout{}
}



\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 2/4
  d2 ~
  \time 3/2
  \bar ".|:"
  d4 a2 b d4 ~
  \bar ":|."
  \time 2/4
  d2
 \break
}
}
>>
\layout{}
}



\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 2/4
  d2 ~
  \time 2/2
  \bar ".|:"
  d4 b2 d4 ~
  \bar ":|."
  \time 2/4
  d2
 \break
}
}
>>
\layout{}
}




% \score{
% \new StaffGroup <<
% \new Staff {
% \relative c' {
%       \omit Staff.TimeSignature
%   \key d \major
%  \time 2/4
%   d2 ~
%   \time 3/2
%   \bar ".|:"
%   d4 <d a'>1 d4 ~
%   \bar ":|."
%   \time 2/4
%   d2
%  \break
% }
% }
% >>
% \layout{}
% }



\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 2/4
  d2 
  \time 2/4
  \bar ".|:"
  a32 (d a' fis') fis (a, d, a) a ( d a' fis') fis (a, d, a )
  \bar ":|."
  \time 2/4
  d2
 \break
}
}
>>
\layout{}
}



\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 2/4
  d2
  \time 2/4
  \bar ".|:"
  g,32 (d' b' e) e (b d, g,) g32 (d' b' e) e (b d, g,) 
  \bar ":|."
  \time 2/4
  d'2
 \break
}
}
>>
\layout{}
}




\score{
\new StaffGroup <<
\new Staff {
\relative c' {
      \omit Staff.TimeSignature
  \key d \major

<<{

\override Stem.stencil = ##f

\xNotesOn
      s2 
      d'4^\markup{\column{"improvise with pitch set" "L.H pizz."}} e fis a b
}\\{

\time 2/4
  d,,2 ~
  \time 8/4
  \bar ".|:"
d1(
s1
  \bar ":|."
  \time 2/4
  d2)
}>>
 
 \break
}
}
>>
\layout{}
}




\score{
\new StaffGroup <<
\new Staff {
\relative c' {
\omit Staff.TimeSignature
  \key d \major
\time 10/4
  r4
  \pitchedTrill
  d''1_(\<\startTrillSpan fis
  d1\>)
  r4\!\stopTrillSpan
 \break
}
}
>>
\layout{}
}



\score{
\new StaffGroup <<
\new Staff {
\relative c' {
\omit Staff.TimeSignature
  \key d \major
\time 10/4
  r4
  \pitchedTrill
  d''1_(\<\startTrillSpan g
  d1\>)
  r4\!\stopTrillSpan
 \break
}
}
>>
\layout{}
}





\score{
\new StaffGroup <<
\new Staff {
\relative c' {
\omit Staff.TimeSignature
  \key d \major
\time 10/4
  r4
  \pitchedTrill
  d''1_(\<\startTrillSpan e
  d1\>)
  r4\!\stopTrillSpan
 \break
}
}
>>
\layout{}
}





\score{
\new StaffGroup <<
\new Staff {

\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 8/4

 r4
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
{<d fis d' fis>16\<\arpeggio^"strum all" <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis>}

  \override Beam.grow-direction = #'()
<g, d' b' g'>16 [<g d' b' g'> <g d' b' g'><g d' b' g'><g d' b' g'>\><g d' b' g'><g d' b' g'><g d' b' g'>]
  \override Beam.grow-direction = #LEFT
  {<d' fis d' fis>16 [<d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis>]}
  r4\!
 \break
}
}
>>
\layout{}
}





\score{
\new StaffGroup <<
\new Staff {

\relative c' {
      \omit Staff.TimeSignature
  \key d \major
 \time 8/4

 r4
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
{<d fis d' fis>16\<\arpeggio^"strum all" <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis>}

  \override Beam.grow-direction = #'()
  <b fis' b fis'>16 [<b fis' b fis'> <b fis' b fis'> <b fis' b fis'> <b fis' b fis'>\> <b fis' b fis'> <b fis' b fis'> <b fis' b fis'>]
  \override Beam.grow-direction = #LEFT
  {<d fis d' fis>16 [<d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis> <d fis d' fis>]}
  r4\!
}
}
>>
\layout{}
}


\pageBreak
\markup{
      \column{
            " "
            " "
            " "
\huge"            Harmonize with your partner"
}}




\pageBreak
\markup{
      \column{
            " "
            " "
            " "
\huge"            Mimic what your partner plays,"
\huge\italic"            but faster"
}}



\pageBreak
\markup{
      \column{
            " "
            " "
            " "
\huge"            Extend what your partner"
\huge"            is playing into new material"
}}

\pageBreak
\markup{
      \column{
            " "
            " "
\huge\bold"            Ending:"
\huge"            Echo your partner, but"
\italic\huge"            slower and softer"
}}

\markup{
      \column{
            " "
            " "
\huge\bold"            Ending:"
\huge"            Echo your partner, but do it"
\italic\huge"            very quietly"
}}


\markup{
      \column{
            " "
            " "
\huge\bold"            Ending:"
\huge"            Echo your partner, but do it"
\italic\huge"            much slower"
}}
