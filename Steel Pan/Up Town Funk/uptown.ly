
\version "2.18.2"
% automatically converted by musicxml2ly from uptown.xml

\header {tagline = " "}

#(set-global-staff-size 20)
\paper {
    paper-width = 21.59\cm
    paper-height = 27.93\cm
    top-margin = 1.27\cm
    bottom-margin = 1.27\cm
    left-margin = 2.53\cm
    right-margin = 1.27\cm
    between-system-space = 2.19\cm
    page-top-space = 1.27\cm
  print-all-headers = ##t
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
tenorVoiceOne =  \relative c'' {
	 \set Score.markFormatter = #format-mark-box-alphabet
    \clef "treble" \key c \major \numericTimeSignature\time 4/4 | % 1
    \tempo 4=110
	\xNotesOn
	r4 b^"Clap" r b 
	r4 b r b 
	r4 b r b 
	r4 b r b | % 5
	\xNotesOff
    <c f>8. \mp [ <c f>16 ] r4 <c f>8. [ <c f>16 ] r4 | % 6
    <b f'>8. [ <b f'>16 ] r8  <b f'>8 r8 <b f'>8 <b f'>16 [ <b f'>8. ] | % 7
    <c f>8. [ <c f>16 ] r4 <c f>8. [ <c f>16 ] r4 | % 8
    <b f'>8. [ <b f'>16 ] r8  <b f'>8  r4 <b f'>16\f [ <b f'>8.  ] | \mark \default % 9
    <f>8.\mp [ <f>16 ] r8 c8 d8. [ d16 ] r8 c8 | \barNumberCheck #10
    d8. [ d16 ] r16 c16 [ c8 ] d8. [ d16 ] r4 | % 11
    <f>8. [ <f>16  ] r16 c16 [c8 ] d8. [ d16 ] r8 c8 | % 12
    d8. [ d16 ] r8 c8 f8 [ f16 c16 ~ ] c8 [ c8 ]  | % 13
    c8. [ c16 ] r4 c8. [ c16 ] r4 | % 14
    c16 \mf[ c16 c16 c16 ] r16 c16 [ c8 ] d16 [ d8. ] r8 d8 | % 15
    <f>8. [ <f>16 ] r8 c8 d8 [ c16 d16 ] r8 c16 [ c16 ] | % 16
    d8 [ c16 d16 ] r8 c8 r4. f'8\f \bar ".|:"  \mark \default %17
    <f>4 r8 c8 c4 r8 c16 [ c16 ] | % 18
    c8. [ d16 ] r16 d16 [ d8 ] d8 [ c16 c16 ~ ] c16 [ c16 f8 ]  | % 19
    <f>4 r8 c8 c4 r8 c16 [ c16 ] | \barNumberCheck #20
    c8 [ d16 d16 ~ ] d16 [ d16 d8 ] d8 [ c16 c16 ~ ] c16 [ c16 f8 ] | % 21
    <f>4 r8 c8 c4 r8 <f>8  | % 22
    <b, f'>16 [ <b f'>8 <b f'>16 ] r16 <b f'>16 [ <b f'>8 ] <b f'>16 [ <b f'>8 <b f'>16 ~ ] ~ <b f'>16 [ c16 f8 ] | % 23
    <f>4 r8 c8 c4 r8 c16 [ c16 ] | % 24
    d8 [ c16 d16 ~ ] d8 [ c8 ] r2 |  \mark \default % 25
    r4 r4 r4 d4\ff^"Second time \"Whoo!\" " | % 26
    r4 r4 r4 d4^"Whoo!" | % 27
    r4 r4 r4 d4^"Whoo!"  | % 28
    r4 r4 r4 d8.^"Whoo!" [ f16 ] | % 29
    <f, f'>8\mp\< [ <f f'>8 ] <f f'>8 [ <f f'>16 <f f'>16 ] <f f'>16 [ <f f'>16
    <f f'>16 <f f'>16 ] d'8 [ r16 <f, f'>16 ] | \barNumberCheck #30
    <f f'>8 [ <f f'>8 ] <f f'>8 [ <f f'>16 <f f'>16 ] <f f'>16 [ <f f'>16
    <f f'>16 <f f'>16 ] d'8 s8  | % 31
    <f, f'>16 [ <f f'>16 <f f'>16 <f f'>16 ] r16 <f f'>16 [ <f f'>8 ] <f
        f'>8 [ <f f'>16 <f f'>16 ] d'8 r8 | \mark \default % 32
    <g, g'>8\ff [ f16 g16 ] r16 f16 [ g8 ] f4 <f f'>16 [ <f f'>16 ] r8 | % 33
    f'16\mf [ d16 c16 d16 ] r8 f16 [ d16 ] c16 [ d8. ] f8 [ d8 ] | % 34
    g8. [ f16 ] r8 d8 g8 [ f8 ] f16 [ e16 d16 c16 ] | % 35
    d4 r4 r2 | % 36
    r2 r8 f16\f [ f16 ] f16 [ f16 f16 f16 ] | % 37
    f16\mf [ d16 c16 d16 ] r8 f16 [ d16 ] c16 [ d8. ] f8 [ d8 ]  | % 38
    g8. [ f16 ] r8 d8 g8 [ f8 ] f16 [ e16 d16 c16 ] | % 39
    d4 r4 r2 | \barNumberCheck #40
    r2 r8 f16\mf\< [ f16 ] f16 [ f16 f16 f16 ]  | % 41
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ] | % 42
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ] | % 43
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ]  | % 44
    r8 f, r g r d' r4 ^\markup {\musicglyph #"scripts.coda"} |  \mark \default % 45
    f4\ff^"\"STOP!\"" r4 d,16\mp^"\"wait a minute\"" [ d16 c16 c16 ] r4 | % 46
    R1*2  | % 48
    c'16\mf [ c16 c8 ] r8 c16 [ c16 ] d4 r4 | % 49
    R1*2  | % 51
    R1*2 \bar ":|."   \mark \default % 53 


	\key f \minor

	f4\ff\>^\markup {\musicglyph #"scripts.coda"} ees des c aes16\mf [bes bes bes] r4 aes16 [bes bes bes] r4 
	f'4\f\> ees des c aes16\mf [bes bes bes] r4 aes16 [bes bes bes] r4 
	f'4\f\> ees des c aes16\mf [bes bes bes] r4 aes16 [bes bes bes] r4 
	f'4\f\> ees des c aes16\mp [bes bes f'\f\>]~f2.:16
	ees2.:16 ~ ees16 [f ees des]
	des1 :16
	c1 :16
	 \mark \default
	<aes c>1:16\p ~<aes c>1:16 ~<aes c>1:16 ~<aes c>1:16
	f'16\f\> [f f f] ees [ees ees ees] des [des des des] c [c c c]
	aes16\mf [bes bes bes] r4 aes16 [bes bes bes] r4 
	f'16\ff\> [f f f] ees [ees ees ees] des [des des des] c [c c c]
	aes16\mf [bes bes bes] r4 ees4\f f16 [f] r8 
	
	\key c \major
	
 \mark \default

	f16\f [ d16 c16 d16 ] r8 f16 [ d16 ] c16 [ d8. ] f8 [ d8 ] | % 34
    g8. [ f16 ] r8 d8 g8 [ f8 ] f16 [ e16 d16 c16 ] | % 35
    bes16 [c c c] r4 bes16 [c c c] r4  | % 36
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ] | % 37
    f16 [ d16 c16 d16 ] r8 f16 [ d16 ] c16 [ d8. ] f8 [ d8 ]  | % 38
    g8. [ f16 ] r8 d8 g8 [ f8 ] f16 [ e16 d16 c16 ] | % 39
    bes16 [c c c] r4 bes16 [c c c] r4  |
    r2 r8 f16\mf\< [ f16 ] f16 [ f16 f16 f16 ]  | % 41
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ] | % 42
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ] | % 43
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ]  | % 44
    r8 f, r g r d'\ff r4 | % 45
	 \mark \default
    <f, f'>4\mp\< <f f'>4 <f f'>8 [ <f f'>16 <f f'>16 ] r4  | % 54
    <f f'>8 [ <f f'>8 ] <f f'>8 [ <f f'>16 <f f'>16 ~ ] ~ <f f'>4 <f f'>8
    [ <f f'>8 ] | % 55
    <f f'>4 <f f'>4 <f f'>8 [ <f f'>16 <f f'>16 ] r4 | % 56
 <f f'>8 [ <f f'>8 ] <f f'>8 [ <f f'>16 <f f'>16 ] c'16 [ c16 d16 <f, f'>16 ~ ] ~ <f f'>8 [ d'8 ]  | % 57
    <f, f'>4 <f f'>4 <f f'>8 [ <f f'>16 <f f'>16 ] r4 | % 58
    <f f'>8 [ <f f'>8 ] <f f'>8 [ <f f'>16 <f f'>16 ~ ] ~ <f f'>4 <f f'>8
    [ <f f'>8 ] | % 59
    <f f'>4 <f f'>4 <f f'>8 [ <f f'>16 <f f'>16 ] r4  |
    <f f'>16 [ <f f'>16 <f f'>16 <f f'>16 ] r16 <f f'>8 [ <f f'>16 ] <f
        f'>16 [ <f f'>16 <f f'>16 ] r16 <f f' \parenthesize f'>4\fff \bar "|."



    }

