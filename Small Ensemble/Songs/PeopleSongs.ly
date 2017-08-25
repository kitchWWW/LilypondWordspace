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
	
}

playerTwo = \relative c'' {
	\set Staff.instrumentName = #"Player 2 "
		
}

playerThree = \drummode {
  \set Staff.instrumentName = #"Player 3 "
		
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
