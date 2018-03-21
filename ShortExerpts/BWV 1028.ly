\header{
  title = "BWV 1028"
 subtitle = "  "
tagline = " " 
composer = "Bach"
arranger = "Brian Ellis"
}
\paper{
  indent = 0\cm
}

\score{
\header{ \piece = "Reduction m. 1 - 11"}
\layout{}
\new Staff {
\relative c' {
  \key d \major
\override Staff.TimeSignature.stencil = ##f
\override Score.BarLine.stencil = ##f
	fis^"1"\( ^(
	\override Staff.Stem.stencil = ##f
	s g^"2") s d^"3" ^( s e^"4,ct2" s
	\revert Staff.Stem.stencil
	fis^"5") \) 
	s  e^"6" s
	\override Staff.Stem.stencil = ##f
	fis^"7" ( s
	e^"8,ct2" s
	d^"9"  s cis s b^"10" s cis s
		\revert Staff.Stem.stencil

	 d^"11" )
}
}

}

\score{
\header{ \piece = "scale motif A"}
\layout{}
\new Staff {
\relative c' {
  \key d \major 
\override Score.BarLine.stencil = ##f
\override Staff.TimeSignature.stencil = ##f

	d8 [e fis]
}}}

\score{
\header{ \piece = "leap motif B"}
\layout{}
\new Staff {
\relative c' {
  \key d \major 
\override Score.BarLine.stencil = ##f
\override Staff.TimeSignature.stencil = ##f

	a8 [d]
}}}

\score{
\header{ \piece = "rhythmic motif"}
\layout{}
\new Staff {
\relative c' {
  \key d \major 
\override Score.BarLine.stencil = ##f
\override Staff.TimeSignature.stencil = ##f

	fis8 [ a,16 b a8]
}}}

