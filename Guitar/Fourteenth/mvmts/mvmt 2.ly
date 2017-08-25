
mainThemeB = {
	
\override Score.BarNumber.break-visibility = ##(#f #f #f)

	<e,-3 b''-4>8^"delicately" e'-1 gis,-2 e' b' e,
		\textSpannerUp
		\override TextSpanner #'(bound-details left text) = #"V "
	<a,,-1 a''-1>\startTextSpan (b-3) e-4 gis-2 e'-1 (fis-4) \stopTextSpan
		\textSpannerUp
		\override TextSpanner #'(bound-details left text) = #"VII"
	gis\startTextSpan e e, a gis' e\stopTextSpan
	fis dis b\4 dis fis b,\2

	<e, b''>8 b'-0 gis b b' b,
	<a cis'> b e b cis' b,
	<b,-3 b''-4> gis'-2 <e' a>^"V" gis, gis' gis,
		\textSpannerUp
		\override TextSpanner #'(bound-details left text) = #"IV "
	fis'\startTextSpan b, fis b dis,\stopTextSpan fis-2
	\bar "||"
}
secondPartB = {
	b,4^"pont." e'8 fis gis4
	dis,4 cis'8 e fis4
	<cis e,>8 (b) cis e fis (e )<dis b,>2.
	
	e,8^"dol." gis' (fis e) fis gis
	dis, fis' (e) cis e fis
	<cis e,>8 (b) cis e fis (e) <dis b,>2.
	<b, dis'>8-.\f <cis e'>-. <dis fis'>-. r4.
	<cis'' a,>8-.\p <dis b,>-. <e cis,>-. r4.
	<b,, dis'>8-.\f<cis e'>-. <dis fis'>-. r4.
	<cis'' a,>8-.\p <dis b,>-. <e cis,>4. <e cis,>8-.
	<dis b, b>2.
}
variationB = {
	<e,, b''>8 e' gis, e' b' e,
		\textSpannerUp
		\override TextSpanner #'(bound-details left text) = #"V "
	<a,, a''>\startTextSpan (b) e gis e' (fis) \stopTextSpan
		\textSpannerUp
		\override TextSpanner #'(bound-details left text) = #"VII"
	gis\startTextSpan e e, a gis' e\stopTextSpan
	fis dis b\4 dis fis b,\2

	<e, b''>8 b' gis b b' b,
	<a cis'> b e b cis' b,
	<b, b''> cis' <e a>^"V" cis gis' cis,
	\numericTimeSignature
	\time 2/4
	fis cis a cis cis, cis' d,
	cis' gis' cis, a' cis, e, cis' a cis b' cis, cis' cis,
	\time 3/4
	<dis'-4 b,-1>8 b,-0 fis'-3 b,-0 dis' b,-0
	<d' b,> b, f' b, d' b,
	<b' b, dis eis,>2
	\bar "|."
}

\score {

\header{
title =\markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #3 
         "Moment 2" }
tagline=""
composer = \markup { 
         \override #'(font-name . "Avenir Light")
		\fontsize #1 
         "Brian Ellis" }
arranger = "   "
}

\layout{}

\new Staff
<<
\relative c''{
	\key e \major
	\time 3/4
	\mainThemeB
	\secondPartB
	\variationB
}
>>

}

\paper{
  left-margin = 2\cm
  right-margin = 2\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-all-headers = ##t
  print-page-number = ##f
  indent = 0.0\cm
}

\header{
tagline = ""
}

