\header{
title ="Lost Pines Staff Song"
tagline=""
composer = "Arr. Brian Ellis"
}
<<
	\relative c''{
		c8 d e8. e16 e8 e e4 d8 (c) a2.
		c8 c g4 c8 d e4 d8 (c) d2.
		c8 d e e e e e d d (c) a2.
		c8 c g g c8 d e d c8 b c2.
		c4 f2. f4 e2. e8 f g g g g g f e (d) d4 d,8 d d4
		c'8 d e e e e e e d c a2.
		c8 c g4 \grace {c16 d} e4 e8 d d b c2.
		c4 f2. f4 e2. e8 (f) g2. e8 (d) c2.
		c8 d e8. e16 e8 e e4 d8 (c) a2.
		c8 c g4 c8 d e4 d8 (c) d2.
		c8 d e e e e e d d (c) a2.
		c8 c g g c8 d e d c8 b c2.
		c4 f2. f4 e2. e8 (f) g2. e8 (d) c2.
	}
	\addlyrics{
		Lift our voi- ces as we sing Lost Pines
		To the skies voi- ces ring Lost Pines
		As we camp to- geth- er in the scouting way
		With the scout oath and the law to show the way
		Lost Pines Lost Pines
		We will work and do a good turn every day
		eve- ry day
		As we meet old firends and make some new ones too
		Side by side, together we are proud of you
		Lost Pines Lost Pines Lost Pines Lost Pines
		_ <humming>	_ _ _ _ _ _ _ _  _ _ _ _ _ 
		_ _ _ _ _  _ _ _ _ _  _ _ _ _ _  _ _ _ _ _ _ _ _
		Lost Pines Lost Pines Lost Pines Lost Pines
	}
>>

  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 128)
    }
  }