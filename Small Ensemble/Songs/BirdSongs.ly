#(define mydrums '(
         (hiwoodblock   cross   #t          4)
         (lowoodblock   cross   #t          2)
         (hibongo       default     #t      1)
         (lobongo   	default     #t		-1)
         (hightom       cross   #t		    -2)
         (lowtom        cross   #t          -4)))

global= {
  \tempo 4 = 70
  \time 4/4
}

playerOne = \relative c'' {
  \set Staff.instrumentName = #"Player 1 "
	R1
	r2 \times 2/3{r8 <g' b,>-.^"Vibes" <g b,>-.}
	r4 \times 2/3{r8 <g b,>-. <g b,>-.}
	r4 r \times 2/3{r8 <g b,>-. <g b,>-.}
	r4 \times 2/3{r8 <g b,>-. <g b,>-.}
	r4 r8 c,8 (
	g4. a16 bes a4.) c8(
	g4. a16 bes a2)
	r4 r \times 2/3{r8 <g' b,>-. <g b,>-.}
	r4 \times 2/3{r8 <g b,>-. <g b,>-.}
}

playerTwo = \relative c'' {
  \set Staff.instrumentName = #"Player 2 "
	R1 R1 r2
	\times 2/3 {\xNotesOn e,4^"Toms" e e}
	\times 2/3 { r e e}
	r2
	\times 2/3 { e4 e e}
	\times 2/3 { r e e}
	
	r2 r4
	
	\xNotesOff
 	e'16^"Glock" (gis fis8)
	e16 (gis fis8)
	r4
	r4
	e16 (gis fis8)
	e16 (gis fis8)
	r4

}

playerThree = \drummode {
  \set Staff.instrumentName = #"Player 3 "
	wbl4^"Wood Block" wbh4:32 r4
	wbl wbh: r r 
	wbl wbh: r r wbl wbh:
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
