\header{
	tagline = ""
}

%% doubleBreath = \markup { \musicglyph #"scripts.caesura.straight" \breathe }

\pointAndClickOff

\relative c'' {
	\key g \minor
	\time 3/2

	\accidentalStyle modern-cautionary
	\override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }

	\mark \markup { \large \bold {"Adagio"} }

	r2 r2 d2 \mf

	%% disable clef / key signature
	\override Staff.Clef #'stencil = ##f
	\override Staff.KeySignature #'stencil = ##f

	c2.( es4) d4.( c8)
	bes4.( a8) g2 \breathe d'
	g2.( bes4) a4.( g8)
	fis4.( e8) d2 \breathe g4.( d8)
	d4.( c8) c2. c4--
	c2( bes) \breathe d
	es4.( a,8) a2.( \trill \> g4) \!
	g1 \breathe g'2
	f4 bes, f'4.( g8) f4.( g8)
	es4 g, es'4.( f8) es4.( f8)
	d4 f, d'4.( es8) d4.( es8)
	c2 f, r4 d' \pp
	c2( f,) \breathe f' \f
	bes4( d,) c2.( \> \trill bes4) \!
	bes1 \< bes'2 \f \!
	bes a4.( bes8) g4.( a8)
	fis 2. d4 \< g4.( d8) \!
	c4.( bes8) a2.( \> \trill g4) \!
	g2. \breathe d'4 \f es4.( d8)
	d2. \> d4( \! \p es4. d8)
	d2. \< d4 \! es4.( \f d8)
	c4.( bes8) a2.( \trill \> g4) \!
	g2. d4 \< g4.( a,8) \!
	bes4.( c8) c2.( _\markup { \italic {rit.} } d4)
	d1.( \>
	d1.) \fermata \! _\markup { \italic {"attacca"} }
	\bar "|."
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