DoublesVoiceOne =  \relative d' {
 \set Score.markFormatter = #format-mark-box-alphabet
    \clef "treble" \key c \major \numericTimeSignature\time 4/4
	\xNotesOn
	b'4\rest b^"Clap" b\rest b 
	b\rest b b\rest b 
	b\rest b b\rest b 
	b\rest b b\rest b
	\xNotesOff
     | % 5
    <d, c'>8. \mf [ <d c'>16 ] r4 <d c'>8. [ <d c'>16 ] r4 | % 6
    <d b'>8. [ <d b'>16 ] r8 <d b'>8 r8 <d b'>8 <d b'>16 [ <d b'>8. ] | % 7
    <d c'>8. [ <d c'>16 ] r4 <d c'>8. [ <d c'>16 ] r4 | %8
    <d b'>8. [ <d b'>16 ] r8 <d b'>8 r4 <b' f'>16\f [ <b f'>8. ] 
     \mark \default
    c8.\mp [ c16 ] r4 c8. [ c16 ] r4 | \barNumberCheck #10
    b8. [ b16 ] r4 b8. [ b16 ] r4 | % 11
    c8. [ c16 ] r4 c8. [ c16 ] r4 | % 12
    b8. [ b16 ] r4 b8. [ b16 ] r4  | % 13
    c8. [ c16 ] r4 c8. [ c16 ] r4 | %14
    b8. [ b16 ] r4 b8. [ b16 ] r4  | % 15
    c8. [ c16 ] r4 c8. [ c16 ] r4 | %16
    b8. [ b16 ] r4 a,8\mp [ a8 ] a16 [ c16 f8 ] \bar ".|:"   \mark \default %17
    r4 r8 a8\f a4 f'4 :32 | % 18
    R1  | % 19
    r4 r8 a,8 a4 f'4 :32 | \barNumberCheck #20
    R1 | % 21
    r4 r8 a,8 a4 f'4 :32  | % 22
    R1 | % 23
    r4 r8 a,8 a4 f'4 :32 | % 24
    R1  |  \mark \default % 25
    c,8. \mp\<[ c16 ~ ] c16 [ c16 c16 c16 ] d8 [ d8 ] r4^"Second time \"Whoo!\" " | % 26
    c8. [ c16 ~ ] c16 [ c16 c16 c16 ] d8 [ d8 ] r4^"Whoo!" | % 27
    f8. [ f16 ~ ] f16 [ f16 f16 f16 ] f8 [ f8 ] r8.^"Whoo!" f16  | % 28
    f8 [ f8 ] f8 [ f16 f16 ] f16 [ f16 f16 f16 ] r8.\ff^"Whoo!"  <f f,>16\mp\< | % 29
    <f, f'>8 [ <f f'>8 ] <f f'>8 [ <f f'>16 <f f'>16 ] <f f'>16 [ <f f'>16
    <f f'>16 <f f'>16 ] r8 r16 <f f'>16 | \barNumberCheck #30
    <f f'>8 [ <f f'>8 ] <f f'>8 [ <f f'>16 <f f'>16 ] <f f'>16 [ <f f'>16
    <f f'>16 <f f'>16 ~ ] ~ <f f'>4  | % 31
    <f f'>16 [ <f f'>16 <f f'>16 <f f'>16 ] r16 <f f'>16 [ <f f'>8 ] <f
        f'>8 [ <f f'>16 <f f'>16 ] r4 |  \mark \default % 32
    <f' f,>4\ff r4 r4 <f, f'>16 [ <f f'>16 ] r8 | % 33
    f'16\mf [ d16 c16 d16 ] r8 f16 [ d16 ] c16 [ d8. ] f8 [ d8 ] | % 34
    d8. [ f16 ] r8 d8 d8 [ f8 ] f16 [ e16 d16 c16 ] | % 35
    d8 [c c c] c [c c16 d8.] | % 36
    g8\f [ f16 g16 ] r16 f16 [ g8 ] f4 r4 | % 37
    f16\mf [ d16 c16 d16 ] r8 f16 [ d16 ] c16 [ d8. ] f8 [ d8 ]  | % 38
    d8. [ f16 ] r8 d8 d8 [ f8 ] f16 [ e16 d16 c16 ] | % 39
    d8 [c c c] c [c c16 d8.] | \barNumberCheck #40
    g8\f [ f16 g16 ] r16 f16 [ g8 ] f4 r4  | % 41
    g8 [ f16 g16 ] r16 f16 [ g8 ] f4 r4 | % 42
    c'8 [ a16 c16 ] r 16 a16[ c8 ] f,4 r4 | % 43
    c'8 [ a16 c16 ] r 16 a16[ c8 ] f,4 r8 d8\< | % 44
    r8 f r g8 r d' r4 ^\markup {\musicglyph #"scripts.coda"} |   % 45
	 \mark \default
    f4\ff^"\"STOP!\"" r 
	\xNotesOn
	d,16\mp^"\"wait a minute\"" [d c c] r4 | % 46
    \xNotesOff
	f16\mf [ f8 f16 ] r8 f16 [ f16 ] f16 [ f16 f16 f16 ] r4 | % 47
    f8 [ f16 f16 ] r2.  | % 48
    c16 [ c16 c8 ] r8 c16 [ c16 ] d4 c8 [ c8 ] | % 49
    c8. [ c16 ] r4 c8 [ c16 c16 ] r4 | \barNumberCheck #50
    c8. [ c16 ] r8 c16 [ c16 ] d16 [ d8. ] r8 d8  | % 51
    f8. [ f16 ] r16 c16 [ c16 c16 ] d8. [ d16 ~ ] d4 | % 52
    d16 [ c16 d16 c16 ] d8 [ c8 ] a8 [ a8 ] a16 [ c16 f8 ] \bar ":|." % 53
	 \mark \default

	\key f \minor

	des'4\ff\>^\markup {\musicglyph #"scripts.coda"} c bes aes ees16 \mf [f f f] r4 ees16 [f f f] r4
	des'4\f\> c bes aes ees16\mf [f f f] r4 ees16 [f f f] r4
	r8\f\> bes16 [bes] r8 bes16 [bes] r8 bes16 [bes] r8 bes16 [bes] 
	ees,16\mp [f f f] r4 ees16 [f f f] r4
	r8\f\> bes16 [bes] r8 bes16 [bes] r8 bes16 [bes] r8 bes16 [bes] 
	ees,16\mp [f f bes\f\>] ~bes2. :16
	c2. :16 ~c16 [des c bes]
	aes1 :16
	aes1 :16
	 \mark \default
	f1\p :16 ~f1:16 ~f1:16 ~f1:16
	des'16\f\> [des des des] c [c c c] bes [bes bes bes] aes [aes aes aes]	ees16\mf [f f f] r4 ees16 [f f f] r4
	des'16\ff\> [des des des] c [c c c] bes [bes bes bes] aes [aes aes aes]	ees16\mf [f f f] r4 ees4\f f16 [f] r8
	
	\key c \major
	
	 \mark \default
	
	f16\mf [ d16 c16 d16 ] r8 f16 [ d16 ] c16 [ d8. ] f8 [ d8 ] | % 34
    d8. [ f16 ] r8 d8 d8 [ f8 ] f16 [ e16 d16 c16 ] | % 35
    d8 [c c c] c [c c16 d8.] | % 36
    g8\f [ f16 g16 ] r16 f16 [ g8 ] f4 r4 | % 37
    f16\mf [ d16 c16 d16 ] r8 f16 [ d16 ] c16 [ d8. ] f8 [ d8 ]  | % 38
    d8. [ f16 ] r8 d8 d8 [ f8 ] f16 [ e16 d16 c16 ] | % 39
    d8 [c c c] c [c c16 d8.] | \barNumberCheck #40
    g8\f [ f16 g16 ] r16 f16 [ g8 ] f4 r4  | % 41
    g8 [ f16 g16 ] r16 f16 [ g8 ] f4 r4 | % 42
    c'8 [ a16 c16 ] r 16 a16[ c8 ] f,4 r4 | % 43
    c'8 [ a16 c16 ] r 16 a16[ c8 ] f,4 r8 d8\< | % 44
    r8 f r g8 r d' r4 | % 45
	 \mark \default
    <f,, f'>4\mp\< <f f'>4 <f f'>8 [ <f f'>16 <f f'>16 ] r4  | % 54
    <f f'>8 [ <f f'>8 ] <f f'>8 [ <f f'>16 <f f'>16 ~ ] ~ <f f'>4 <f f'>8
    [ <f f'>8 ] | % 55
    <f f'>4 <f f'>4 <f f'>8 [ <f f'>16 <f f'>16 ] r4 | % 56
    <f f'>8 [ <f f'>8 ] <f f'>8 [ <f f'>16 <f f'>16 ] c'16 [ c16 d16 <f, f'>16 ~ ] ~ <f f'>8 [ d'8 ]  | % 57
    <f, f'>4 <f f'>4 <f f'>8 [ <f f'>16 <f f'>16 ] r4 | % 58
    <f f'>8 [ <f f'>8 ] <f f'>8 [ <f f'>16 <f f'>16 ~ ] ~ <f f'>4 <f f'>8
    [ <f f'>8 ] | % 59
    <f f'>4 <f f'>4 <f f'>8 [ <f f'>16 <f f'>16 ] r4  |
    <f f'>16 [ <f f'>16 <f f'>16 <f f'>16 ] r16 <f f'>8 [ <f f'>16 ] <f
        f'>16 [ <f f'>16 <f f'>16 ] r16 <f f'>4\fff \bar "|."

    }

