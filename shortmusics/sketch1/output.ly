
\version "2.24.2" % LilyPond version
\header {tagline=""}

\score{
\absolute {
\time 1/8
\override Score.BarLine.stencil = ##f
\override Staff.TimeSignature.stencil = ##f
\tempo 4=100
<<{
    dis'2 ais'4. f'2 ~f'4. a'1 ~a'8 gis'2 ~gis'8 b'2. d'1 e'1 ~e'4 g'1 ~g'4. fis'4 cis'8 c''1 ~c''2
    \revert Score.BarLine.stencil
    \bar "||"

    }\\{
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8

    }>>
}

\layout { }
\midi { }
}

