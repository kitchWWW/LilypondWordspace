\version "2.23.6"

\header {
  tagline = ##f
  title = "Let Me Tell You"
  composer = "Abrahamsen"
  arranger = "Brian Ellis"
  % poet = "  I'm writing this piece because I'm terribly frustrated, facing a task which will seriously stain my aesthetics and conviction to the true art. It consists of all kinds of devils, dancing and whirling violently, turning the world into an abyss of darkness. Although the main melodies are derived from folk music, these are only a beautiful skin, and the essence of this piece is violent and evil, full of my 10 years' pain and rage. It's a large volcano of my long repressed heart!"
}


#(define (format-mark-roundbox-numbers number context)                          
   #{ \markup \override #'(corner-radius . 0.1) \rounded-box #(format-mark-numbers number context) #})

\paper{
  ragged-last = ##f
}

%% text defs
presto = \markup { \bold \italic "Presto" }
div = \markup { \bold "Div." }
nondiv = \markup { \bold "Non div." }
unis = \markup { \bold "Unis." }
piz = \markup { \bold "Pizz." }
arc = \markup { \bold "Arco" }
pizz = \set Staff.midiInstrument = "pizzicato strings"
arco = \set Staff.midiInstrument = "string ensemble 1"
pont = \markup { \bold \italic "Sul ponticello" }
naturale = \markup { \bold \italic "Naturale" }
moltocr = {
  \set crescendoText = \markup { \italic "Molto cresc." }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner.style = #'dotted-line
}
offCr = {
  \unset crescendoText
  \unset crescendoSpanner
  \revert DynamicTextSpanner.style
}

%% Layout for piano dynamics
\layout {
  \context {
    \Voice
    \override Glissando.breakable = ##t
    \override TextSpanner.breakable = ##t
    \override DynamicLineSpanner.breakable = ##t
    \override DynamicTextSpanner.breakable = ##t
    \override TrillSpanner.breakable = ##t
  }
}

%% layout to create orchestra staff group
%% with non-spanned barlines between two instrument groups
\layout {
  \context {
    \StaffGroup
    \name Orchestra
    \remove Span_bar_engraver
  }
  \context {
    \Score
    \accepts Orchestra
  }
}

%% Layout to produce SquareStaff context
%% to group similar instruments in a staff group with thin square bracket
\layout {
  \context {
    \StaffGroup
    \name SquareStaff
    systemStartDelimiter = #'SystemStartSquare
  }
  \context {
    \Orchestra
    \accepts SquareStaff
  }
  \context {
    \StaffGroup
    \accepts SquareStaff
  }
}

%% Layout to produce MarkLine context
%% to place rehearsal marks and texts above full score
\layout {
  \context {
    \type Engraver_group
    \name MarkLine
    \consists Output_property_engraver
    \consists Axis_group_engraver
    \consists Mark_engraver
    \consists Metronome_mark_engraver
    \consists Script_engraver
    \consists Text_engraver
    \consists Text_spanner_engraver
    \consists Font_size_engraver
    \override VerticalAxisGroup.staff-affinity = #DOWN
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #5
    \override TextSpanner.breakable = ##t
  }
  \context {
    \Score
    \accepts MarkLine
  }
  \context {
    \Orchestra
    \accepts MarkLine
  }
  \context {
    \StaffGroup
    \accepts MarkLine
  }
}

%% layout to produce a smaller markline
%% put before 1st violin part
\layout {
  \context {
    \MarkLine
    \name SmallMarkLine
    \override MetronomeMark.outside-staff-priority = #800
    \override RehearsalMark.outside-staff-priority = #1200
  }
  \context {
    \Score
    \accepts SmallMarkLine
  }
  \context {
    \Orchestra
    \accepts SmallMarkLine
  }
  \context {
    \StaffGroup
    \accepts SmallMarkLine
  }
}