GuiCelVoiceOne =  \relative d {
 \set Score.markFormatter = #format-mark-box-alphabet
    \clef "bass" \key c \major \numericTimeSignature\time 4/4
	\xNotesOn
	r4 b^"Clap" r b 
	r4 b r b 
	r4 b r b 
	r4 b r b
	r4 b r b 
	r4 b r b 
	r4 b r b 
	r4 b r b
	\xNotesOff
     |\mark \default % 9
    d1 :16\mp | \barNumberCheck #10
    g1 :16 | % 11
    d1 :16 | % 12
    g1 :16  | % 13
    d1 :16 | % 14
    g1 :16 | % 15
    d1 :16  | % 16
    g2 :16 <d a'>8\mp <d a'> <d a'> r \bar ".|:"   \mark \default %17
    c8\f [ c8 c8 c8 ] c8 [ c8 ] c16 [ d8. ] | % 18
    R1  | % 19
    c8 [ c8 c8 c8 ] c8 [ c8 ] c16 [ d8. ] | \barNumberCheck #20
    R1 | % 21
    c8 [ c8 c8 c8 ] c8 [ c8 ] c16 [ d8. ]  | % 22
    R1 | % 23
    c8 [ c8 c8 c8 ] c8 [ c8 ] c16 [ d8. ] | % 24
    R1  |     \mark \default   % 25
    c8.\mp\< [ c16 ~ ] c16 [ c16 c16 c16 ] d8 [ d8 ] r4 ^"Second time \"Whoo!\" "| % 26
    c8. [ c16 ~ ] c16 [ c16 c16 c16 ] d8 [ d8 ] r4^"Whoo!" | % 27
    f8. [ f16 ~ ] f16 [ f16 f16 f16 ] f8 [ f8 ] r8.^"Whoo!" f16  | % 28
    f8 [ f8 ] f8 [ f16 f16 ] f16 [ f16 f16 f16\ff ] r4^"Whoo!"  | % 29
    r8 g,8\mf\< [ r8 as8 ] r8 a8 [ r8 bes8 ] | \barNumberCheck #30
    r8 b8 [ r8 c8 ] r8 des8 [ r8 d8 ]  | % 31
    r8 es8 [ r8 e8 ] r8 f8 [ r8 fis8 ] |   \mark \default  % 32
    f4\ff r4 r4 <f, f'>16 [ <f f'>16 ] r8 | % 33
    d4\f r4 r4 r8 d8  | % 34
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 35
    d4 r4 r4 r8 d8 | % 36
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 37
    r2 r4 r8 d8  | % 38
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 39
    d4 r4 r4 r8 d8 | \barNumberCheck #40
    g8. [ f16 d8 ] c4 c4 r8  | % 41
    r2 r8 f16\mf\< [ f16 ] f16 [ f16 f16 f16 ] | % 42
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ] | % 43
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ]  | % 44
    d'4 d d d^\markup {\musicglyph #"scripts.coda"}    \mark \default  
	f4\ff^"\"STOP!\"" r4
	\xNotesOn
	d16\mp^"\"wait a minute\"" [d c c]
	\xNotesOff
	r4
	R1 | % 47
    r2 d8\mp [ d16 c16 ] r4  | % 48
    g'1 :16 | % 49
    d1 :16 | \barNumberCheck #50
    g1 :16  | % 51
    d1 :16 | % 52
    g2 :16 <d a'>8 <d a'> <d a'> r \bar ":|." % 53
  \mark \default  

	\key f \minor

	<des f>4\ff\> ^\markup {\musicglyph #"scripts.coda"} <des f><des f><des f>
	<des f>1 :16 \mf
	<des f>4<des f><des f><des f>
	<des f>1 :16
	<des f>4<des f><des f><des f>
	<des f>1 :16
	<des f>4<des f><des f><des f>
	<des f>1 :16
	<c ees>1 :16
	<aes des>1:16
	<aes c>1:16   \mark \default  
	ees'16\f [f8 aes16] r8 ees8 r c bes16 [c8 ees16]
	bes16 [c16 ees8] r bes8 c [ees f aes]
		ees16 [f8 aes16] r8 ees8 r c bes16 [c8 ees16]
	bes16 [c16 ees8] r bes8 c [ees f aes]
		ees16 [f8 aes16] r8 ees8 r c bes16 [c8 ees16]
	bes16 [c16 ees8] r bes8 c [ees f aes]
	ees16 [f8 aes16] r8 ees8 r c bes16 [c8 ees16]
	bes16 [c16 ees8] r4 bes4 bes16 [bes] r8
	
  \mark \default  
	\key c \major
	
    d,4\f r4 r4 r8 d8  | % 34
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 35
    d4 r4 r4 r8 d8 | % 36
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 37
    r2 r4 r8 d8  | % 38
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 39
    d4 r4 r4 r8 d8 |
    g8. [ f16 d8 ] c4 c4 r8  | % 41
    r2 r8 f16\mf\< [ f16 ] f16 [ f16 f16 f16 ] | % 42
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ] | % 43
    r2 r8 f16 [ f16 ] f16 [ f16 f16 f16 ]  | % 44
    d4 d d d
	  \mark \default  
    d4 \f\< d'4 c4 a8 [ d,8 ]  | % 54
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 55
    d4 d'4 c4 a8 [ d,8 ] | % 56
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8  | % 57
    d4 d'4 c4 a8 [ d,8 ] | % 58
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 59
    d4 d'4 c4 a8 [ d,8 ]  |
    <d d'>16 [ <d d'>16 <d d'>16 <d d'>16 ] r16 <d d'>8 [ <d d'>16 ] <d
        d'>16 [ <d d'>16 <d d'>16 ] r16 <d d'>4\fff \bar "|."






    }
