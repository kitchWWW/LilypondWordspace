\header{
title =""
subtitle="Guitar"
tagline=""
composer = "Brian Ellis"
}

Guitar = {
	\time 17/8
	\clef treble
	\set Timing.beatStructure = #'(2 2 2 2 3 3 3)
	\set Score.markFormatter = #format-mark-box-alphabet

	r4 r r r r8 <bes' d> <bes d> r <bes d> <bes d> r <bes d> <bes d>
	r4 r r r r8 <c e> <c e> r8 <c e> <c e> r8 <c e> <c e> 
	r4 r r r r8 <f a> <f a> r8 <f a> <f a> r8 <g d> <g d>
	r4 r r r r8 <c, e> <c e> r8 <c e> <c e> r8 <c e> <c e> 

	r4 r r r r8 <bes d> <bes d> r <bes d> <bes d> r <bes d> <bes d>
	r4 r r r r8 <c e> <c e> r8 <c e> <c e> r8 <c e> <c e> 
	r4 r r r r8 <f a> <f a> r8 <f a> <f a> r8 <g d> <g d>
	r4 r r r r8 <c, e> <c e> r8 <c e> <c e> r8 <c e> <c e> 

	\mark \default
	\bar ".|:"

	r4 r r r r8 <bes d> <bes d> r <bes d> <bes d> r <bes d> <bes d>
	r4 r r r r8 <c e> <c e> r8 <c e> <c e> r8 <c e> <c e> 
	r4 r r r r8 <f a> <f a> r8 <f a> <f a> r8 <g d> <g d>
	r4 r r r r8 <c, e> <c e> r8 <c e> <c e> r8 <c e> <c e> 
	
	r8 f, a f r f a f r8 d' f r d f r d f
	r8 f, a f r f a f r8 e' g r e g r e g
	r8 f, a f r f a f r8 a c r a c r bes d
	r8 f, a f r f a f r8 e' g r e g r e g

	\mark \default
	\bar ":|."
	
}