modern =
#`(Staff ,(make-accidental-rule 'same-octave 0)
  ,(make-accidental-rule 'any-octave 0)
  ,(make-accidental-rule 'same-octave 1))

\layout {
  \context {
    \Score
    autoAccidentals = #modern
    autoCautionaries = #modern
  }
}

  marks = \relative c' {
      \numericTimeSignature
    \set rehearsalMarkFormatter = #format-mark-box-numbers
\set Score.currentBarNumber = #25 


  }

  flA = \relative c' {  
    \clef treble \key c \major 

    \time 9/8
    <d'' a'>4.\( ~ <d a'>8 [~ <d a'>16 r16 <a fes'>8] ~ <a fes'> <ces ees>4 ~
    <ces ees>2 <a! des>2 
    <g! ces>4 <des aes'>8 ~ <des aes'>2. ~ 
    \pageBreak
    <des aes'>4\)
  }

  oboes = \relative c {
    \clef treble \key c \major 
    \time 9/8
    R1*9/8 ^"omit, similar to fl. 1,2"
    R1
    R1*9/8
    s1 

  }

    coring = \relative c '' {
    \clef treble \key c \major 
 \time 9/8
    R1*9/8
    \time 2/2
    R1
    \time 9/8
    R1*9/8
    \time 2/2
    R1
  }

  clarinetA = \relative c' {
    \clef treble \key c \major 
    \transposition bes

 \time 9/8

<a a'>2. ~ <a a'>4.   ~ <a a'>1  ~ <a a'>2.   ~ <a a'>4.   ~ <a a'>2.

    
  }
  clarinetB = \relative c' {
    \clef treble \key c \major 
    \transposition bes
 \time 9/8
    R1*9/8
    R1
    R1*9/8
    s1 

      }

  bassoonA = \relative {
    \clef bass \key c \major 

    g2.^"(2)" ~ g4. ~ g1 ~ g2. ~ g4. ~ g2.
    


  }
  bassoonB = \relative {
    \clef bass \key c \major 
    g2. ~ g4. ~ g1 ~ g2. ~ g4. ~ g2.
    

      }

  hornA = \relative c'' {
    \clef treble \key c \major 
    \transposition f
 \time 9/8
    R1*9/8
    \times 8/9 {
     r4 aes32^"a 2"\p ~ \(
    }
    aes2. ~ 
    aes2.\< ~ aes8 ~ \times 2/3 { aes16 ges'8 ~ } ges8 ~ 
    ges8\!\)

  }
  hornB = \relative c'' {
    \clef treble \key c \major 
    \transposition f
    \time 9/8
    <<{
      a'4\(^\< fes8 ~ fes4. ~ fes8 ~ \times 2/3 { fes16 ges8 ~} ges8~
      \times 8/9 {
        ges4\! aes,32~
      }  aes4\) r2


    } \\{
      a4\< fes'8\! ~ fes4\> r8\! r4.
      R1

    } >>  
R1*9/8
    s1 
      }

  trumpetI = \relative c' {
    \clef treble \key c \major 
    \transposition bes
 \time 9/8    
 <d' a'>4.\( ~ <d a'>8[ ~ <d a'>16 r16 <a! fes'>8]~ <a fes'>8
 <ces ees>4 ~ <ces ees>2 <a! des>2
 <g! ces>4 <des aes'>8 ~ <des aes'>2. ~ <des aes'>4\)
  }

  trombones = \relative {
    \clef bass \key c \major 
    R1*9/8
    R1
    R1*9/8
    s1 
    

  }

  percA = \relative {
    \clef bass \key c \major 
     \time 9/8
    ges8-.^\(^"Mar." ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. \)
   \clef treble
    c''8

  }
  percB = \relative c' {
    \clef treble \key c \major 
    ges'8-.\(^"Vibr." ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. \)
    
    s1 
  }

  harprh = \relative c'' {
    \clef treble  
    R1*9/8
    R1
    R1*9/8
    s1 
    

  }

  harplh = \relative c {
    \clef bass 
    R1*9/8
    R1
    R1*9/8

    s1 
    
     }
 
  celrh = \relative c' {
    \clef bass  
    ges8-.^\( ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. ges'8-. ges,8-. \)
  
    s1 
  }

  cellh = \relative c {
    \clef bass 
    ges8-. \( r8 ges8-. r8 ges8-. r8 ges8-. r8 ges8-. r8 ges8-. r8 ges8-. r8 ges8-. r8 ges8-. r8 ges8-. r8 ges8-. r8 ges8-. r8 ges8-. r8
      \)
    
    s1 
     }

  barsolo = \relative c'' {
    \clef treble 
   \time 9/8
     \override TupletNumber.text = #tuplet-number::calc-fraction-text


   des4^\f \( beses'
    \times 5/3 {
      beses4 ces8 ~
    }
    \times 8/9{
      ces4 des,4 ~ 
      \times 5/3 {
        des8\) r8 des8 \( ^\< ~ 
      }
    }
    des8 ~ des2 ~
    \times 5/3{
      des4 ces'8 ~
    }
    ces4
    \)\!
      }

  barsoloLyrics = \lyricmode {
one who loosed out this -- mu -- sic
      }

  violinIIA = \relative c'{
    \clef treble 
   \time 9/8
   R1*9/8
    R1
    R1*9/8    
    s1 
      }
  violinIIB = \relative c'{
    \clef treble 
 \time 9/8
   R1*9/8
    R1
    R1*9/8    
    s1 

      }

  violaASolo = \relative {
    \clef alto 
 \time 9/8
    a'8. \( ges ~ ges8. bes8. bes4.~
    \times 2/3{
      bes2\) r4
    }\times 2/3{
      ges2\(-> bes4
    }
    bes,8. d aes' ges bes4. \>\) s2.\!
    

  }

  violaB = \relative c'{
    \clef alto 
 \time 9/8
  R1*9/8^"omit, similar to Vla 1"
    R1
    R1*9/8      
    s1 

  }


  celloB = \relative {
    \clef bass 
     \time 9/8
     d4.\( ~ d8. f8. ees4. ~ 
     \times 2/3 {
      ees4 f2
     }
    \times 2/3 {
    g4 des'2->~ 
     }
     des4. \)  r8. f,8.\(~ f8. des8. s\)
    
   }

  celloC = \relative {
    \clef bass 
     \time 9/8
  R1*9/8^"omit, similar to Vc 1"
    R1
    R1*9/8      
    s1 
   }

  dbA = \relative c {
    \clef bass 
  \repeat tremolo 12 { fis32\( ~<fis b\harmonic> }
  \repeat tremolo 6 { fis32 ~<fis b\harmonic> }
  \repeat tremolo 16 { fis32 ~<fis b\harmonic> }
  \repeat tremolo 12 { fis32 ~<fis b\harmonic> }
  \repeat tremolo 6 { fis32 ~<fis b\harmonic> }
  \clef treble
  s\)

  }

  #(set-global-staff-size 10)

  \score {
    <<
    \set Score.skipBars = ##f
    \new MarkLine { \marks }
      \new StaffGroup = "woodwind" <<
        \new Staff = "Flute1" {
          \set Staff.instrumentName = "Fl. 1,2"
          \set Staff.shortInstrumentName = "Fl. 1,2"
        \flA
        }
      \new Staff = "oboes" {
        \set Staff.instrumentName = "Ob. 1,2"
        \set Staff.shortInstrumentName = "Ob. 1,2"
      \oboes
      }
      \new Staff = "coring" {
        \set Staff.instrumentName = "Cor. ing."
        \set Staff.shortInstrumentName = "Cor. ing."
      \coring
      }
        \new Staff = "clarinet1" {
          \set Staff.instrumentName = \markup{\center-column{"Cl. 1,2" \line\vcenter {"in S" \flat}}}
          \set Staff.shortInstrumentName = "Cl. 1,2"
          \clarinetA
        }
        \new Staff = "clarinet2" {
          \set Staff.instrumentName =  \markup{\center-column{"Cl. bass" \line\vcenter {"in S" \flat}}}
          \set Staff.shortInstrumentName = "Cl. bass"
          \clarinetB
        }
        \new Staff = "bassoon1" {
          \set Staff.instrumentName = "Fg. 1,2"
          \set Staff.shortInstrumentName = "Fg. 1,2"
        \bassoonA
        }
        \new Staff = "bassoon2" {
          \set Staff.instrumentName = "Cfg."
          \set Staff.shortInstrumentName = "Cfg."
        \bassoonB
        }
    >>
    \new StaffGroup = "brass" <<
      \new SquareStaff = "horns" <<
        \set SquareStaff.instrumentName =  \markup{\center-column{"Cor." "in Fa"}}
        \new Staff = "hornsI" {
          \set Staff.instrumentName = "1,2"
          \set Staff.shortInstrumentName = "1,2"
        \hornA
        }
        \new Staff = "hornsI" {
          \set Staff.instrumentName = "3,4"
          \set Staff.shortInstrumentName = "3,4"
        \hornB
        }
      >>
        \new Staff = "trumpetI" {
          \set Staff.instrumentName =  \markup{\center-column{"Tr. 1,2" "in C"}}
          \set Staff.shortInstrumentName = "Tr. 1,2"
        \trumpetI
        }
        \new Staff = "trombones" {
          \set Staff.instrumentName = "Trbn. 1,2"
          \set Staff.shortInstrumentName = "Trbn. 1,2"
        \trombones
        }
    >>
    \new StaffGroup = "Perc" <<
      \set StaffGroup.instrumentName = "Perc."

      \new Staff = "Perc1" {
        \set Staff.instrumentName = "1"
        \set Staff.shortInstrumentName = "1"
      \percA
      }
\new Staff = "Perc2" {
        \set Staff.instrumentName = "2"
        \set Staff.shortInstrumentName = "2"
      \percB
      }
    >>
    \new PianoStaff = "harp" <<
      \set PianoStaff.instrumentName = "Arp."
      \set PianoStaff.shortInstrumentName = "Arp."
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "rhh" { \harprh }
      \new Staff = "lhh" { \harplh }
    >>


    \new PianoStaff = "celest" <<
      \set PianoStaff.instrumentName = "Cel."
      \set PianoStaff.shortInstrumentName = "Cel."
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "rhc" { \celrh }
      \new Staff = "lhc" { \cellh }
    >>


<<
    \new Staff = "barsolo" {
        \set Staff.instrumentName = "Sopr."
        \set Staff.shortInstrumentName = "Sopr."
      \new Voice = "melody" {
        \barsolo
      }
    }
    \new Lyrics {
      \lyricsto "melody"{
      \barsoloLyrics        
      }
    }
  >>

    \new StaffGroup = "strings" <<
      \new Staff = "violinII1" {
        \set Staff.instrumentName = "Vn. 1"
        \set Staff.shortInstrumentName = ""
      \violinIIA
      }
      \new Staff = "violinII2" {
        \set Staff.instrumentName = "Vn. 2"
        \set Staff.shortInstrumentName = ""
      \violinIIB
      }

      \new SquareStaff = "violas" <<
       \set SquareStaff.instrumentName = "Vla."
        \new Staff = "violasolo" {
        \violaASolo
        }
        \new Staff = "viola1" {
        \violaB
        }
      >>

      \new SquareStaff = "cellos" <<
            \set SquareStaff.instrumentName = "Vc."
        \new Staff = "cello1" {
        \celloB
        }
        \new Staff = "cello2" {
        \celloC
        }
      >>

       \new SquareStaff = "doublebass" <<
        \set SquareStaff.instrumentName = \markup{
         \center-column{
            "Cb."
          }
        }
      \new Staff = "db1" {
        \set Staff.instrumentName = ""
        \set Staff.shortInstrumentName = ""
      \dbA
      }
      >>
      >>
    >>
    \layout {
      \context {
        \Score
        \remove Mark_engraver
        \remove Metronome_mark_engraver
      }
      \context {
        \Staff \RemoveEmptyStaves
      }
    }
  }
