\version "2.23.6"

\header {
  tagline = ##f
  title = "True Fire"
  composer = "Sarriaho"
  arranger = "Brian Ellis"

  % poet = "  I'm writing this piece because I'm terribly frustrated, facing a task which will seriously stain my aesthetics and conviction to the true art. It consists of all kinds of devils, dancing and whirling violently, turning the world into an abyss of darkness. Although the main melodies are derived from folk music, these are only a beautiful skin, and the essence of this piece is violent and evil, full of my 10 years' pain and rage. It's a large volcano of my long repressed heart!"
}

\paper{
  line-width = 158\mm
}

#(define (format-mark-roundbox-numbers number context)                          
   #{ \markup \override #'(corner-radius . 0.1) \rounded-box #(format-mark-numbers number context) #})


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

      \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  
  \time 4/4

    \clef treble \key c \major 
    r4
    dis32 (e g aes) 

    dis,4. ^\markup{\small\italic"         gliss."} 
    \glissando e32\<\( aes g c des c g' aes~\f 

      \time 3/4
      aes4.\>\glissando ^\markup{\small\italic"         gliss."} 
      \slashedGrace g8 \)
    r8\! r4
    \time 4/4
     r1 R1
     \pageBreak
     R1
     \time 3/4
     r8 \times 2/3 {g16\mf (aes d,} g4.) a32\f (d, b c 
      \tempo "Intenso"
      \time 4/4 
      g'4.\< \glissando ^\markup{\small\italic"         gliss."}  
      \slashedGrace aes8\sfz) r8
     r2
     \time 3/4 
     R2.
  }

   flBpicc = \relative c'' {

      \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  

    \clef treble \key c \major 
    R1
    aes8.. \f ( e'32 f e c des ) f16.\> e32 bes'4~\( bes4.\p\> \glissando
      ^\markup{\small\italic"         gliss."} 
    \slashedGrace a8\!\) r8 r2
    R1

  }

   flCalt = \relative c'' {
    \clef treble \key c \major 
    r4 r8 gis\(\mf \startTrillSpan 
      ~gis4.\< c32\f\stopTrillSpan des f ges ~ ges4.\>\) r8\! r4 
    R1
    R1
  }

  oboes = \relative c '' {
    \clef treble \key c \major 
    R1
    R2.
    R1
    R1
  }

  clarinetA = \relative c' {
    \clef treble \key c \major 
    \transposition bes
    f1\mf~ f2 \> r4\p
    R1
    <<{
    \times 2/3{
      fis,8\(\mp f4
    }
    bes2.\)

    }\\{
      s2. s8..\> s32\!

    }>>
    
  }
  clarinetB = \relative c' {
    \clef treble \key c \major 
    \transposition bes
    d1^"omit, similar to Cl.1"
  }
  clarinetC = \relative c' {
    \clef treble \key c \major 
    \transposition bes
    c1^"omit, similar to Cl.1"
  }

  bassoonA = \relative {
    \clef bass \key c \major 
    <<{
      \oneVoice
      f2. r4 
      R2.
      r4 ees4 \( ~ ees8 c8 ~ c16 b8. ~
        b2. \) r4
    }\\{
      s4 s4\> s4\p s4
      s2.
      s4 s4\mp s2
      s4 s4\> s4\! s4
    }>>
    
  }
  bassoonB = \relative {
    \clef bass \key c \major 
    f2^"omit, similar to Bsn.1"
  }

  hornA = \relative c'' {
    \clef treble \key c \major 
    \transposition f
    r2 r4 b4\flageolet\p\< \(~ b4 \mf 

    c2\>\flageolet \glissando ^\markup{\small\italic"         gliss."}  \slashedGrace b8-+\p \)
    R1
    R1

  }
  hornB = \relative c'' {
    \clef treble \key c \major 
    \transposition f
    r2 g2^"omit, similar to Hn.1"
  }
  hornC = \relative c' {
    \clef treble \key c \major 
    \transposition f
    r4 fis2. ^"omit, similar to Hn.1"
  }
  hornD = \relative c' {
    \clef treble \key c \major 
    \transposition f
    c1^"omit, similar to Hn.1"
  }

  trumpetI = \relative c' {
    \clef treble \key c \major 
    \transposition bes
    R1
    R2.
    R1 R1
  }

  trombones = \relative {
    \clef bass \key c \major 
    R1
    R2.
    R1 R1
  }

  tuba = \relative {
    \clef bass \key c \major 
    R1
    R2.
    R1 R1
  }

  timpani = \relative {
    \clef bass \key c \major 
    R1 R2.
    e,1:32 \pp ~ e: ~ e:32
  }

  percA = \relative {
    \clef treble \key c \major 
    R1
    R2.
    R1 R1

  }
  percB = \relative {
    \clef treble \key c \major 
    R1
    R2.
    R1 R1
  }
  percC = \relative c' {
    \clef percussion 
    r2 ^\markup {
  \rounded-box {
    "Med. Susp. Cym."
  }
} 
<<{
  \oneVoice
c2:32\laissezVibrer ^\markup{\italic\small{"l.v."}}

  }\\{
s4..\pp\< s16\mf ^\markup{\huge "*"}
    }>>
    R2.
    R1
    R1


  }

 
  harprh = \relative c'' {
    \clef treble  
    \showStaffSwitch
    R1\f
    R2.
    R1
    R1
    R1
    d2.
    R1
    R2.

  }

  harplh = \relative c {
    \clef bass 
    \showStaffSwitch
    c8 des'4-- f,8-- 
    \once \hide NoteHead
    b4. r8 ^\markup{\italic"l.v."}
    R2.
    r2^ \markup \vcenter {D \sharp} r4
    r16
    b,8.^\mp^\markup{\italic{"gl."}} \glissando 
      \hideNotes
      \bar ""
      \slashedGrace c,4
      \bar "|"
      \unHideNotes
    \times 2/3{
    e'8^\markup{\italic{"gl."}} \glissando 
      \hideNotes
      \slashedGrace c,4
      \unHideNotes
    dis'4^\markup{\italic{"gl."}} \glissando 
      \hideNotes
      \slashedGrace c,4
      \unHideNotes
    }
    aes''4^\markup{\italic{"gliss."}} \glissando 
      \hideNotes
      \slashedGrace e,4
      \unHideNotes
      r2^ \markup \vcenter {G \natural}
    \times 2/3{
    g'4^\markup{\italic{"gl."}} \glissando 
      \hideNotes
      \slashedGrace e,4
      \unHideNotes
    aes'2^\markup{\italic{"gl."}} \glissando 
      \hideNotes
      \slashedGrace e,4
      \unHideNotes
    }
    r2^ \markup \vcenter {D \natural}
    R2.\pp\<

      \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \ottava -1
    e,32^\f ^\markup \vcenter {G \sharp, A \natural} (
  \ottava 0
    f' b c e, f b c 
    e, f b c gis' a) e,( f
    b c gis' a) e, (f b c gis' a b, c gis' a b, c)
    <e, f>2^\markup{\italic{"gliss."}} r4^\markup{\italic{"l.v."}}
  }

  barsolo = \relative c {
    \clef bass 
    r1
    r2. 
    r8
    \xNotesOn
    g16 g 
    \xNotesOff
    dis'4.
    c8 ~ c16 b8. --
    \times 2/3{e8-- dis4--} aes'8-- r8 \times 2/3 {c,4 b4. c8}
  }

  barsoloLyrics = \lyricmode {
    and the time when we saw them not is like a 
      }

  dynamics = {

  }


  violinIAsolo = \relative c''{
    \clef treble 
    R1 R2. d16^"S.T."\p d8. ~ d2. ~ 
    d4\> \glissando \slashedGrace cis8\! r8 d16 \p d ~ d2 ~ d1
  }
  violinIB = \relative c' {
    \clef treble 
    R1 e4^"N"\f \( ~ e2 \>\glissando ^\markup{\small\italic"         gliss."}  
      \bar ""
      \slashedGrace  b8\p^"S.T."\)
    \bar "|"
    R1 R1
  }
  violinIC = \relative c' {
    \clef treble 
    R1 b4^"omit, similar to vlnI"
  }

  violinIIA = \relative c'{
    \clef treble 
      \override Hairpin.circled-tip = ##t
   r2 r4 d4\<^"S.T." \glissando bes4\f^"N." \( ~ 
  \override Hairpin.circled-tip = ##f
    bes2\> \glissando^\markup{\small\italic"         gliss."} \slashedGrace a8\p \)
  }
  violinIIB = \relative c'{
    \clef treble 
      \override Hairpin.circled-tip = ##t
   r2 ais4 ~ \<^"S.T." ais4 \glissando a4\f^"N." \( ~ 
  \override Hairpin.circled-tip = ##f
    a2\> \glissando^\markup{\small\italic"         gliss."} \slashedGrace gis8\p \)
  }

  violaASolo = \relative {
    \clef alto 
    R1 R2. r4 dis4(\mp^"N."\glissando^\markup{\small\italic"      gl."} \slashedGrace c8)
    r2
    R1
  }

  violaB = \relative c'{
    \clef alto 
          \override Hairpin.circled-tip = ##t
    r4^"   arco   S.T." g2\< ~g4\mf^"N."
    s2.^"omit, similar to vln II"
    R1 R1
  }
  violaC = \relative {
    \clef alto 
    ees2.^"omit, similar to vln II" s4 s2.
    r4 
      \harmonicsOn
      <<
      {
        ees2.\startTrillSpan _~ ees1~ ees1\stopTrillSpan
        }\\{
          s2.^"N." s2 s2^"S.P."
      }>>

  }

  celloASolo = \relative {
    \clef bass 
    R1 R2. R1^"omit, similar to vla solo"
    r2^"                       III"
    \times 2/3{
    \harmonicsOn
      c4\mp^"N."\startTrillSpan\glissando_\markup{\small\italic"      gl."}\(
      \harmonicsOff
      b2\glissando_\markup{\small\italic"    gl."}\stopTrillSpan\startTrillSpan
      
\bar "" \slashedGrace a8\stopTrillSpan\) \bar "|"
      
      }    

   }
  celloB = \relative {
    \clef bass 
    R1^"omit, similar to vlc. and vla." R2. 
    r2 r4  
    <<{
      \harmonicsOn
      c4 \startTrillSpan \glissando_\markup{\small\italic"    gliss."}
       b1\stopTrillSpan _~ b1
    }\\{
      s4\p^"N." s2 s4..\>^"S.T." s16\!
    }>>
    
   }

  celloC = \relative {
    \clef bass 
    f,2. ~f4\<\glissando^\markup{\small\italic"    gliss."}
    g4\(\f^"N." ~ g2\>\glissando^\markup{\small {\italic"    gliss." "                " "S.T."}}
    \slashedGrace fis8\)\p
    R1
    R1
   }

  dbA = \relative c {
    \clef bass 
    e2.^"omit, similar to Vlc."
  }
  dbB = \relative c {
    \clef bass 
    f,2.^"omit, similar to Vlc."
  }

  #(set-global-staff-size 9)

  \score {
    <<
    \set Score.skipBars = ##f
    \new MarkLine { \marks }
      \new StaffGroup = "woodwind" <<
      \new SquareStaff = "picc fl" <<
        \set SquareStaff.instrumentName = ""
        \new Staff = "Flute1" {
          \set Staff.instrumentName = "1"
          \set Staff.shortInstrumentName = "1"
        \flA
        }
        \new Staff = "Flute2Picc" {
          \set Staff.instrumentName = "Fl. 2 Picc."
          \set Staff.shortInstrumentName = "Fl. 2 Picc"
        \flBpicc
        }
        \new Staff = "Flute3" {
          \set Staff.instrumentName = "3 Alto"
          \set Staff.shortInstrumentName = "3 Alto"
        \flCalt
        }
      >>
      \new Staff = "oboes" {
        \set Staff.instrumentName = "Ob."
        \set Staff.shortInstrumentName = "Ob. 1"
      \oboes
      }
      \new SquareStaff = "clarinets" <<
        \set SquareStaff.instrumentName = "Cl.               "
        \new Staff = "clarinet1" {
          \set Staff.instrumentName = "1"
          \set Staff.shortInstrumentName = "1"
          \clarinetA
        }
        \new Staff = "clarinet2" {
          \set Staff.instrumentName = "2"
          \set Staff.shortInstrumentName = "2"
          \clarinetB
        }
        \new Staff = "clarinet3" {
          \set Staff.instrumentName = "3"
          \set Staff.shortInstrumentName = "3"
          \clarinetC
        }

      >>
      \new SquareStaff = "bassoons" <<
              \set SquareStaff.instrumentName = "Bsn.               "
        \new Staff = "bassoon1" {
          \set Staff.instrumentName = "1"
          \set Staff.shortInstrumentName = "1"
        \bassoonA
        }
        \new Staff = "bassoon2" {
          \set Staff.instrumentName = "2"
          \set Staff.shortInstrumentName = "2"
        \bassoonB
        }
       >>
    >>
    \new StaffGroup = "brass" <<
      \new SquareStaff = "horns" <<
        \set SquareStaff.instrumentName = "Hn.               "
        \new Staff = "hornsI" {
          \set Staff.instrumentName = "1"
          \set Staff.shortInstrumentName = "1"
        \hornA
        }
        \new Staff = "hornsI" {
          \set Staff.instrumentName = "3"
          \set Staff.shortInstrumentName = "3"
        \hornB
        }
        \new Staff = "hornsI" {
          \set Staff.instrumentName = "2"
          \set Staff.shortInstrumentName = "2"
        \hornC
        }
        \new Staff = "hornsI" {
          \set Staff.instrumentName = "4"
          \set Staff.shortInstrumentName = "4"
        \hornD
        }
      >>
        \new Staff = "trumpetI" {
          \set Staff.instrumentName = "Tpt."
          \set Staff.shortInstrumentName = "Tpt"
        \trumpetI
        }
        \new Staff = "trombones" {
          \set Staff.instrumentName = "Tbn."
          \set Staff.shortInstrumentName = "Tbn."
        \trombones
        }
        \new Staff = "tuba" {
          \set Staff.instrumentName = "Tuba"
          \set Staff.shortInstrumentName = "Tuba"
        \tuba
        }
    >>
    \new Staff = "timpani" {
      \set Staff.instrumentName = "Timp."
      \set Staff.shortInstrumentName = "Timp."
    \timpani
    }
    \new StaffGroup = "Perc" <<
      \set StaffGroup.instrumentName = "Perc.            "

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
\new Staff = "Perc3" {
        \set Staff.instrumentName = "3"
        \set Staff.shortInstrumentName = "3"
      \percC
      }
    >>
    \new PianoStaff = "harp" <<
      \set PianoStaff.instrumentName = "Harp"
      \set PianoStaff.shortInstrumentName = "Hrp."
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "rh" { \harprh }
      \new Dynamics { \dynamics }
      \new Staff = "lh" { \harplh }
    >>


<<
    \new Staff = "barsolo" {
        \set Staff.instrumentName = "Bar. Solo"
        \set Staff.shortInstrumentName = "Bar. Solo"
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
      \new SquareStaff = "violin1s" <<
        \new Staff = "vln1solo" {
          \set Staff.instrumentName = "Solo"
          \set Staff.shortInstrumentName = "Solo"
        \violinIAsolo
        }
        \new Staff = "1-1" {
          \set Staff.instrumentName = "Vln. I"
          \set Staff.shortInstrumentName = "Vln. I"
        \violinIB
        }
        \new Staff = "violin1-2" {
          \set Staff.instrumentName = \markup{
             \center-column{
                "gli altri" "div."
            }}
          \set Staff.shortInstrumentName = \markup{
             \center-column{
                "gli altri" "div."
            }}
        \violinIC
        }
      >>
      \new SquareStaff = "violinIIs" <<
        \set SquareStaff.instrumentName = \markup{
         \center-column{
            "Vln. II"
            "div."
          }
        }
      \new Staff = "violinII1" {
        \set Staff.instrumentName = ""
        \set Staff.shortInstrumentName = ""
      \violinIIA
      }
      \new Staff = "violinII2" {
        \set Staff.instrumentName = ""
        \set Staff.shortInstrumentName = ""
      \violinIIB
      }
      >>

      \new SquareStaff = "violas" <<
        \new Staff = "violasolo" {
          \set Staff.instrumentName = "Solo"
          \set Staff.shortInstrumentName = "Solo"
        \violaASolo
        }
        \new Staff = "viola1" {
          \set Staff.instrumentName = "Vla."
          \set Staff.shortInstrumentName = "Vla."
        \violaB
        }
        \new Staff = "viola2" {
          \set Staff.instrumentName = \markup{
             \center-column{
                "le altre" "div."
            }}
          \set Staff.shortInstrumentName = \markup{
             \center-column{
                "le altre" "div."
            }}
        \violaC
        }
      >>

      \new SquareStaff = "cellos" <<
        \new Staff = "cellosolo" {
          \set Staff.instrumentName = "Solo"
          \set Staff.shortInstrumentName = "Solo"
        \celloASolo
        }
        \new Staff = "cello1" {
          \set Staff.instrumentName = "Vlc."
          \set Staff.shortInstrumentName = "Vlc."
        \celloB
        }
        \new Staff = "cello2" {
          \set Staff.instrumentName = \markup{
             \center-column{
                "gli altre" "div."
            }}
          \set Staff.shortInstrumentName = \markup{
             \center-column{
                "gli altre" "div."
            }}
        \celloC
        }
      >>

       \new SquareStaff = "doublebass" <<
        \set SquareStaff.instrumentName = \markup{
         \center-column{
            "D.B."
            "div."
          }
        }
      \new Staff = "db1" {
        \set Staff.instrumentName = ""
        \set Staff.shortInstrumentName = ""
      \dbA
      }
      \new Staff = "db2" {
        \set Staff.instrumentName = ""
        \set Staff.shortInstrumentName = ""
      \dbB
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
