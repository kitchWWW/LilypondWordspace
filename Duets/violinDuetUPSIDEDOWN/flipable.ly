#(set-default-paper-size '(cons (* 100 mm) (* 25 mm)))

\version "2.18.2"
	
% #(set-global-staff-size 19)

\header {
title =""
composer = ""
meter = ""
tagline =""
dedication = ""
}


downClef = {
    \override Staff.Clef.stencil = #ly:text-interface::print
    \override Staff.Clef.text = \markup { \rotate #180 {
        \magnify #5 {
            𝄞
        } 
  }
    }
    \set Staff.clefPosition = -6.5
    \set Staff.middleCPosition = -6
}

upClef = {
    \override Staff.Clef.stencil = #ly:text-interface::print
    \override Staff.Clef.text = \markup { \rotate #0 {
        \magnify #5 {
            𝄞
        } 
  }
    }
    \set Staff.clefPosition = -6
    \set Staff.middleCPosition = -6
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
\upClef
 \time 3/1
 
\bar ".|:"
  a1 ~ \< a1 \> ~a1\!
  \bar ":|."
  \time 1/8
  s8
  \downClef 
  \bar ""

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
  \upClef

 \time 3/1
\bar ".|:"
 <a a>1~ \< <a a>1 \> ~<a a>1\!
   \bar ":|."
   \time 1/8
  s8
  \downClef 
  \bar ""
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
\upClef

\bar ".|:"
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {a16\< a a a a a a a }
  \override Beam.grow-direction = #LEFT
  {a16\> [a a a a a a a]}\! a1

\bar ":|."
\noBreak
\time 1/8
  s8
  \downClef 
  \bar ""

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
\upClef

\bar ".|:"
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {a16\< a' a, a' a, a' a, a' }
  \override Beam.grow-direction = #LEFT
  {a,16\> [a' a, a' a, a' a, a']}\! a,1

\bar ":|."
\noBreak

\time 1/8
  s8
  \downClef 
  \bar ""

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
\upClef

\bar ".|:"
\override Beam.grow-direction = #RIGHT
  \featherDurations 2/1
  {a16\< a, a' a, a' a, a' a, }
  \override Beam.grow-direction = #LEFT
  {a'16\> [a, a' a, a' a, a' a,]}\! a'1

\bar ":|."
\noBreak

\time 1/8
  s8
  \downClef 
  \bar ""

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
  \upClef

 \time 3/1
 \bar ".|:"

 <<{
 \makeClusters { <f'>1 <d a'>1 <f>1}
  }\\{
<a, a>1~ \< <a a>1 \> <a a>\!
    }>>
\bar ":|."
\time 1/8
  s8
  \downClef 
  \bar ""

 \break
}
}
>>
\layout{}
}




\score{
\new StaffGroup <<
\new Staff {

\relative c''' {
      \omit Staff.TimeSignature
  \upClef

 \time 4/1
 \bar ".|:"
      g,8\< [c e\marcato] 
      g,8 [c e\marcato] 
      g,8 [c e\marcato] 
      g,8 [c e\marcato\>] 
      g,8 [c e\marcato] 
      g,8 [c e\marcato] 
      g,8 [c e\marcato] 
      g,8 [c e\marcato] \!

      % g,8\< [b d]
      % g,8 [b d]
      % g,8 [b d]
      % g,8 [b d]
      % g,8 \> [b d]
      % g,8 [b d]
      % g,8 [b d]
      % g,8 [b d]\!


\bar ":|."
\time 1/8
  s8
  \downClef 
  \bar ""

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
  \upClef

 \time 3/1
\bar ".|:"
 a1\glissando \< \( g \> \glissando  a1\)\!
   \bar ":|."
   \time 1/8
  s8
  \downClef 
  \bar ""
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
  \upClef

 \time 3/1
\bar ".|:"
 a1 \glissando \< \( b \> \glissando  a1\)\!
   \bar ":|."
   \time 1/8
  s8
  \downClef 
  \bar ""
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



