\version "2.18.0"

%#(set-global-staff-size 18)

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5 
         "For Granddad" }
subtitle = "  "
subsubtitle =  \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #5
         "For Solo Piano" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}

\paper{
  left-margin = 1.75\cm
  right-margin = 1.75\cm
  top-margin = 1\cm
  bottom-margin = 2\cm
}



upper = \relative c''' {
  \clef treble
	\key ees \major
	\time 4/4
	\tempo "Adagio" 4 = 90
	\partial 8 bes8
	bes (g g ees ees g g) bes (
	bes aes aes g g4.) bes8 (
	bes g g ees ees g g) bes, (
	c2..) bes'8 (
	bes g g ees ees g g) bes (
	bes aes aes g g4.) bes8 (
	bes g g ees ees g g) bes, (
	ces2..) bes8 (
	c d d ees ees f f) bes, (
	c d d ees ees f f) bes, (
	d ees ees f f4) \times 2/3 {g8 (aes g)}

	bes8 (g g ees ees g g) bes (
	bes aes aes g g4.) bes8 (
	bes g g ees ees g g) bes, (
	c2..) bes8 (
	bes g g ees ees g g) bes (
	bes aes aes g g4.) bes8 (
	bes g g ees ees g g) bes, (
	c2) s4 s8 \breathe ees8 ( 
	f8 g g aes aes g g) f(
	f g g aes aes g g f
	ees4.) s4. \times 2/3{d'8 ( ees d} ees1) ~ ees

}

%===========================================================================

lower = \relative c {
  \clef bass
  	\set Staff.pedalSustainStyle = #'bracket
	\key ees \major
	\partial 8 r8
	<ees g bes>1\sustainOn
	<ees aes c>\sustainOff\sustainOn
	<ees g bes>1\sustainOff\sustainOn
	<<{aes8\sustainOff\sustainOn g aes g 
		aes2\sustainOff\sustainOn}\\{<ees c'>1}>>
	<ees g bes>1\sustainOff\sustainOn
	<ees aes c>\sustainOff\sustainOn
	<ees g bes>1\sustainOff\sustainOn
	<<{aes4\sustainOff\sustainOn f g aes}\\{<ees ces'>1}>>
	<f aes c>1\sustainOff\sustainOn
	<ees aes c>1\sustainOff\sustainOn
	<bes d f>\sustainOff\sustainOn
	
	<ees g bes>1\sustainOff\sustainOn
	<ees aes c>\sustainOff\sustainOn
	<ees g bes>1\sustainOff\sustainOn
	<<{aes8\sustainOff\sustainOn g aes g 
		aes2\sustainOff\sustainOn}\\{<ees c'>1}>>
	<ees g bes>1\sustainOff\sustainOn
	<ees aes c>\sustainOff\sustainOn
	<ees g bes>1\sustainOff\sustainOn
	<<{ ees8\sustainOff\sustainOn _(f g aes
	\change Staff = "upper"
	bes8 c d) s8 }\\{}>>
	\change Staff = "lower"
	<f, aes c>1\sustainOff\sustainOn
	<bes, d f>\sustainOff\sustainOn
	ees8( g bes \change Staff = "upper"
		ees8 g4)
	\change Staff = "lower"
	 r4 r2\sustainOff\sustainOn <ees, g bes> <ees, ees'>1
	\bar "|."
}

\score {
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 5)
                            (padding . 5))
  }<<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { indent = 0 }
  \midi { }
}