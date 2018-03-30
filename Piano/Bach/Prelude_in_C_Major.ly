
#(set-global-staff-size 20)

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative g' {
\clef "treble" \key c \major \numericTimeSignature\time 4/4 | % 1
    \tempo 4=100 r8 g16 [ c16 ] e16 [ g,16 c16 e16 ] r8 g,16 [ c16 ] e16
    [ g,16 c16 e16 ] | % 2
    r8 a,16 [ d16 ] f16 [ a,16 d16 f16 ] r8 a,16 [ d16 ] f16 [ a,16 d16
    f16 ] \break | % 3
    r8 g,16 [ d'16 ] f16 [ g,16 d'16 f16 ] r8 g,16 [ d'16 ] f16 [ g,16
    d'16 f16 ] | % 4
    r8 g,16 [ c16 ] e16 [ g,16 c16 e16 ] r8 g,16 [ c16 ] e16 [ g,16 c16
    e16 ] \break | % 5
    r8 a,16 [ e'16 ] a16 [ a,16 e'16 a16 ] r8 a,16 [ e'16 ] a16 [ a,16
    e'16 a16 ] | % 6
    r8 fis,16 [ a16 ] d16 [ fis,16 a16 d16 ] r8 fis,16 [ a16 ] d16 [
    fis,16 a16 d16 ] \break | % 7
    r8 g,16 [ d'16 ] g16 [ g,16 d'16 g16 ] r8 g,16 [ d'16 ] g16 [ g,16
    d'16 g16 ] | % 8
    r8 e,16 [ g16 ] c16 [ e,16 g16 c16 ] r8 e,16 [ g16 ] c16 [ e,16 g16
    c16 ] \pageBreak | % 9
    r8 e,16 [ g16 ] c16 [ e,16 g16 c16 ] r8 e,16 [ g16 ] c16 [ e,16 g16
    c16 ] | \barNumberCheck #10
    r8 d,16 [ fis16 ] c'16 [ d,16 fis16 c'16 ] r8 d,16 [ fis16 ] c'16 [
    d,16 fis16 c'16 ] \break | % 11
    r8 d,16 [ g16 ] b16 [ d,16 g16 b16 ] r8 d,16 [ g16 ] b16 [ d,16 g16
    b16 ] | % 12
    r8 e,16 [ g16 ] cis16 [ e,16 g16 cis16 ] r8 e,16 [ g16 ] cis16 [ e,16
    g16 cis16 ] \break | % 13
    r8 d,16 [ a'16 ] d16 [ d,16 a'16 d16 ] r8 d,16 [ a'16 ] d16 [ d,16
    a'16 d16 ] | % 14
    r8 d,16 [ f16 ] b16 [ d,16 f16 b16 ] r8 d,16 [ f16 ] b16 [ d,16 f16
    b16 ] \break | % 15
    r8 c,16 [ g'16 ] c16 [ c,16 g'16 c16 ] r8 c,16 [ g'16 ] c16 [ c,16
    g'16 c16 ] | % 16
    r8 a,16 [ c16 ] f16 [ a,16 c16 f16 ] r8 a,16 [ c16 ] f16 [ a,16 c16
    f16 ] \break | % 17
    r8 a,16 [ c16 ] f16 [ a,16 c16 f16 ] r8 a,16 [ c16 ] f16 [ a,16 c16
    f16 ] | % 18
    r8 g,16 [ b16 ] f'16 [ g,16 b16 f'16 ] r8 g,16 [ b16 ] f'16 [ g,16 b16
    f'16 ] \pageBreak | % 19
    r8 g,16 [ c16 ] e16 [ g,16 c16 e16 ] r8 g,16 [ c16 ] e16 [ g,16 c16
    e16 ] | \barNumberCheck #20
    r8 bes16 [ c16 ] e16 [ bes16 c16 e16 ] r8 bes16 [ c16 ] e16 [ bes16
    c16 e16 ] \break | % 21
    r8 a,16 [ c16 ] e16 [ a,16 c16 e16 ] r8 a,16 [ c16 ] e16 [ a,16 c16
    e16 ] | % 22
    r8 a,16 [ c16 ] es16 [ a,16 c16 es16 ] r8 a,16 [ c16 ] es16 [ a,16 c16
    es16 ] \break | % 23
    r8 b16 [ c16 ] d16 [ b16 c16 d16 ] r8 b16 [ c16 ] d16 [ b16 c16 d16
    ] | % 24
    r8 g,16 [ b16 ] d16 [ g,16 b16 d16 ] r8 g,16 [ b16 ] d16 [ g,16 b16
    d16 ] \break | % 25
    r8 g,16 [ c16 ] e16 [ g,16 c16 e16 ] r8 g,16 [ c16 ] e16 [ g,16 c16
    e16 ] | % 26
    r8 g,16 [ c16 ] f16 [ g,16 c16 f16 ] r8 g,16 [ c16 ] f16 [ g,16 c16
    f16 ] \break | % 27
    r8 g,16 [ b16 ] f'16 [ g,16 b16 f'16 ] r8 g,16 [ b16 ] f'16 [ g,16 b16
    f'16 ] | % 28
    r8 a,16 [ c16 ] fis16 [ a,16 c16 fis16 ] r8 a,16 [ c16 ] fis16 [ a,16
    c16 fis16 ] \pageBreak | % 29
    r8 g,16 [ c16 ] g'16 [ g,16 c16 g'16 ] r8 g,16 [ c16 ] g'16 [ g,16 c16
    g'16 ] | \barNumberCheck #30
    r8 g,16 [ c16 ] f16 [ g,16 c16 f16 ] r8 g,16 [ c16 ] f16 [ g,16 c16
    f16 ] \break | % 31
    r8 g,16 [ b16 ] f'16 [ g,16 b16 f'16 ] r8 g,16 [ b16 ] f'16 [ g,16 b16
    f'16 ] | % 32
    r8 g,16 [ bes16 ] e16 [ g,16 bes16 e16 ] r8 g,16 [ bes16 ] e16 [ g,16
    bes16 e16 ] \break | % 33
    r8 f,16 [ a16 ] c16 [ f16 c16 a16 ] c16 [ a16 f16 a16 ] f16 [ d16 f16
    d16 ] \break | % 34
    r8 g'16 [ b16 ] d16 [ f16 d16 b16 ] d16 [ b16 g16 b16 ] d,16 [ f16 e16
    d16 ] \break | % 35
    <e g c>1 \bar "|."




    }

PartPTwoVoiceOne =  \relative c' {
    \clef "bass" \key c \major \numericTimeSignature\time 4/4 s16
    e8. ~ e4 s16  e8. ~ e4 | % 2
	s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4 s16  e8. ~ e4 | % 2
    s16 e8. ~ e4~e2
    

    }

PartPTwoVoiceTwo =  \relative c' {
    \clef "bass" \key c \major \numericTimeSignature\time 4/4 c2 c2 | % 2
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c2 c2  | % 3
    c1

    }


% The score definition
\score {
    <<
        \new Staff <<
            \set Staff.instrumentName = ""
            \set Staff.shortInstrumentName = ""
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = ""
            \set Staff.shortInstrumentName = ""
            \context Staff << 
                \context Voice = "PartPTwoVoiceOne" { \voiceOne \PartPTwoVoiceOne }
                \context Voice = "PartPTwoVoiceTwo" { \voiceTwo \PartPTwoVoiceTwo }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
      \midi {}
    }

