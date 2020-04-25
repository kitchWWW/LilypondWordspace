%{
Welcome to LilyPond
===================

Congratulations, LilyPond has been installed successfully.

Now to take it for the first test run.

  1. Save this file

  2. Select

       Compile > Typeset file

  from the menu.

  The file is processed, and

  3.  The PDF viewer will pop up. Click one of the noteheads.


That's it.  For more information, visit http://lilypond.org .

%}

\score{
\header{
  title = "A scale in LilyPond"
}

\relative {
\clef "treble_8"
\tempo 4 = 91
\time 6/8
d4. d4.
d4. d4 d8
a'4 d,8 a'4 d,8
e8 a fis fis e d
a'4 d,8 a'4 d,8
e8 a fis fis r d
a'4 d,8 a'4 d,8
e a fis fis e d cis d a' fis r fis 
g16 fis~fis e8. d8 cis a

a'4 d,8 a'4 d,8
e8 a fis fis e d
a'4 d,8 a'4 d,8
e8 a fis fis r d
a'4 d,8 a'4 d,8
e a fis fis e d cis d a' fis r fis 
g16 fis~fis e8. d8 cis a


}
\layout{}
\midi{}
}
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
