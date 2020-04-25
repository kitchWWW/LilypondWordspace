\version "2.18.0"

#(set-global-staff-size 18)

\header {
	title = "Dice Music"
	subtitle = ""
	composer = "Name:            "
	tagline = ""
}

\paper{
  paper-width = 8.5\in
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
  indent = 0.0\cm
}

% ------------------------------------------
% INSTRUCTIONS
% ------------------------------------------
% 
% Welcome to lilypond :)
%
% For this assignment, your job is to go through and replace every `s` note
% (spacer) in the right hand with a pitch, such as `c` or `g` as you see fit.
% 
% You can change the rhythms if you want by changing the `8` (eight notes)
% to `4` or `16`, just make sure every measure adds up to 4 beats of 
% quarter notes.
%
% You can use any pitches you want, but make sure you play it or listen to
% it and make sure it "sounds" good. Your ear is your greatest guide here!
% 
%
%
% I've gone ahead and done the first measure for you, good luck!
% 
%


\score {
	\header {	piece ="Measure 1 Options (use mainly notes C, E, G)"}
  \new PianoStaff <<
    \new Staff = "upper" \relative c' {
  \clef treble
\override Score.BarNumber.break-visibility = ##(#f #t #t)
  \key c \major

% ------------------------------------------
% MEASURE ONE
% ------------------------------------------
  e4 d8 e8 f4 g4 % <--------------- this is the measure I did for you
  e4 c a' g4 % <--------------- your work starts here!
  e8 f e d c e f g
\break
  e4 c'4 b8 a g4
  e8 c e c f d g e
  e4. f8 g4 a8 g

}
    \new Staff = "lower" \relative c {
  \clef bass
  \key c \major
	c4 s s s % <--------------- this is all the left hand, you don't need to edit this
\bar "||"
	c4 s s s 
\bar "||"
	c4 s s s 
\bar "||"
	c4 s s s 
\bar "||"
	c4 s s s 
\bar "||"
	c4 s s s 	
\bar "||"

}
  >>
  \layout {}
  \midi { }
}


\score {
	\header {	piece ="Measure 2 Options (F, A, C)"}
  \new PianoStaff <<
    \new Staff = "upper" \relative c' {
  \clef treble
\override Score.BarNumber.break-visibility = ##(#f #t #t)
  \key c \major
% ------------------------------------------
% MEASURE TWO
% ------------------------------------------
  f8 c g' c, f c a' c, 
  f4 g b a4
  f4 e f8 g a4
\break
  f4. g8 a4 b8 a
  f4 f g a4
  f4 e8 f g4 a4

}
    \new Staff = "lower" \relative c {
  \clef bass
  \key c \major
	c4 s s s % <--------------- left hand, don't worry about it
\bar "||"
	c4 s s s 
\bar "||"
	f4 s s s 
\bar "||"
	f4 s s s 
\bar "||"
	a4 s s s 
\bar "||"
	a4 s s s 
\bar "||"
	
}
  >>
  \layout {}
  \midi { }
}



\score {
	\header {	piece ="Measure 3 Options (G, B, D, F)"}
  \new PianoStaff <<
    \new Staff = "upper" \relative c'' {
  \clef treble
\override Score.BarNumber.break-visibility = ##(#f #t #t)
  \key c \major
% ------------------------------------------
% MEASURE 3
% ------------------------------------------
  b4 c8 d e4 f4
  b,8 g d' g, g' g, f' g,
  b4 d g f4
\break
  b,8 c d c b d e d
  b4 d f d4
  b4. c8 d4 e8 d

}
    \new Staff = "lower" \relative c' {
  \clef bass
  \key c \major
	g4 s s s % <--------------- left hand, don't worry about it
\bar "||"
	g4 s s s 
\bar "||"
	g4 s s s 
\bar "||"
	g,4 s s s 
\bar "||"
	g4 s s s 
\bar "||"
	g4 s s s 	
\bar "||"

}
  >>
  \layout {}
  \midi { }
}


\score {
	\header {	piece ="Measure 4 Options (C, E, G)"}
  \new PianoStaff <<
    \new Staff = "upper" \relative c'' {
  \clef treble
\override Score.BarNumber.break-visibility = ##(#f #t #t)
  \key c \major
% ------------------------------------------
% MEASURE 4
% ------------------------------------------
  e4 d4 c2
  e4 f8 d c2
  e8 f e d c2
\break
  e4. b8 c2
  e8 g, d' b c2
  e4 g, c2

}
    \new Staff = "lower" \relative c {
  \clef bass
  \key c \major
	r2 c4 c, % <--------------- left hand, don't worry about it
\bar "||"
	r2 c'4 c, 
\bar "||"
	r2 c'4 c, 
\bar "||"
	r2 c'4 c'
\bar "||"
	r2 c,4 c' 
\bar "||"
	r2 c,4 c' 
\bar "||"

}
  >>
  \layout {}
  \midi { }
}