BassVoiceOne =  \relative d, {
 \set Score.markFormatter = #format-mark-box-alphabet
    \clef "bass" \key c \major \numericTimeSignature\time 4/4 | % 1
    d4 \f r4 r4 r8 d8 | % 2
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 3
    d4 r4 r4 r8 d8 | % 4
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8  | % 5
    r2 r4 r8 d8 | % 6
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 7
    d4 r4 r4 r8 d8 | % 8
    g8. [ f16 ] r8 d8 c4 r4  |   \mark \default  % 9
    d1 :16\mp | \barNumberCheck #10
    g1 :16 | % 11
    d1 :16 | % 12
    g1 :16  | % 13
    d1 :16 | % 14
    g1 :16 | % 15
    d'1 :16  | % 16
    <g, d'>2 <d f>4 <d f>4 \bar ".|:" \mark \default %17
    d4 r4 r4 r8 d8 | % 18
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8  | % 19
    d4 r4 r4 r8 d8 | \barNumberCheck #20
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 21
    d4 r4 r4 r8 d8  | % 22
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 23
    d4 r4 r4 r8 d8 | % 24
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8  | \mark \default % 25
    <d d'>1\mp\< :16 | % 26
    <d d'>1 :16 | % 27
    <g g'>1  :16 | % 28
    r8 <g g'> r <g g'> r <g g'> r <g g'> | % 29
    r8 g8\mf\< [ r8 as8 ] r8 a8 [ r8 bes8 ] | \barNumberCheck #30
    r8 b8 [ r8 c8 ] r8 des8 [ r8 d8 ]  | % 31
    r8 es8 [ r8 e8 ] r8 f8 [ r8 fis8 ] | \mark \default % 32
    <g, g'>4\ff r4 r4 <g g'>16 [ <g g'>16 ] r8 | % 33
    <d d'>1\mp :16  | % 34
    <g g'>1 :16 | % 35
    <g g'>1 :16 | % 36
    <g g'>1 :16 | % 37
    <d d'>1 :16  | % 38
    <g g'>1 :16 | % 39
    <d d'>1 :16 | 
    <g g'>2 :16 r8  d'8\f [<g, g'>8 d'8 ]  | % 41
    <g, g'>2\mp :16 r8 d'8\f [ <g, g'>8 d'8 ] | % 42
    <g, g'>2\mp :16 r8 d'8\f [ <g, g'>8 d'8 ] | % 43
    <g, g'>2\mp :16 r8 d'8\f [ <g, g'>8 d'8 ]  | % 44
    <g, g'>4 <g g'>4 <g g'>4 <g g'>4 ^\markup {\musicglyph #"scripts.coda"} |  % 45
    \mark \default
	<d d'>4\f^"\"STOP!\"" r4
	\xNotesOn
	d'16\mp^"\"wait a minute\"" [d c c]
	\xNotesOff
	r8 d,8\f | % 46
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 47
    d4 r4 r4 r8 d8  | % 48
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 49
    r2 r4 r8 d8 | \barNumberCheck #50
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8  | % 51
    d4 r4 r4 r8 d8 | % 52
    g8. [ f16 ] r8 d8 c4 r4 \bar ":|." % 53

\mark \default
	\key f \minor

	<bes' bes'>4\ff\> ^\markup {\musicglyph #"scripts.coda"} <bes bes'> <bes bes'> <bes bes'>
	<bes bes'>1:16 \mf
	<bes bes'>4 <bes bes'> <bes bes'> <bes bes'>
	<bes bes'>1:16
	<bes bes'>4 <bes bes'> <bes bes'> <bes bes'>
	<bes bes'>1:16
	<bes bes'>4 <bes bes'> <bes bes'> <bes bes'>
	<bes bes'>1:16
	c1:16
	des1:16
	aes1:16
\mark \default
	ees16 [f8 aes16] r8 ees8 r c bes16 [c8 ees16]
	bes16 [c16 ees8] r bes8 c [ees f aes]
		ees16 [f8 aes16] r8 ees8 r c bes16 [c8 ees16]
	bes16 [c16 ees8] r bes8 c [ees f aes]
	ees16 [f8 aes16] r8 ees8 r c bes16 [c8 ees16]
	bes16 [c16 ees8] r bes8 c [ees f aes]
	ees16 [f8 aes16] r8 ees8 r c bes16 [c8 ees16]
	bes16 [c16 ees8] r4 bes4 bes16 [bes] r8	
\mark \default	
	\key c \major
	
    <d d'>1\mp :16  | % 34
    <g g'>1 :16 | % 35
    <g g'>1 :16 | % 36
    <g g'>1 :16 | % 37
    <d d'>1 :16  | % 38
    <g g'>1 :16 | % 39
    <d d'>1 :16 |
    <g g'>2 :16 r8  d'8\f [<g, g'>8 d'8 ]  | % 41
    <g, g'>2\mp :16 r8 d'8\f [ <g, g'>8 d'8 ] | % 42
    <g, g'>2\mp :16 r8 d'8\f [ <g, g'>8 d'8 ] | % 43
    <g, g'>2\mp :16 r8 d'8\f [ <g, g'>8 d'8 ]  | % 44
    <g, g'>4 <g g'>4 <g g'>4 <g g'>4 | % 45

\mark \default	
    d4 \f\< d'4 c4 a8 [ d,8 ]  | % 54
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 55
    d4 d'4 c4 a8 [ d,8 ] | % 56
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8  | % 57
    d4 d'4 c4 a8 [ d,8 ] | % 58
    g8. [ f16 ] r8 d8 g8. [ f16 ] r8 c8 | % 59
    d4 d'4 c4 a8 [ d,8 ]  |
    <d d'>16 [ <d d'>16 <d d'>16 <d d'>16 ] r16 <d d'>8 [ <d d'>16 ] <d
        d'>16 [ <d d'>16 <d d'>16 ] r16 <d d'>4\fff \bar "|."



    }


\score { \header { title = "Uptown Funk" arranger = "Michael, Eva, Brian" composer = "Mark Ronson"} \new Staff << \set Staff.instrumentName = "Tenors" \context Staff <<  \context Voice = "tenorVoiceOne" { \tenorVoiceOne } >> >>} \pageBreak

\score { \header { title = "Uptown Funk" arranger = "Michael, Eva, Brian" composer = "Mark Ronson"} \new Staff << \set Staff.instrumentName = "Doubles" \context Staff <<  \context Voice = "DoublesVoiceOne" { \voiceOne \DoublesVoiceOne } >> >> } \pageBreak

\score { \header { title = "Uptown Funk" arranger = "Michael, Eva, Brian" composer = "Mark Ronson"} \new Staff << \set Staff.instrumentName = "Guitar / Cello" \context Staff << \context Voice = "GuiCelVoiceOne" { \GuiCelVoiceOne } >> >>} \pageBreak

\score { \header { title = "Uptown Funk" arranger = "Michael, Eva, Brian" composer = "Mark Ronson"} \new Staff << \set Staff.instrumentName = "Bass" \context Staff <<  \context Voice = "BassVoiceOne" { \BassVoiceOne } >> >>} \pageBreak

% The score definition
\score {

\header { title = "Up Town Funk" subtitle = "Full Score" arranger = "Michael, Eva, Brian" composer = "Mark Ronson" tagline = " "}

    <<
        \new StaffGroup <<
                \new Staff <<
                    \set Staff.instrumentName = "Tenors"
                    \set Staff.shortInstrumentName = "Ten"
                    \context Staff << 
                        \context Voice = "tenorVoiceOne" { \tenorVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Doubles"
                    \set Staff.shortInstrumentName = "Dbls"
                    \context Staff << 
                        \context Voice = "DoublesVoiceOne" { \voiceOne \DoublesVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Guitar / Cello"
                    \set Staff.shortInstrumentName = "G/C"
                    \context Staff << 
                        \context Voice = "GuiCelVoiceOne" { \GuiCelVoiceOne }
                        >>
                    >>
                \new Staff <<
                    \set Staff.instrumentName = "Bass"
                    \set Staff.shortInstrumentName = "Bass"
                    \context Staff << 
                        \context Voice = "BassVoiceOne" { \BassVoiceOne }
                        >>
                    >>
            
            >>
        
        >>
	\layout {}
    % To create MIDI output, uncomment the following line:
    \midi {}
    }

