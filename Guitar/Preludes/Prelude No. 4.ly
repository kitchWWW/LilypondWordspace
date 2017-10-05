#(set-global-staff-size 25)


\header {
	title = "Prelude"
	subsubtitle = "Fugue"
	composer = "Brian Ellis"
	tagline = ""
}

\paper{
  indent = 1\cm
  left-margin = 2.5\cm
  right-margin = 2.5\cm
  top-margin = 4\cm
  bottom-margin = 2.5\cm
  ragged-last-bottom = ##t
}

\score {
	\midi {}
	\layout {}
	\new Staff \relative c'' {
	\time 2/4
	\key d \major
<<{
	cis,4 (d a' g) 
	cis,4 (d a' g) 
	cis,4 (d a' g) 
	cis,4 (d a'2 g4) 
	s4 s2
	cis,4 (d a' g) 
	cis,4 (d a' g) 
	cis,4 (d a' g) 
	cis,4 (d a'2 g4) 
	cis,4 (d a' g) 
	cis,4 (d a' g) 
	cis,4 (d a' g) 
	cis,4 (d a') 

}\\{
	S1 s1 s1 s1 
	cis,4 (d a' g) 
	s1 s1 s1 s1
	cis,4 (d a' g) 
	cis,4 (d a' g) 
	cis,4 (d a' g) 
	cis,4 (d a' g) 
}>>
\break
<<{
	cis, d a' g
}\\{
	g cis, d a'
}>>
s2
cis,16 g'8. d16 cis8. a'16 d,8. g16 a8.
s2
cis,8 g'8 d8 cis8 a'8 d,8 g8 a8
s2
cis,8. g'16 d8. cis16 a'8. d,16 g8. a16
s2
<<{
	cis,4 d a' g
}\\{
	a g cis, d
}>>
\break
<<{
	cis4 d a' g
}\\{
	a g cis, d
}>>
<<{
	cis4 d a' g
}\\{
	a g cis, d
}>>
<<{
	cis4 d a' g
}\\{
	a g cis, d
}>>
	a'4 g fis2 \bar "|."



}

}


 