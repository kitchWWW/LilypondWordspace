
\score {
	\header {	piece ="Railroad"}
  \new PianoStaff <<
    \new Staff = "upper" \transpose e b \relative c' {
  \clef treble
  \key c \major
\time 4/2
	e4 e e e e e e e
	e e e e e e e e
	<d g>8 e <d g>8 e <d g>8 e <d g>8 e 
		<d g>8 e <d g>8 e <d g>8 e <d g>8 e 
	r8 <d g>4 e8 <d g>8 e <d g>8 e
	r8 <d g a>4 e8 <d g a>8 e <d g a>8 e
	<d g a>8 e <d g a>8 e <d g a>8 e <d g a>8 e
		<d g a>8 e <d g a>8 e <d g a>8 e <d g a>8 e
\time 5/2
	c8 a' c, a' c, a' c, a' 
		c, [a' b c b a] c, [a' b c b a]
\time 3/2
	<f e'>4. <f e'>4. <f e'>4. <f e'>4. 
\time 5/2
	c8 a' c, a' c, a' c, a' 
		c, [a' b c b a] c, [a' b c b a]
\time 4/2
	c,4 d c d <c g'> d <c g'> d
}
    \new Staff = "lower" \transpose e b \relative c' {
  \clef treble
  \key c \major
	r\breve
	r\breve
	<<{b4 a b4 a b4 a b4 a }\\{
	e2 e e e
	}>>
<<{b'4 a b4 a b4 a b4 a }\\{
	e2 e e e
	}>>
<<{b'4 a b4 a b4 a b4 a }\\{
	e2 e e e
	}>>

<<{b'4 a b4 a b4 a b4 a b a}\\{
	e2 e e e e
	}>>

<<{b'4 a b4 a b4 a }\\{
	e2 e e
	}>>

<<{b'4 a b4 a b4 a b4 a b a}\\{
	e2 e e e e
	}>>
<<{b'4 a b4 a b4 a b4 a }\\{
	e2 e e e
	}>>
}
  >>
  \layout {}
  \midi { }
}

