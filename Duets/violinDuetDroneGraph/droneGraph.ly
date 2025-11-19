#(set-default-paper-size '(cons (* 70 mm) (* 20 mm)))

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
  max-systems-per-page=1
}

\score{

\header{
      
}

\new StaffGroup <<
\new Staff {
\relative c'' {
      \omit Staff.TimeSignature
  
 \time 3/1
 
\bar ".|:"
  a1^"II" ~ \< a1 \> ~a1\!
  \bar ":|."
 \break
}
}
>>
\layout{}
}

\score{
\new StaffGroup <<
\new Staff {
\relative c'' {
      \omit Staff.TimeSignature
  
 \time 3/1
\bar ".|:"
 a1^"III" ~ \< a1 \> ~ a1\!
   \bar ":|."
 \break
}
}
>>
\layout{}
}

\score{

\new StaffGroup <<
\new Staff {
\relative c'' {
      \omit Staff.TimeSignature
  
 \time 3/1
\bar ".|:"
 a1^"IV" ~ \< a1 \> ~ a1\!
   \bar ":|."
 \break
}
}
>>
\layout{}
}

\score{


\new StaffGroup <<
\new Staff {

\relative c'' {
      \omit Staff.TimeSignature
  
 \time 3/1
\bar ".|:"
 <a a>1^"II, III" ~ \< <a a>1 \> ~<a a>1\!
   \bar ":|."
 \break
}
}
>>
\layout{}
}


\score{


\new StaffGroup <<
\new Staff {

\relative c'' {
      \omit Staff.TimeSignature
  
 \time 3/1
\bar ".|:"
 <a a>1^"III, IV" ~ \< <a a>1 \> ~<a a>1\!
   \bar ":|."
 \break
}
}
>>
\layout{}
}

\score{

\new StaffGroup <<
\new Staff {

\relative c'' {
      \omit Staff.TimeSignature
  
 \time 9/4

\bar ".|:"
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {a16\(\<^"III IV III IV ..." a a a a a a a\) }
  \override Beam.grow-direction = #LEFT
  {a16\(\> [a a a a a a a]}\! a1\)

\bar ":|."

 \break
}
}
>>
\layout{}
}

\score{
\new StaffGroup <<
\new Staff {

\relative c'' {
      \omit Staff.TimeSignature
  
 \time 9/4

\bar ".|:"
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {a16\(\<^"II III II III ..." a a a a a a a\) }
  \override Beam.grow-direction = #LEFT
  {a16\(\> [a a a a a a a]}\! a1\)

\bar ":|."

 \break
}
}
>>
\layout{}
}

\score{
\new StaffGroup <<
\new Staff {

\relative c'' {
      \omit Staff.TimeSignature
  
 \time 9/4

\bar ".|:"
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {a16\< a a a a a a a }
  \override Beam.grow-direction = #LEFT
  {a16\> [a a a a a a a]}\! a1

\bar ":|."

 \break
}
}
>>
\layout{}
}



\score{
\new StaffGroup <<
\new Staff {

\relative c'' {
      \omit Staff.TimeSignature
  
 \time 9/4

\bar ".|:"
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {a16\< a' a, a' a, a' a, a' }
  \override Beam.grow-direction = #LEFT
  {a,16\> [a' a, a' a, a' a, a']}\! a,1

\bar ":|."

 \break
}
}
>>
\layout{}
}



\score{
\new StaffGroup <<
\new Staff {

\relative c'' {
      \omit Staff.TimeSignature
  
 \time 9/4

\bar ".|:"
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {a16\< a, a' a, a' a, a' a, }
  \override Beam.grow-direction = #LEFT
  {a'16\> [a, a' a, a' a, a' a,]}\! a'1

\bar ":|."

 \break
}
}
>>
\layout{}
}




\score{
\new StaffGroup <<
\new Staff {

\relative c'' {
      \omit Staff.TimeSignature
  
 \time 9/4

\bar ".|:"
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {a16\< a'^\flageolet a, a'^\flageolet a, a'^\flageolet a, a'^\flageolet }
  \override Beam.grow-direction = #LEFT
  {a,16\> [a'^\flageolet a, a'^\flageolet a, a'^\flageolet a, a'^\flageolet]}\! a,1

\bar ":|."

 \break
}
}
>>
\layout{}
}


\score{
\new StaffGroup <<
\new Staff {

\relative c'' {
      \omit Staff.TimeSignature
  
 \time 9/4

\bar ".|:"
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {a16\< <a d\harmonic> a <a d\harmonic> a <a d\harmonic> a <a d\harmonic> }
  \override Beam.grow-direction = #LEFT
  {a16\> [<a d\harmonic> a <a d\harmonic> a <a d\harmonic> a <a d\harmonic>]}\! a1

\bar ":|."

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
  
 \time 3/1
 \bar ".|:"

 <<{
 \makeClusters { <f'>1 <d a'>1 <f>1}
  }\\{
<a, a>1^"overpressure" ~ \< <a a>1 \> <a a>\!
    }>>
\bar ":|."

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
  
 \time 3/1
 \bar ".|:"

 <<{
 \makeClusters { <f'>1 <d a'>1 <f>1}
  }\\{
<a,>1^"overpressure" ~ \< <a>1 \> <a>\!
    }>>
\bar ":|."

 \break
}
}
>>
\layout{}
}




\score{
\new StaffGroup <<
\new Staff {
\relative c'' {
      \omit Staff.TimeSignature
  
 \time 3/1
\bar ".|:"
 a1\glissando \< \( gis \> \glissando  a1\)\!
   \bar ":|."
 \break
}
}
>>
\layout{}
}


\score{
\new StaffGroup <<
\new Staff {
\relative c'' {
      \omit Staff.TimeSignature
  
 \time 3/1
\bar ".|:"
 a1 \glissando \< \( bes \> \glissando  a1\)\!
   \bar ":|."
 \break
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
\huge"             leave the score"
}}



