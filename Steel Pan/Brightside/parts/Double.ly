\header{
title =""
subtitle="DoubleTenor"
tagline=""
arranger = "Brian Ellis"
composer = ""
}

Double = {
\set Score.markFormatter = #format-mark-box-alphabet
\override MultiMeasureRest.expand-limit = #1
\compressFullBarRests

	\time 4/4
	\tempo 4 = 150
	\key d \major
\mark \default

	d8\mf fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,
\mark \default

	d8 fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,

	d8 fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,

	d8\f fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,

	<d fis>8 <d fis>4<d fis>4<d fis>4<d fis>8
	<d fis>8 <d fis>4<d fis>4<d fis>4<d fis>8
	<d g>8<d g>4<d g>4<d g>4<d g>8
	<d g>8<d g>4<d g>4<d g>4<d g>8

\mark \markup { \musicglyph #"scripts.segno" }

	<b' fis>2 <b fis>2
	<b fis>4 <b fis> <b fis> <b fis> 
	<a e>2 <a e>2 
	<a e>2 <a e>2 

	d,8\mf fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,	

\mark \default
	r4 <b fis>4\f <b fis>4 <b fis>4
	 <b fis>2  <b fis>2
	<a e>4 <a e> <a e>2

	g,8\mp fis' d' fis, e e' d fis,	
	
	<g d>4.:32\f <g d>8~ <g d>4: <g d>4: ~ 
	<g d>8 <g d>2.. :
	
	g,8\mp\< fis' d' fis, e e' d fis,	
	g,8 fis' d' fis, e e' d fis,	

	
\mark \default
	fis8\mf d fis d fis d fis d
	g d g d g d g d
	a' d, a' d, a' d, a' d,
	e a, d a cis a d a

	fis'8 d fis d fis d fis d
	g d g d g d g d
	a' d, a' d, a' d, a' d,
	e a, d a cis a d a

	fis'8 d fis d fis d fis d
	g d g d g d g d
	a' d, a' d, a' d, a' d,
	e a, d a cis a d a
	
	<d' g,>4.:32 <d fis,>4.: <d fis,>4: ~<d fis,>2.: r4
	r8 a,8\f fis'4 e d
	e2 d

\bar "||"
\mark \markup { "To Coda" }

	fis8\mp d fis d fis d fis d
	g d g d g d g d
	a' d, a' d, a' d, a' d,
	e a, d a cis a d a

	fis'8 d fis d fis d fis d
	g d g d g d g d
	a' d, a' d, a' d, a' d,
	e a, d a cis a d a

\mark \default

	d8\mf fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,
	g, fis' d' fis, e e' d fis,

	d8 fis d' fis, e e' d fis,
	cis fis d' fis, e e' d fis,
	g,4 d'8\f d d d cis d
	r1	

	<d fis>8 <d fis>4<d fis>4<d fis>4<d fis>8
	<d fis>8 <d fis>4<d fis>4<d fis>4<d fis>8
	<d g>8<d g>4<d g>4<d g>4<d g>8
	<d g>8<d g>4<d g>4<d g>4<d g>8

	<d fis>8 <d fis>4<d fis>4<d fis>4<d fis>8
	<d fis>8 <d fis>4<d fis>4<d fis>4<d fis>8
	<d g>8<d g>4<d g>4<d g>4<d g>8
	<d g>8 <d g>4<d g>4<d g>4^"D.S. al Coda" <d g>8

\mark \markup { \musicglyph #"scripts.coda" }
\bar "||"

	fis8\mf d fis d g d a' d,
	g d a' d, g d fis d
	fis d fis d g d fis d 
	e a, d a cis a d a

	fis'8 d fis d g d a' d,
	g d a' d, g d fis d
	fis d fis d g d fis d 
	e a, d a cis a a'4\mp

\mark \default
	a4.: a8~a2: ~ a1: ~a1: ~a2: r4 a\mf
	a4.: a8~a2: ~ a1: ~a1: ~a2: r4 e'\f

	d4.: d8 ~ d2: ~ d2.: cis8 a ~ a1: ~
	a2: r4 e'4

	d4.: d8 ~ d2: ~ d2.: cis8 a ~ a1:
	<a, e'>4 <a d> <a cis>2\fermata
	
\bar "|."


}

