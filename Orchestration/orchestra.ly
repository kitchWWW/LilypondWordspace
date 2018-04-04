fluteMusic = \relative c' { \key g \major g'1 b }

% Pitches as written on a manuscript for Clarinet in A
% are transposed to concert pitch.

clarinetMusic = \transpose c' a
  \relative c'' { \key bes \major bes1 d }

trumpetMusic = \relative c { \key g \major g''1 b }

% Key signature is often omitted for horns

hornMusic = \transpose c' f
  \relative c { d'1 fis }

percussionMusic = \relative c { \key g \major g1 b }

sopranoMusic = \relative c'' { \key g \major g'1 b }

sopranoLyrics = \lyricmode { Lyr -- ics }

altoIMusic = \relative c' { \key g \major g'1 b }

altoIIMusic = \relative c' { \key g \major g'1 b }

altoILyrics =  \sopranoLyrics

altoIILyrics = \lyricmode { Ah -- ah }

tenorMusic = \relative c' { \clef "treble_8" \key g \major g1 b }

tenorLyrics = \sopranoLyrics

pianoRHMusic = \relative c { \key g \major g''1 b }

pianoLHMusic = \relative c { \clef bass \key g \major g1 b }

violinIMusic = \relative c' { \key g \major g'1 b }

violinIIMusic = \relative c' { \key g \major g'1 b }

violaMusic = \relative c { \clef alto \key g \major g'1 b }

celloMusic = \relative c { \clef bass \key g \major g1 b }

bassMusic = \relative c { \clef "bass_8" \key g \major g,1 b }

\score {
  <<
    \new StaffGroup = "StaffGroup_woodwinds" <<
      \new Staff = "Staff_flute" \with { instrumentName = #"Flute" }
      \fluteMusic

      \new Staff = "Staff_clarinet" \with {
        instrumentName = \markup { \concat { "Clarinet in B" \flat } }
      }

      % Declare that written Middle C in the music
      % to follow sounds a concert B flat, for
      % output using sounded pitches such as MIDI.
      %\transposition bes

      % Print music for a B-flat clarinet
      \transpose bes c' \clarinetMusic
    >>

    \new StaffGroup = "StaffGroup_brass" <<
      \new Staff = "Staff_hornI" \with { instrumentName = #"Horn in F" }
       % \transposition f
        \transpose f c' \hornMusic

      \new Staff = "Staff_trumpet" \with { instrumentName = #"Trumpet in  C" }
      \trumpetMusic

    >>
    \new RhythmicStaff = "RhythmicStaff_percussion"
    \with { instrumentName = #"Percussion" }
    <<
      \percussionMusic
    >>
    \new PianoStaff \with { instrumentName = #"Piano" }
    <<
      \new Staff { \pianoRHMusic }
      \new Staff { \pianoLHMusic }
    >>
    \new ChoirStaff = "ChoirStaff_choir" <<
      \new Staff = "Staff_soprano" \with { instrumentName = #"Soprano" }
      \new Voice = "soprano"
      \sopranoMusic

      \new Lyrics \lyricsto "soprano" { \sopranoLyrics }
      \new GrandStaff = "GrandStaff_altos"
      \with { \accepts Lyrics } <<
        \new Staff = "Staff_altoI"  \with { instrumentName = #"Alto I" }
        \new Voice = "altoI"
        \altoIMusic

        \new Lyrics \lyricsto "altoI" { \altoILyrics }
        \new Staff = "Staff_altoII" \with { instrumentName = #"Alto II" }
        \new Voice = "altoII"
        \altoIIMusic

        \new Lyrics \lyricsto "altoII" { \altoIILyrics }
      >>

      \new Staff = "Staff_tenor" \with { instrumentName = #"Tenor" }
        \new Voice = "tenor"
        \tenorMusic

      \new Lyrics \lyricsto "tenor" { \tenorLyrics }
    >>
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"Violin I" }
        \violinIMusic

        \new Staff = "Staff_violinII" \with { instrumentName = #"Violin II" }
        \violinIIMusic
      >>

      \new Staff = "Staff_viola" \with { instrumentName = #"Viola" }
      \violaMusic

      \new Staff = "Staff_cello" \with { instrumentName = #"Cello" }
      \celloMusic

      \new Staff = "Staff_bass" \with { instrumentName = #"Double Bass" }
      \bassMusic
    >>
  >>
  \layout { }
}
