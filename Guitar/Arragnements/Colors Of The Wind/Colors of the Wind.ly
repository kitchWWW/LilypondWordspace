\header{
title ="Colors of the Wind"
subtitle="For Classical Guitar"
tagline=""
arranger = "arr. Brian Ellis"
composer = "Alan Menken"
}

preverse = {

<<{
	\partial 16
	\tempo \markup { \italic morose }
	a16 d8 d16 e f e c8 d16 a8. r8 a16 a
	d16 d d e f d r f e d c d e8. e16
	f16 e d a c8\fermata d16 e f e d\fermata a c8. c16 d e f\2 g a e c' bes
	a2 dis,4 cis
	
}\\{
	s16 <d, a>1 <d a>2 c <d a> <e a,> s1 b4 cis
}>>
}

intro = {
<<{
	\tempo \markup { \italic Allegro \italic Moderato }
	<g' c-1>8 <g'-4> <g> <g, c> <g c>2
	<a c>8 <e'> <e> <a, c> <a c>2
}\\{
	s4 e2.-2	
	s4 
}\\{}\\{
	c1-3
	a
}>>


<<{
	<g' c>8 <g'> <g> <g, c> <g c>8 <g'> <g> <g, c>
	<a c>8 <e'> <e> <a, c> <a c>4. g8-0
}\\{
	s4 e s e
	s4 e2.
}\\{}\\{
	c2 c
	a1
}>>


		
}

verseOne = {

<<{
	\set Score.repeatCommands = #'(start-repeat)
	d'8 g16-4 g (g8) e e16 d d8 (d) c d a2. g8
}\\{
	<c, d g>2 <e, g'> <a e'> r8 a8-0 g-2 b-1
}>>
%dead thing you can claim
<<{
	\textSpannerUp
		\override TextSpanner #'(bound-details left text) = #"bIII"
	e'8. g16 g g e8 e d d c e2. r8 e8-0
	a-4 \startTextSpan g-1 g e-4 e d-1 d \stopTextSpan c d4 (a2) c8-1 e
	d4-4  r8 c16-1 (d-4) e g8.-4 d8-3 e a,2. r8 g
}\\{
	<c, f a>2 <c e g> <a e'>1 c1 e,4 <a e'>2 f'-3 c2-3 d4 a2.
}\\{}\\{s1 s8 a' a a a a a s g2.}>>

<<{
	d'8 g16 g (g8) e e16 d d8 (d) c d-4 a2.-3 g16 g
}\\{
	<c, d g>2 <e, g'> <a e'> r8 a8 g b
}>>

<<{
	e'8.-0 g16 g g e8 e d (a'-4) a (g2.-2 \2) r8 e8-0
	a-4 g-1 g e-4 e d-1 d c d4 (a2) c8 e
	d4  (d16) c d e d4 (d16) c a c c2.^"To Coda" e8 g\2
}\\{
	<c,, f a>2 <c e g>4 <f-1 c'-3>8^"VIII" r8 <e,>1 c'1 e,4 <a e'>2 f' a,2 d4
	c4. e8 g c s4
}\\{}\\{s1 s8 g g g g g g s g2.-3}>>

}

chorus = {
<<{
	<c'-4>8 b-3 b a a g4\2 e16-0 d-4
	e4 g a4. b8 
	%asked the grinning bobcat why he grinned
	c8 b b a a g\2 g e g2.-4 e8-0 g-1
	%sing with the voices of the mountains
	c-2 b16-1 b (b8) a8\2-4 a g4-1\2 g16 (a-3 g4) c,2-3\4
	%OMG WE FINALLY GOT TO THIS LINE :D
	r8 a16 c-2 d8-4 e16-0 e (e8) d-4 d16 (c8.-1) c a16-3 d2.-4
	%OMG THE ICONIC VERSION OF THE LINE :D
	r8 a16-3 c-2 d8-4 e16 e (e8) d d16 c8. a c16 c2 

}\\{
	a,2. g'4 <a, a'>4 <e'-2 c'-1> f-1 b-0 
	a,2. g'4 e, e'-3\5 g2 -1\4 
	a,2. e2 a2 s4
	f4-1 e'4-2 c-3 e4 e,4 a e'2
	f,4 e'4 c2 <c e g c>2
	
}\\{s4 <e' c>2^"bV" s4 s1 s4 <e c>2^"bV"}\\{
	
}>>
}

midPart = {
	\times 2/3 {c,16\< e g e g c g c e c e g\!}
	c,, g'\3 g\4 g g g c, g' c, g' g' g, e' g, d' g,
	a, g' e g e g a, g' a, g' e' g, d' g, c g->
	\set Score.repeatCommands = #'(end-repeat)
}

verseTwo = {

<<{
	c2.\coda c8 e
}\\{
	c,4. c8 e g s4
}>>

}

sycamore = {

<<{
	c'8 c16 c b a16 g8 e2
	c8 d e16 (g e8)
	(e4) c8 d e4. e8 d2 s2 c8 d e g
}\\{
	<c,, e g b e>2^"bV" <e, e' g> s4 <a e' a c>2. e2 <g b d g>
	g8 b d g <c, e>2
}>>
}

chorusMod = {
<<{
	<c''-4>8 b-3 b a a g4\2 e16-0 d-4
	e4 g a4. b8 
	%asked the grinning bobcat why he grinned
	c8 b b a a g\2 g e g2.-4 e8-0 g-1
	%sing with the voices of the mountains
	c-2 b16-1 b (b8) a8\2-4 a g4-1\2 g16 (a-3 g4) c,2-3\4
	%OMG WE FINALLY GOT TO THIS LINE :D
	r8 a16 c-2 d8-4 e16-0 e (e8) d-4 d16 (c8.-1) c a16-3 d2.-4

	c8 d e8. e16 e8 d c4 c8 d e g e g b4. c8

	g8 e16 e (e8) d d16 c8. a c16 c1

}\\{
	a,2. g'4 <a, a'>4 <e'-2 c'-1> f-1 b-0 
	a,2. g'4 e, e'-3\5 g2 -1\4 
	a,2. e2 a2 s4
	f4-1 e'4-2 c-3 e4 e,4 a e'2
	<a, e'> 1 e1
	<d' g>4 f,4 c'2 <c e g>2
		
}\\{s4 <e' c>2^"bV" s4 s1 s4 <e c>2^"bV"}\\{
	
}>>
}


\score{
\midi {}

\relative c''{
	\time 2/4
	\preverse
	\time 4/4
	\intro
	\verseOne
	\chorus
	\midPart
	\verseTwo
	\sycamore
	\chorusMod
	
}
\layout{
	\context {
      \Score
    	  \override SpacingSpanner
        	#'base-shortest-duration = #(ly:make-moment 1 4)
    }
}

}



