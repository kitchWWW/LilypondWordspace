\score {
\new StaffGroup
<<
  \new Staff \with {midiInstrument = #"cello"} \relative g' {
	\tempo 4 = 110
	\key ees \major
	f'16\ff->-. [f8-. f16-.] f8->-. [f16-. f16->-.~] f16 [f16-. f8-.] f16->-. f16-. f16-. f16-. 
	f16->-. [f8-. f16-.] f8->-. [f16-. f16->-.~] f16 [f16-. f8-.] f16->-. f16-. f16-. f16-. 
	\time 1/4
	ees,16-.-> \> f16 (g16 aes16)
	\time 4/4
	d8\f\> f8 d8 f8 d8 f8 d8 f8 d8\p f8 d8 f8 d8 f8 d8 f8 
	\break
	d1\fermata 
   
	\bar "|."
  }
  \new Staff \with {midiInstrument = #"cello"} \relative g' {
    \clef treble
	\key ees \major
			ees'16\ff->-. [ees8-. ees16-.] ees8->-. [ees16-. ees16->-.~] ees16 [ees16-. ees8-.] ees16->-. ees16-. ees16-. ees16-. 
			aes16->-. [aes8-. aes16-.] aes8->-. [aes16-. aes16->-.~] aes16 [aes16-. aes8-.] aes16->-. aes16-. aes16-. aes16-. 
    	\time 1/4
    	ees,16-.-> \> ees16 (ees16 ees16)
    	\time 4/4
    	bes1 \f \> ~bes1 \p
    	bes1\fermata
  }
  \new Staff \with {midiInstrument = #"cello"} \relative g {
    \clef percussion
    \stopStaff
  \override Staff.StaffSymbol.line-count = #1
  \startStaff
			R1 R1 r4 R1 R1 
			r4 c2^"breaking news!..." r4 
  }
>>
  \header { piece = "Prelude"}\midi {} \layout {}
}
