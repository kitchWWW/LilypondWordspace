\version "2.18.0"
%#(set-global-staff-size 15)


\header {
	title = \markup{\smallCaps {"Fancy Dance Song"}}
	subtitle = "Solo Guitar"
	subsubtitle = \markup {\bold{\italic "Native American Drum Songs"}}
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 0\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}

	\new Staff \relative c {
	\key d \major
	\time 4/4
	\clef "treble_8"
	\tempo 4 = 75 - 110 
	
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	<b'' d, b>16 d,, <b'' cis, b> d,,
	<b'' d, b>^"Faster each time"  <b cis, b>16 d,,
	<b'' d, b> d,, <b'' cis, b> d,,
	<a'' b, g> <a b, g>16 d,, <a'' b, cis> d,,
	
	<b'' d, b>16 d,, <b'' cis, b> d,,
	<b'' d, b>  <b cis, b>16 d,,
	<b'' d, b> d,, <b'' cis, b> d,,
	<a'' fis g,> <a fis g,>16 d,, <a'' fis cis> d,,

	<b'' d, b>16 d,, <b'' cis, b> d,,
	<b'' d, b>  <b cis, b>16 d,,
	<b'' d, b> d,, <b'' cis, b> d,,
	<a'' b, g> <a b, g>16 d,, <a'' b, cis> d,,

	<b'' d, b>16 d,, <b'' cis, b> d,,
	<b'' d, b>  <b cis, b>16 d,,
	<b'' d, b> d,, <b'' cis, b> d,,
	<g' e g,> <g e g,>16 d, <fis' d g,> d,
	
	<e' cis g> d, <e' b g> d,
	<e' cis g> <e b g> d, <e' cis g>
	d, <e' b g> d, <e' fis d>
	<e fis d> d, <e' e cis> d,
	
	<e' cis g> d, <e' b g> d,
	<e' cis g> <e b g> d, <e' cis g>
	d, <e' b g> d, <e' fis d>
	<e fis d> d, <e' e cis> d,
	
	<e' c g> d, <e' b g> d,
	<e' c g> <e b g> d, <e' c g>
	d, <e' b g> d, <e' f d>
	<e f d> d, <e' d c> d,

\set Score.repeatCommands = #'((volta "1"))
	\time 2/4
	<e' c g> d, <e' b g> d,
	<e' c g> <e b g> d, <e, b' d g d' e>-^-.
	\set Score.repeatCommands = #'((volta #f))
	\time 1/4
	r4
	\break
\set Score.repeatCommands = #'((volta "2") end-repeat)
	\undo 	\omit Score.TimeSignature

	\time 4/4
	<e'' c g>16 d, <e' b g> d,
	<e' c g> <e b g> d, c
	<e' c g> c, <e' b g> c,
	<e' c g> <e b g> c, b
	\set Score.repeatCommands = #'((volta #f))
	\time 2/16
	<e' d a>  [<e,, b' d g d' e>-^-.]
	\time 1/4
	r4
	\break
\set Score.repeatCommands = #'((volta "3")end-repeat)
	\time 4/4
	<e'' c g>16 d, <e' b g> d,
	<e' c g> <e b g> d, c
	<e' c g> c, <e' b g> c,
	<e' c g> <e b g> c, b
	\set Score.repeatCommands = #'((volta #f))
	\time 14/16
	<e' d a> [b, <e' cis a> b,]
	<e' d a> [<e cis a> b, a]
	<e'' d a> [a,, <e'' cis a> a,,]
	<e'' d a> [<e,, b' d g d' e>-^-.]
	\time 1/4
	r4
	\break
\set Score.repeatCommands = #'((volta "4") end-repeat)
	\time 4/4
	<e'' c g>16 d, <e' b g> d,
	<e' c g> <e b g> d, c
	<c' g d> c, <b' g d> c,
	<c' g d> <b g d> c, b
	\set Score.repeatCommands = #'((volta #f))
	<d' a e> b, <cis' a e> b,
	<d' a e> <cis a e> b, a
	<d' a e> a, <cis' a e> a,
	<d' a e> <cis a e> a, b
	
	<d' a e> a, <cis' a e> a,
	<d' a e> <cis a e> a, <d' a e>
	a, <cis' a e> e,, <cis'' gis e> 
	<cis gis e> e,, <e'' cis gis> e,,

	<d'' a e> a, <cis' a e> a,
	<d' a e> <cis a e> a, <d' a e>
	a, <cis' a e> e,, <cis'' gis e> 
	<cis gis e> e,, <e'' cis gis> e,,
	<e b' d g d' e>-^-.
	<e b' d g d' e>-^-.
	r4.
	<e b' d g d' e>16-^-.
	<e b' d g d' e>-^-.
	r4.
	<e a e' a cis e>16-^-. r2...
	\bar "|."
}
}


