#(define mydrums '(
         (hiwoodblock   cross   #t          4)
         (lowoodblock   cross   #t          2)
         (hibongo       default     #t      1)
         (lobongo   	default     #t		-1)
         (hightom       cross   #t		    -2)
         (lowtom        cross   #t          -4)))

global= {
  \tempo 4 = 70
  \time 6/4
}

playerOne = \relative c'' {
  \set Staff.instrumentName = #"Player 1 "
	r4
	\times 2/3{r8 d'-.^"Vibes" d-.}
	\times 2/3{r8 d-. d-.}
	r4
	\times 2/3{r8 d-. d-.}
	\times 2/3{r8 d-. d-.}
	r4
	\times 2/3{r8 d-. d-.}
	\times 2/3{r8 d-. d-.}
	r4
	\times 2/3{r8 d-. d-.}
	\times 2/3{r8 d-. d-.}

}

playerTwo = \relative c'' {
	\set Staff.instrumentName = #"Player 2 "
	r16 b32 ( g a8-.) b32 ( g a8.-.) r4
	r16 b32 ( g a8-.) b32 ( g a8.-.) r4
	r16 b32 ( g a8-.) b32 ( g a8.-.) r4
	r16 b32 ( g a8-.) b32 ( g a8.-.) r4
	
}

playerThree = \drummode {
  \set Staff.instrumentName = #"Player 3 "
	wbl4^"Wood Block" wbh4:32 r8
	wbl4 wbh4.: r4 
	wbl4 wbh4:32 r8
	wbl4 wbh4.: r4 
	

	%{wbl wbh: r r wbl wbh:
	r
	\slashedGrace{bol32^"Cow Bell"} boh4
	\slashedGrace{bol32} boh4
	r4
	\slashedGrace{bol32} boh4
	\slashedGrace{bol32} boh4
	r4 r
	wbl4 wbh4:32
	r 
	wbl4 wbh4:32
	r4
	\times 2/3{toml4^"Toms" toml toml}
	\times 2/3{r4 toml toml}
	r4
%}
%	boh8 bol
%	toml tomh
%	wbh wbl
	
}

\score {
  \new StaffGroup <<
    \new Staff << \global \playerOne >>
    \new Staff << \global \playerTwo >>
    \new DrumStaff <<
  \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
   \playerThree
>>
  >>
  \layout { }
  \midi { }
}
