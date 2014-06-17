\header{
	tagline = ""
}

\pointAndClickOff

\relative c'' {
	\key g \minor
	\time 3/2

	\accidentalStyle modern-cautionary
	\override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }

	\mark \markup { \large \bold {"Adagio"} }

	r2 r2 d2^2 \upbow \mf

	%% disable clef / key signature
	\override Staff.Clef #'stencil = ##f
	\override Staff.KeySignature #'stencil = ##f

	c2.( es4^2) d4.( c8^4)
	bes4.( a8) g2 \breathe d'^2 \upbow
	g2.( bes4^2) a4.( g8)
	fis4.( e8) d2 \breathe g4.( \downbow d8)
	d4.^2( c8) c2. c4--^2 \upbow
	c2( bes) \breathe d^2
	es4.( a,8^2) a2.( \trill \> g4) \!
	g1 \breathe g'2^2
	f4 bes, f'4.^2( g8) f4.( g8)
	es4^2 g, es'4.( f8) es4.( f8)
	d4^2 f, d'4.( es8) d4.( es8)
	c2^2 f,^1 r4 d' \pp
	c2( f,) \breathe f'^1 \f
	bes4^2( d,) c2.^2( \> \trill bes4) \!
	bes1 \< bes'2^2 \f \!
	bes a4.( bes8) g4.^1( a8^1)
	fis2.^3 d4^1 \downbow \< g4.^4( d8) \!
	c4.^3( bes8) a2.^2( \> \trill g4) \!
	g2. \breathe d'4^1 \f es4.( d8^2)
	d2. \> d4^2( \! \p es4. d8)
	d2. \< d4^1 \downbow \! es4.( \f d8)
	c4.^3( bes8) a2.^2( \trill \> g4) \upbow \!
	g2.^2 d4^1 _\markup { \small "sul G" } \< g4.^3( a,8^1) \!
	bes4.( c8^2) c2.( _\markup { \italic {rit.} } d4) \upbow
	d1.^2( \>
	d1.) \fermata \! _\markup { \italic {"attacca"} }
	\bar "|."
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

