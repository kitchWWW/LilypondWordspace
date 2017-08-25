\version "2.18.0"

\header {
	title = "Prelude"
	subtitle = "Op. 4 No. 1"
	composer = "Brian Ellis"
	tagline = ""
}

music = \relative c {
	\time 21/8
	\key d \major
	d8^"Allow notes to sustain" a' r d g r r4.  <fis' d>8 (<g e>) r <g e> (<a fis>) r r4. r4.
	d,,,8 a' r d g r r4. <fis' d>8 (<g e>) r <g e> (<a fis>) r r4. r4.
	d,,,8 a' r d g r r4.  <fis' d>8 (<g e>) r <g e> (<a fis>) r d,, r <cis'' a> g, <b' g> r
	a,, <b'' e, cis > a d,,, \grace fis''16 (g8) r a,, g'' (fis) d, fis'16 (e fis8) a,, e r  r d r8 r4.	d8\harmonic a'\harmonic r d g r r4.  <fis' d>8 (<g e>) r <g e> (<a fis>) r r4. r4.
	d,,,8\harmonic a'\harmonic r d g r r4.  <fis' d>8 (<g e>) r <g e> (<a fis>) r r4. r4.
	d,,,8\harmonic a'\harmonic r d g r r4.  <fis' d>8 (<g e>) r <g e> (<a fis>) r d,, r <cis'' a> g, <b' g> r
	a,, <b'' e, cis > a d,,, \grace fis''16 (g8) r
	<<{cis }\\{a,,4.}\\{
		<g'' e>8 \glissando (e) a16 \glissando (cis) }>>
	<<{cis8 }\\{a,,4.}\\{
		<g'' e>8 \glissando (e) a16 \glissando (cis) }>>
	<<{cis8 }\\{a,,4.}\\{
		<g'' e>8 \glissando (e) a16 \glissando (d) }>>
	
	<d a fis d,>8 d,,, d d4.\fermata
	<<{\grace e''16 (fis8) r8 fis8 fis r4}\\{<cis a a,>8 }>>
	<<{\grace e16 (fis8) r8 fis8 fis r4}\\{<cis a a,>8 }>>
	<<{\grace cis16 \glissando (e8) r e \grace e16 \glissando (fis8) r fis fis r r
	}\\{<a, a,>8 }>>
	\grace e'16 \glissando (fis8) r fis e r d 
	fis, a d d, a' d cis, d b' a, d fis d,4.  

}

\score {
	\new Staff \music
	\layout{}
	\midi {}
}
