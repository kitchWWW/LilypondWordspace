#(set-global-staff-size 15)

\header {
  title = "<<Sound Collage Transcript>>"
  subtitle = ""
  subsubtitle = "Speaking String Quartet"
  composer = "Brian Ellis"
  tagline = ""
}


global= {
  \time 4/4
  \key c \major
  \tempo 4 = 60
}

violinOne = \new Voice \relative c'' {
  r1 r4
    \override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { <g, e' c' g'>16\p\< [ <g e' c' g'> <g e' c' g'><g e' c' g'> ] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { <g e' c' g'>16\ff\> [ <g e' c' g'><g e' c' g'><g e' c' g'>\p\! ] }
  r4
  r1 r1
  \bar "|."
}

violinTwo = \new Voice \relative c'' {

  r4 c4^\markup{\italic"pizz."}\f ~ c16 d8. \times 2/3{e2 c4} e4. c8 r4
  
  r2 r8 a4 c8 

  \times 4/5{r16 g8. a16}
  \times 4/5{r16 g8 a8}


  \times 2/3{c4 d e}

  \bar "|."
}

viola = \new Voice \relative c' {
  \clef alto
  <a c>2\mp ~ \times 2/3{<a c>4 <c e>8 ~ }<c e>4
  ~<c e>2 <a c>2 ~ <a c>8.. r32 r8 <c e>8 ~ <c e>2 ~
  \times 2/3{<c e>4 <c a>8 ~ } <c a>2 ~ <c a>8. r16
  \bar "|."
}

cello = \new Voice \relative c {
  \clef bass
  g'8\mp r8 g2. ~ g2 \breathe g2 
  r4 \times 2/3{r4 g8 ~} g2 ~ g1
  \bar "|."
}


lyricBit = \new Voice \relative c'' {
  \clef treble
  \xNotesOn
  c2_\markup{\italic"spoken, lasting for the duration of the note"}^"a little better tonight"
  c2^"hope you remember everything's gunna be alright"
  ~c4 r2 r8 c8^"I hope"
  ~c2..^"you remember there are good memories you haven't made yet" r8
  r2 c2^"I hope you sleep a little better"
  \bar "|."
}

phone = \new Voice \relative c'' {
  \clef treble
    \xNotesOn
  \times 2/3{a8\f^"(bbb)" c16.^"(sh)" c32~c8}
  \times 2/3{a8 c4}
  \times 3/4{a8 c c c} a8 c4
  r4 r8 a16 c
  \times 4/5{a4 c16}
  r2
  r16 a8 c16~c8 r16 a16 ~ a16 c c c
  % 13
  c8 a8
  %14
  c16 c a c
  %15
  r8 a8
  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Violin 1" }
    << \global \violinOne >>
    \new Staff \with { instrumentName = "Violin 2" }
    << \global \violinTwo >>
    \new Staff \with { instrumentName = "Viola" }
    << \global \viola >>
    \new Staff \with { instrumentName = "Cello" }
    << \global \cello >>
    \new Staff \with { instrumentName = "Voice 1" }
    << \global \phone >>
    \new Staff \with { instrumentName = "Voice 2" }
    << \global \lyricBit >>
  >>
  \layout { }
  \midi { }
}