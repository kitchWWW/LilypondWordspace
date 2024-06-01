#(set-default-paper-size "ansi a")

\header {
  % dedication = \markup{\column{\italic"for finding and releasing attention" " "}}
  subtitle = ""
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
    "After finishing your last swell, continue attacca to vignette 2."
    " "
    \bold"TODO: write v2, cello, change notes in v1 and vla., instructions."
    " "
  }
}

\score {

  \new Staff \with { instrumentName = "Violin 1" } \relative c'{
      \override Hairpin.circled-tip = ##t
    \key d \major
    \time 11/4
    \bar ".|:" 
      \xNotesOn
    <g d' a' e'>1^\markup{\italic\column{"mute all strings with grip" "gnarly stutter sound via sul pont. + overpressure" "(rhythm comes from overpressure stutter; aliatoric)" }}
    <g d' a' e'>1
    r2\!
    \bar ":|." 
  }
}

\score {
  \new Staff \with { instrumentName = "Violin 2" } \relative c{
  \override Hairpin.circled-tip = ##t

    \key d \major
    \time 100/4
    \bar ".|:" 
    <g' g'>1 \< (<g g'>1\f\>) s4\! r1
    \bar ":|." 
  }
}

\score {
  \new Staff \with { instrumentName = "Viola" } \relative c {
    \bar ".|:" 
    \clef alto
    \key d \major
    \time 100/4
      \override Hairpin.circled-tip = ##t
      \xNotesOn
    <c g' d' a'>8\f^\markup{\italic\column{" " " " "mute all strings with grip" "sul pont." "improvise sporadic, harsh, and sparese rhythms. example of possible below:"}}
    r4.
    <c g' d' a'>16 <c g' d' a'>16 r8 r2 \times 2/5{r4 <c g' d' a'>4 r8 <c g' d' a'>16 r16}
    r16 <c g' d' a'>16 r4 <c g' d' a'>16 r8 r2
    \times2/3{r8 <c g' d' a'>16 r4. <c g' d' a'>8 <c g' d' a'>32 <c g' d' a'>32 <c g' d' a'>32 r8 <c g' d' a'>8} r4

    \bar ":|." 
  }
}

\score {
  \new Staff \with { instrumentName = "Cello" } \relative c {
    \clef bass
    \key d \major
    \override Hairpin.circled-tip = ##t
    \time 19/4
    \bar ".|:" 
    <a d>1\< s1\f\> s1 s1 s4\! r2
    \bar ":|." 
  }
}

\markup{
  \column{
    " "
    "Phone 1 (following Violin 1): Drone on D"
    "Phone 2 (following Violin 2): Drone on D"
    "Phone 3 (following Viola): Drone on A"
    "Phone 4 (following Cello): Drone on F#"
  }
}
