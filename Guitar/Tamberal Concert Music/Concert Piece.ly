
\header{
	title = "A Day in December"
	tagline = ""
	composer = "Brian Ellis"
	arranger = "  "
}



\paper{
  indent = 2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}



\version "2.18.2"  % necessary for upgrading to future LilyPond versions.







\score {
\header{
piece="I. Day"
}
    \new Staff {
\absolute {
\clef "treble_8"
	\time 3/4
	b16\pp\< e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'\mf
	R1*3/4
	b16\mp e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
\bar ".|:"
	g\mf [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g\> [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	b16\mp e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
\bar ":|.|:"
	a,->\f e' a, e' a, e' a,-> e' a, e' a, e' 
	a,-> e' a, e' a, e' a,-> e' a, e' a, e' 
	b16\mp e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	a,->\f e' a, e' a, e' a,-> e' a, e' a, e' 
	a,-> e' a, e' a, e' a,-> e' a, e' a, e' 
	g\mp [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g\< [e' e'] g [e' e'] g [e' e'] g [e' e'] 
\bar ":|."
	g\f [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g\> [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	b16\mp e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'

\bar ".|:"
	a,->\mf e' a, e' a, e' a,-> e' a, e' a, e' 
	a,-> e' a, e' a, e' a,-> e' a, e' a, e' 
	a,-> e' a, e' a, e' a,-> e' a, e' a, e' 
	a,->\< e' a, e' a, e' a,-> e' a, e' a, e' 
	a,->\f e' a, e' a, e' a,-> e' a, e' a, e' 
	a,-> e' a, e' a, e' a,-> e' a, e' a, e' 

	g\mf [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g\> [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	b16\mp e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
\bar ":|."
	
	g\mf [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g\> [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	b16\mp e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'

\bar ".|:"
	<e, a,>\f e' <e, a,> e' <e, a,> e' <e, a,> e' <e, a,> e' <e, a,> e' 
	<e, a,> e' <e, a,> e' <e, a,> e' <e, a,> e' <e, a,> e' <e, a,> e' 
	b16\pp e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
\bar ":|." \mark \markup{"x3"}
	b16 e' e' e' b e' e' e' b e' e' e'
	b16 e' e' e' b e' e' e' b e' e' e'
	<e, a,>\f e' <e, a,> e' <e, a,> e' <e, a,> e' <e, a,> e' <e, a,> e' 
	<e, a,> e' <e, a,> e' <e, a,> e' <e, a,> e' <e, a,> e' <e, a,> e' 
	a,->\mf e' a, e' a, e' a,-> e' a, e' a, e' 
	a,-> e' a, e' a, e' a,-> e' a, e' a, e' 
	a,-> e' a, e' a, e' a,-> e' a, e' a, e' 
	a,->\< e' a, e' a, e' a,-> e' a, e' a, e' 
	a,->\f e' a, e' a, e' a,-> e' a, e' a, e' 
	a,-> e' a, e' a, e' a,-> e' a, e' a, e' 
	g\mf [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g\> [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g\mp [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g\< [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g\f [e' e'] g [e' e'] g [e' e'] g [e' e'] 
	g\< [e' e'] g [e' e'] g [e' e'] g [e' e']\! 
\break
 \once \hide Staff.TimeSignature 
	\time 25/8
	<<{
	s2. b16\p [e' e' e']
	s2.\p g16\pp [e' e']
	}\\{
	d1\ff\fermata	d\mf d\mf <e, a,>16\p
	^\markup{\italic"attacca"}
	[e']
	}>>

	\bar "||"

}
}
  \layout {
  ragged-last = ##f
}
  \midi { }
}



\score{
\header{
piece="II. Children Snek"
}
    \new Staff {
\absolute {
\clef "treble_8"
\override Staff.TimeSignature.stencil = ##f
	\time 2/4
	e'4 r4\fermata
	e'32 [(b e'16) ~ e'8]
	r4\fermata
	\time 9/8
	e'32 [(b e'16) ~ e'8]
	g4.
	e'32 [(b e'16) ~ e'8]
	r4\fermata
	\time 17/8
	e'8 [b e' g e' b e' a, e' b e' g e' b e'] r4\fermata

	\time 39/16
	%15
	e'16 [b e' g e' b e' a, e' b e' g e' b e']
	%6
	e,4.
	%14
	e'16 [b e' g e' b e' a, e' b e' g e'32 (b e'16)]	r4\fermata
	
	\time 10/4
	e'32 [(b e'16) ~ e'8]
	g4
	e'32 [(b e'16) ~ e'8]
	a,4
	e'32 [(b e'16) ~ e'8]
	g4
	e'32 [(b e'16) ~ e'8]
	~e'4
	r2\fermata

	\time 9/8
	e'8[ b e' g e' b e']
	r4\fermata

	\time 5/4
	e'32 [ b e' e, a, e' b g]
	d4 d d r4\fermata

	\time 18/16
	e,16 [a, e' b g] d4 d16 (d4) d4
	
	\time 15/16
	b16 [e' e' e']
	g16 [e' e']
	b16 [e' e' e']
	r4\fermata
	\time 4/4
	b16 [e' g e']
	b [e' e' e'] e'2
	\bar "|."

	
}
}
}

