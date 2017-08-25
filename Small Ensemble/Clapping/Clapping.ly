\version "2.18.2"
	
%#(set-global-staff-size 22)

\header {
title ="Clapping Music"
subtitle = "For six hands"
composer = "Brian Ellis"
tagline =""
}

#(define mydrums '((hihat default #t  4)
                   (snare default #t -4)
				   (hiwoodblock default #t  0)))

woodstaff = {
  % This defines a staff with only two lines.
  % It also defines the positions of the two lines.
  \override Staff.StaffSymbol.line-positions = #'(-4 0 4)
  % This is necessary; if not entered, the barline would be too short!
  \override Staff.BarLine.bar-extent = #'(-2 . 2)
}

\new DrumStaff {
  \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)

  % with this you load your new drum style table
  \woodstaff

  \drummode {
    \time 17/8
	%\override Score.BarNumber.break-visibility = ##(#t #t #t)
	<<{
	
	\bar ".|:"
	\hide Stem hh8 hh hh r hh hh hh r hh r r hh r r hh r r
	}\\{
	\hide Stem sn sn sn r sn sn sn r sn r r sn r r sn r r
	}\\{
	\hide Stem \shiftOff wbh wbh wbh r wbh wbh wbh r wbh r r wbh r r wbh r r
	}>>
		
 <<{
	\bar ":|.|:"
	\hide Stem hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	}\\{
	\hide Stem sn sn sn s sn sn sn s sn s s sn s s sn s s
	sn sn s sn sn sn s sn s s sn s s sn s s sn
	sn s sn sn sn s sn s s sn s s sn s s sn sn
	s sn sn sn s sn s s sn s s sn s s sn sn sn
	sn sn sn s sn s s sn s s sn s s sn sn sn s
	sn sn s sn s s sn s s sn s s sn sn sn s sn
	sn s sn s s sn s s sn s s sn sn sn s sn sn
	s sn s s sn s s sn s s sn sn sn s sn sn sn
	sn s s sn s s sn s s sn sn sn s sn sn sn s
	s s sn s s sn s s sn sn sn s sn sn sn s sn
	s sn s s sn s s sn sn sn s sn sn sn s sn s
	sn s s sn s s sn sn sn s sn sn sn s sn s s
	s s sn s s sn sn sn s sn sn sn s sn s s sn
	s sn s s sn sn sn s sn sn sn s sn s s sn s
	sn s s sn sn sn s sn sn sn s sn s s sn s s
	s s sn sn sn s sn sn sn s sn s s sn s s sn
	s sn sn sn s sn sn sn s sn s s sn s s sn s
	sn sn sn s sn sn sn s sn s s sn s s sn s s
	}\\{
	\hide Stem \shiftOff wbh wbh wbh s wbh wbh wbh s wbh s s wbh s s wbh s s
	s wbh wbh wbh s wbh wbh wbh s wbh s s wbh s s wbh s
	s s wbh wbh wbh s wbh wbh wbh s wbh s s wbh s s wbh
	wbh s s wbh wbh wbh s wbh wbh wbh s wbh s s wbh s s
	s wbh s s wbh wbh wbh s wbh wbh wbh s wbh s s wbh s
	s s wbh s s wbh wbh wbh s wbh wbh wbh s wbh s s wbh
	wbh s s wbh s s wbh wbh wbh s wbh wbh wbh s wbh s s
	s wbh s s wbh s s wbh wbh wbh s wbh wbh wbh s wbh s
	s s wbh s s wbh s s wbh wbh wbh s wbh wbh wbh s wbh
	wbh s s wbh s s wbh s s wbh wbh wbh s wbh wbh wbh s
	s wbh s s wbh s s wbh s s wbh wbh wbh s wbh wbh wbh
	wbh s wbh s s wbh s s wbh s s wbh wbh wbh s wbh wbh
	wbh wbh s wbh s s wbh s s wbh s s wbh wbh wbh s wbh
	wbh wbh wbh s wbh s s wbh s s wbh s s wbh wbh wbh s
	s wbh wbh wbh s wbh s s wbh s s wbh s s wbh wbh wbh
	wbh s wbh wbh wbh s wbh s s wbh s s wbh s s wbh wbh
	wbh wbh s wbh wbh wbh s wbh s s wbh s s wbh s s wbh
	\bar ":|.|:"
	wbh wbh wbh s wbh wbh wbh s wbh s s wbh s s wbh s s
	}>>
	
	<<{
	\hide Stem
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	hh8 hh hh s hh hh hh s hh s s hh s s hh s s 
	}\\{
	\hide Stem
	sn s sn sn sn s sn s s sn s s sn s s sn sn
	sn sn sn s sn s s sn s s sn s s sn sn sn s
	sn s sn s s sn s s sn s s sn sn sn s sn sn
	sn s s sn s s sn s s sn sn sn s sn sn sn s
	s sn s s sn s s sn sn sn s sn sn sn s sn s
	s s sn s s sn sn sn s sn sn sn s sn s s sn
	sn s s sn sn sn s sn sn sn s sn s s sn s s
	s sn sn sn s sn sn sn s sn s s sn s s sn s
	sn sn s sn sn sn s sn s s sn s s sn s s sn
	s sn sn sn s sn s s sn s s sn s s sn sn sn
	sn sn s sn s s sn s s sn s s sn sn sn s sn
	s sn s s sn s s sn s s sn sn sn s sn sn sn
	s s sn s s sn s s sn sn sn s sn sn sn s sn
	sn s s sn s s sn sn sn s sn sn sn s sn s s
	s sn s s sn sn sn s sn sn sn s sn s s sn s
	s s sn sn sn s sn sn sn s sn s s sn s s sn
	sn sn sn s sn sn sn s sn s s sn s s sn s s
	}\\{
	\hide Stem \shiftOff
	s s wbh wbh wbh s wbh wbh wbh s wbh s s wbh s s wbh
	s wbh s s wbh wbh wbh s wbh wbh wbh s wbh s s wbh s
	wbh s s wbh s s wbh wbh wbh s wbh wbh wbh s wbh s s
	s s wbh s s wbh s s wbh wbh wbh s wbh wbh wbh s wbh
	s wbh s s wbh s s wbh s s wbh wbh wbh s wbh wbh wbh
	wbh wbh s wbh s s wbh s s wbh s s wbh wbh wbh s wbh
	s wbh wbh wbh s wbh s s wbh s s wbh s s wbh wbh wbh
	wbh wbh s wbh wbh wbh s wbh s s wbh s s wbh s s wbh
	s wbh wbh wbh s wbh wbh wbh s wbh s s wbh s s wbh s
	wbh s s wbh wbh wbh s wbh wbh wbh s wbh s s wbh s s
	s s wbh s s wbh wbh wbh s wbh wbh wbh s wbh s s wbh
	s wbh s s wbh s s wbh wbh wbh s wbh wbh wbh s wbh s
	wbh s s wbh s s wbh s s wbh wbh wbh s wbh wbh wbh s
	wbh s wbh s s wbh s s wbh s s wbh wbh wbh s wbh wbh
	wbh wbh wbh s wbh s s wbh s s wbh s s wbh wbh wbh s
	wbh s wbh wbh wbh s wbh s s wbh s s wbh s s wbh wbh
	\bar ":|."
	wbh wbh wbh s wbh wbh wbh s wbh s s wbh s s wbh s s
	}>>
	<<{
	\hide Stem
	\time 16/8 hh hh hh s hh hh hh s hh s s hh s s hh s
	\time 15/8 hh hh hh s hh hh hh s hh s s hh s s hh
	\time 14/8 hh hh hh s hh hh hh s hh s s hh s s
	\time 13/8 hh hh hh s hh hh hh s hh s s hh s
	\time 12/8 hh hh hh s hh hh hh s hh s s hh
	\time 11/8 hh hh hh s hh hh hh s hh s s
	\time 10/8 hh hh hh s hh hh hh s hh s
	\time 9/8 hh hh hh s hh hh hh s hh
	\time 8/8 hh hh hh s hh hh hh s
	\time 7/8 hh hh hh s hh hh hh
	\time 6/8 hh hh hh s hh hh
	\time 5/8 hh hh hh s hh
	\time 4/8 hh hh hh s
	\time 3/8 hh hh hh
	\time 2/8 hh hh
	\time 1/8 hh
	}\\{
	\hide Stem
	s sn sn sn s sn sn sn s sn s s sn s s sn
	sn s sn sn sn s sn sn sn s sn s s sn s
	s sn s sn sn sn s sn sn sn s sn s s
	s s sn s sn sn sn s sn sn sn s sn
	sn s s sn s sn sn sn s sn sn sn
	sn sn s s sn s sn sn sn s sn
	sn sn sn s s sn s sn sn sn
	sn sn sn sn s s sn s sn
	sn sn sn sn sn s s sn
	sn sn sn sn sn sn s
	s sn sn sn sn sn
	sn s sn sn sn
	sn sn s sn
	sn sn sn
	sn sn
	sn
	}\\{
	\hide Stem \shiftOff
	wbh s wbh wbh wbh s wbh s s wbh s s wbh s s wbh
	wbh wbh wbh s wbh s s wbh s s wbh s s wbh wbh
	wbh s wbh s s wbh s s wbh s s wbh wbh wbh
	wbh s s wbh s s wbh s s wbh wbh wbh wbh
	s wbh s s wbh s s wbh wbh wbh wbh wbh
	s s wbh s s wbh wbh wbh wbh wbh s
	wbh s s wbh wbh wbh wbh wbh s s
	s wbh wbh wbh wbh wbh s s wbh
	wbh wbh wbh wbh s s wbh s
	wbh wbh s s wbh s wbh
	s s wbh s wbh wbh
	wbh s wbh wbh s
	wbh wbh s wbh
	s wbh wbh
	wbh s
	wbh
	}>>
  }
}

\layout {
	indent = 0.0\cm
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }
