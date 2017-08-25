


repA = ^\markup { \null \raise #1 { "[x3-6]" }}

guitar_one = \relative c' {
	\time 12/8
	\set Score.markFormatter = #format-mark-box-alphabet
	\bar ".|:" \mark \default
	e8\p\< a c e, a c e, a c e, a c
	\bar ":|.|:"\mark \default
	e,\fp\! a c e, a c e, a c e, a c
	e, a c e, a c e, a c e, a c
	\bar ":|.|:"\mark \default
	e,\< a c e, a c e, a c e, a c
	e, a c e, a c e, a c e, a c
	\bar ":|.|:"\mark \default
	a,\mf\!-> [a'] a,-> [a'] a,-> [a'] e-> [a\mp c] e, [a c]
	e,\< a c e, a c e, a c e, a\! c\mf
	\bar ":|.|:"\mark \default
	\time 14/8
	e,\mp [a c] e, [a c] a\mf-> [c] a-> [c] a-> [c] a-> [c]
	e, [a c] e, [a c] a [c] a [c] a [c] a [c]
	\bar ":|.|:"\mark \default
	c,\f( [e a] c [a e]) c ([e a] c [a e]) c-> [e->]
	c\mp ([e a] c [a e]) c ([e a] c [a e]) c-> [e->]
	\bar ":|."\mark \default
	\time 11/8
	e->\<\p [a c] e,-> [a c] e,-> [a c\!\fp] e,-> [a]
	\bar ".|:"\mark \default
	e->\mp\< [a c] e,-> [a c] e,-> [a c\!\fp] e,-> [a]
	\bar ":|.|:"\mark \default
	\time 6/4
	e\mf-> a e-> a e-> a c\mp (a c a c a)
	e a e a e a c a c a c a
	\bar ":|.|:"\mark \default
	\time 12/8
	e a c e, a c e, a c e, a c
	e, a c e, a c e, a c e, a c
	\time 6/4
	f,\mf-> a f-> a f-> a c\mp (a c a c a) 
	d,\mf-> a' d,-> a' d,-> a' c\mp\< (a c a c a\!\mf) 
	\bar ":|.|:"\mark \default
	\time 12/8
	f-> a d f, a d f, a d f, a d
	f, a d f, a d f, a d f, a d
	e,\p a c e, a c e, a c e, a c
	e, a c e, a c e, a c e, a c
\pageBreak
	\bar ":|.|:"\mark \default
	e,\< (a c e, a c\!\fp) d,-> [a'] d,-> [a'] d,-> [a']
	e\< (a c e, a c\!\fp) d,-> [a'] d,-> [a'] d,-> [a']
	\bar ":|.|:"\mark \default
	\time 15/8
	f\< ([a d] f, [a d] f, [a d\!\sfz]) d,-> [a'] d,-> [a'] d,-> [a']
	f\< ([a d] f, [a d] f, [a d\!\sfz]) d,-> [a'] d,-> [a'] d,-> [a']
	\time 12/8
	e\< (a c e, a c\!\fp) d,-> [a'] d,-> [a'] d,-> [a']
	e\< (a c e, a c\!\fp) d,-> [a'] d,-> [a'] d,-> [a']
	\bar "[|:" \mark \default
	\time 8/8
	f\<\mp (a c f, a c f, a)
	f a c f, a c f, a
	f a d f, a d f, a
	f a d f, a d f, a
	d,\!\f\> a' d d, a' d d, a'
	d, a' d d, a' d d, a'\!\mf
	e\f\> g d' e, g d' e, g
	e g d' e, g d' e, g\!\mf
	\bar ":|.|:"\mark \default
	e\mp\< g c e, g c e, g
	e g c e, g c e, g
	e\!\mf\> g b e, g b e, g
	e g b e, g b e, g\mp\!
	e\< a b e, a b e, a
	e a b e, a b e, a\!\mf
	e\> a c e, a c e, a
	e a c e, a c e, a\p
	\bar ":|]"\mark \default
	\time 9/8
	e\mf\> a c e, a c e, a c 
	e, a c e, a c e, a c\!\mp 
	\bar ":|.|:"\mark \default
	e,\> a c e, a c e, a c
	e, a c e, a c e, a c
	e, a c e, a c e, a c\!\p
	\bar ":|."\mark \default
	r2. r4.
	}	
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
guitar_two = \relative c' {
	\time 12/8
	\set Score.markFormatter = #format-mark-box-alphabet
	r1.
	a ~a
	<<{
	\parenthesize a'1. \parenthesize a2.
	\parenthesize <a a'>4. \parenthesize <a a'> 
	}\\{
	a,1. a2. a4. a 
	}>>
	e1. ~e
	<<{e''2. e1 e2. e1}\\{a,,1 ~a2. ~a1 ~a2.}>>
	<<{g''2. g1 fis2. fis1}\\{a,,1 ~a2. ~a1 ~a2.}>>
	<<{e''1 ~e4.}\\{a,,1 ~a4.}>>
	r1 r4.
	a2. d a d
	a4^"Dolce" a a a a a a a a a a a a^"Pont." a a a a a a a a a a a
	f^"Pont." c' f, c' f, c' f, c' f, c' f, c'
	a4\>^"Dolce" a a a a a a a a a a a\pp 
	e4\mf g b a e g b a e g b a
	<<{a'4 a a a a fis'8 r fis r fis}\\{f,,4 a c a f8 r2}>>
	<<{a'4 a a a a fis'8 r fis r fis}\\{f,,4 a c a f8 r2}>>
	<<{e''4 e e e e e}\\{e,,4 g b a e g}>>
	<<{e''4 e e e e e}\\{b,4 a e g b a}>>
%\pageBreak
	\bar "[|:"\mark \default
<<{ c''8 [d \grace {e16 d} c8] c [d \grace {e16 d} c8] r4 
	c8 [d \grace {e16 d} c8] c [d \grace {e16 d} c8] r4
	c8 [d \grace {e16 d} c8] c [d \grace {e16 d} c8] r4 
	c8 [d \grace {e16 d} c8] c [d \grace {e16 d} c8] r4 
	c8 [d \grace {e16 d} c8] c [d \grace {e16 d} c8] r4
	c8 [d \grace {e16 d} c8] c [d \grace {e16 d} c8] r4
	c8 [d \grace {e16 d} c8] c [d \grace {e16 d} c8] r4
	c8 [d \grace {e16 d} c8] c [d \grace {e16 d} c8] r4
}\\{
	a,,1 r d r e, r a r
}>>
	\bar ":|.|:"\mark \default
	<<{
\parenthesize e''8 [e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
	\parenthesize e [\parenthesize e]
		}\\{
	g,,8 [c b c] g [c b c] g [c b c] g [c b c]
	g [b a b] g [b a b] g [b a b] g [b a b]
	e, [b' a b] e, [b' a b] e, [b' a b] e, [b' a b] 
	a [b c b] a [b c b] a [b c b] a [b c b]
		}>>
	\bar":|]"\mark \default
	\override TextSpanner.bound-details.left.text = "rit."
	e,4. a c e a c
	\bar ":|.|:"\mark \default
	e\startTextSpan a c
	e, a cis
	e, a d\stopTextSpan
	\bar ":|."\mark \default
	\harmonicsOn
	e4. e e
	
	}

\version "2.18.2"
#(set-global-staff-size 19)
\header{
subtitle =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "Movement 1" }
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
tagline = " "
}

\paper{
  left-margin = .75\cm
  right-margin = .75\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
  ragged-last-bottom = ##t
  print-page-number = ##f
}

#(set-global-staff-size 17)

\score{
\layout {}
%\midi {}

\new StaffGroup
<<
\new Staff \with {
  instrumentName = #"One"
  midiInstrument = "Acoustic Guitar (nylon)"
} \guitar_one

\new Staff \with {
  instrumentName = #"Two"
  midiInstrument = "Acoustic Guitar (steel)"
} \guitar_two
>>
}
