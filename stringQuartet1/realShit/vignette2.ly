#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  subtitle = "cars passing by on the freeway, and supttering in the parking lot"
  tagline = ""
  title = \markup{\normal-text"vignette 2"}
}
  \paper{
  indent = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  ragged-last-bottom = ##f
  print-all-headers = ##f
}

  \layout {
    ragged-right = ##f
    \context {
      \Staff
      \omit TimeSignature
    }
  }

\markup{
  \column{
    " "
    " "
    \bold"Instructions:"
    "Each performer repeats segment in their own time."
    "Overlap, playing with coming in and out of the overal texture."
    " "
    \bold"Overal durration: 60-90 seconds."
    "Violin 1 continues first to vignette 3."
    "After ~10+ seconds of melody, everyone else continues to vignette 3 in their own time."
    " "
  }
}

\score {

  \new Staff \with { instrumentName = "Violin 1" } \relative c'{
      \override Hairpin.circled-tip = ##t
    \time 11/4
    \bar ".|:" 
    <<{
      \xNotesOn
    <a' e'>1^\markup{\italic\column{
      "mute all strings with grip"
      "gnarly stutter sound via sul pont. + overpressure"
      "consistant volume throughout" }}
    
    }\\{
      \override NoteHead.transparent = ##t
      e16\mf [f g f e g f e g f e e g f f g f e g f e g f e e g e g f f g f e g f e g f e e g f]
      }>>
    \bar ":|." 
  }
}

\score {
  \new Staff \with { instrumentName = "Violin 2" } \relative c' {
  \override Hairpin.circled-tip = ##t
    \time 100/4
    \bar ".|:" 
    s4 ^\markup{\italic\column{
      " "
      "mute all strings with grip"
      "gnarly sound via sul pont. + overpressure"
    }}

    \xNotesOn
    \override Beam.grow-direction = #RIGHT
  \featherDurations 1
  { g64\< [(d' a' e') e (a, d, g,) g (d' a' e') e (a, d, g,) g (d' a' e') e (a, d, g,) ] }
    \override Beam.grow-direction = #LEFT
  \featherDurations 1
  { g64\f\> [(d' a' e') e (a, d, g,) g (d' a' e') e (a, d, g,) g (d' a' e') e (a, d, g,)\! ] }
  r1\fermata






    \bar ":|." 
  }
}

\score {
  \new Staff \with { instrumentName = "Viola" } \absolute {
    \bar ".|:" 
    \clef alto
    \time 100/4
      \override Hairpin.circled-tip = ##t
      \xNotesOn
   <c g>8\f^\markup{\italic\column{" " " " "mute all strings with grip" "sul pont." "improvise sporadic, harsh, and sparese rhythms. example of possible below:"}}
    r4.
    <a'>16 <d'>16 r8 r2 \times 2/5{r4 <c g d'>4 r8 <d' a'>16 r16}
    r16 <g d'>16 r4 <c>16 r8 r2
    \times2/3{r8 <a'>16 r4. <d' a'>8 <c g>32 <c>32 <g >32 r8 <d' a'>8} r4
    \bar ":|." 
  }
}

\score {
  \new Staff \with { instrumentName = "Cello" } \relative c {
    \clef bass
    \override Hairpin.circled-tip = ##t
     \time 110/4
    \bar ".|:" 
    <<{
      \xNotesOn
    <g d'>1^\markup{\italic\column{
      "mute all strings with grip"
      "gnarly stutter sound via sul pont. + overpressure"}}
    }\\{
      \override NoteHead.transparent = ##t
      s16 a16\< [f g f a g f a g f a a g f f g f a g f a g f\f\> a a g a g f f g f a g f a g f a a g f\!]       }>>
r1\fermata
    \bar ":|." 
  }
}

\markup{
  \column{
    " "
    "Phone 1 (following Violin 1): Drone on D"
    "Phone 2 (following Violin 2): Drone on B"
    "Phone 3 (following Viola): Drone on A"
    "Phone 4 (following Cello): Drone on F#"
  }
}
