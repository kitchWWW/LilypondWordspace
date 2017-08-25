\version "2.18.0"

%#(set-global-staff-size 18)

\header {
	title = "Polished Mud"
	subtitle = "For accessable Grand Piano"
	composer = "Brian Ellis"
	tagline = ""
}

upper = \relative c {
  \clef bass
  \time 3/4
	\tempo 4 = 150
	\override NoteHead.style = #'cross
	<e g>2.\> ~<e g> ~<e g> ~<e g>
	~<e g>\! ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g>
	~<e g> ~<e g>~<e g> ~<e g>~<e g> ~<e g>~<e g> ~<e g>
	~<e g> ~<e g>~<e g> ~<e g>~<e g> ~<e g>~<e g> ~<e g>
	~<e g> ~<e g>~<e g> ~<e g>~<e g> ~<e g>~<e g> ~<e g>
	~<e g> ~<e g>~<e g> ~<e g>~<e g> ~<e g>~<e g> ~<e g>
	~<e g>
	~<e g>
	\clef treble
	r r r r
	<<{
	\override NoteHead.style = #'cross
	<d' e> ~<d e> ~<d e> ~<d e> ~<d e> ~<d e> ~<d e> ~<d e>
	}\\{
	s2. s s s s4. s4.\< s2. s4\!
	}>>
	r2. r r
	\clef bass
	<e, g>2. ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g>	 ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g>
	 ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g>
	 ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g>	 ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g> ~<e g>
	~<e g>\< ~<e g> ~<e g> ~<e g> ~<c e g>\!
}

%===========================================================================

lower = \relative c {
  \clef bass
  \time 3/4
	\set Staff.pedalSustainStyle = #'bracket
	\revert NoteHead.style
	r4 <e g>-.^\ppp^\< <e g>-.
	r <e g>-. <e g>-.
	r <e g>-. <e g>-.
	r <e g>-. <e g>-.^\!^\mp
	c4 <e g>-. <e g>-.
	c4 <e g>-. <e g>-.
	b <e g>-. <e g>-.
	b <e g>-. <e g>-.
	bes <e g>-. <e g>-.
	bes <e g>-. <e g>-.
	a, <e' g>-. <e g>-.
	a, <e' g>-. <e g>-.
	c8\sustainOn (e g a g e) c (e g a g e)
	b\sustainOff\sustainOn (e g a g e) b (e g a g e)
	bes\sustainOff\sustainOn (e g a g e) bes (e g a g e)
	a,\sustainOff\sustainOn (e' g a g e) a, (e' g a g e)
	
	c\sustainOff\sustainOn (e g <a a,> g e) c (e g <a a,> g e)
	b\sustainOff\sustainOn (e g <a a,> g e) b (e g <a a,> g e)
	bes\sustainOff\sustainOn (e g <a a,> g e) bes (e g <a a,> g e)
	a,\sustainOff\sustainOn (e' g <a a,> g e) a, (e' g <a a,> g e)
	
	c\sustainOff\sustainOn (e g) c, (e g) a, (e' g) c, (e g)
	b,\sustainOff\sustainOn (e g) b, (e g) a, (e' g) b, (e g)
	bes,\sustainOff\sustainOn (e g) bes, (e g) a, (e' g) bes, (e g)
	a,\sustainOff\sustainOn (e' g) a, (e' g) a, (e' g) a, (e' g)

	c,\sustainOff\sustainOn (e g) c, (e g) c, (e g) c, (e g)
	b,\sustainOff\sustainOn (e g) b, (e g) b, (e g) b, (e g)
	bes,\sustainOff\sustainOn (e g) bes, (e g) bes, (e g) bes, (e g)
	a,\sustainOff\sustainOn (e' g) a, (e' g) a, (e' g) a, (e' g)
	\override TextSpanner.bound-details.left.text = "rit."
	a,\startTextSpan (e' g a g e)
	a, (e' g a bes a\stopTextSpan)
	\times 2/3{ d,8^\mf^\<\sustainOff (f a) } c2->\sustainOn
	\times 2/3{ d,8\sustainOff (f a) } cis2->\sustainOn
	\times 2/3{ d,8\sustainOff (f a) }  b2->\sustainOn
	\times 2/3{ d,8\sustainOff (f a) }  bes4.->\sustainOn a8
	\times 2/3{ d,8\sustainOff (f a) }  d2->\sustainOn ~d2.
	\times 2/3{ d,8\sustainOff (f a) }  e'2->\sustainOn d2.
	\times 2/3{ d,8\sustainOff (f a) }  <d e>2\sustainOn\!^\f\startTrillSpan ~<d e>2.
	f2.^\<^\mf\stopTrillSpan c <cis dis>2.^\!^\ff~<cis dis>2.
	d2.\sustainOff^\mp\fermata

	c8\sustainOn (g e) c' (g e) c' (g e) c' (g e)
	b'\sustainOff\sustainOn (g e) b' (g e) b' (g e) b' (g e) 
	bes'\sustainOff\sustainOn (g e) bes' (g e) bes' (g e) bes' (g e) 
	b'\sustainOff\sustainOn (g e) b' (g e) b' (g e) b' (g e) 

	c'8\sustainOff\sustainOn (g e) c' (g e) e' (g, e) c' (g e)
	b'\sustainOff\sustainOn (g e) b' (g e) e' (g, e) b' (g e) 
	bes'\sustainOff\sustainOn (g e) bes' (g e) e' (g, e) bes' (g e) 
	b'\sustainOff\sustainOn (g e) b' (g e) d' (g, e) b' (g e) 

	c'\sustainOff\sustainOn (g e <c c'> e g) c (g e <c c'> e g)
	b\sustainOff\sustainOn (g e <c c'> e g) b (g e <c c'> e g)
	bes\sustainOff\sustainOn (g e <c c'> e g) bes (g e <c c'> e g)
	b\sustainOff\sustainOn (g e <c c'> e g) b (g e <c c'> e g)

	c8\sustainOff\sustainOn (g e c e g) c (g e c e g)
	b\sustainOff\sustainOn (g e c e g) b (g e c e g)
	bes\sustainOff\sustainOn (g e c e g) bes (g e c e g)
	b\sustainOff\sustainOn (g e c e g) b (g e c e g)

	c4\sustainOff <g e>-. <g e>-. c4  <g e>-. <g e>-.
	b  <g e>-. <g e>-. b  <g e>-. <g e>-.
	bes  <g e>-. <g e>-. bes  <g e>-. <g e>-.
	b  <g e>-. <g e>-. b  <g e>-. <g e>-.
	
	r4^\> <e g>-. <e g>-.
	r <e g>-. <e g>-.
	r <e g>-. <e g>-.
	r <e g>-. <e g>-- c2.\!^\ppp 
	\bar "|."
}

\score {
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 5)
                            (padding . 5))
  }<<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}