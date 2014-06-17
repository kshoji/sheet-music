\header{
	tagline = ""
}

%% use like ^\markup {\db}
db = \markup { \musicglyph #"scripts.downbow" }
ub = \markup { \musicglyph #"scripts.upbow" }

%% doubleBreath = \markup { \musicglyph #"scripts.caesura.straight" \breathe }

\pointAndClickOff

\relative c'' {
	\key g \minor
	\time 3/8

	\accidentalStyle modern-cautionary
	\override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }

	\mark \markup { \large \bold {"Vivace"} }

	\repeat volta 2 {
		g16( \mf d') d-. d-. d-. c-.

		%% disable clef / key signature
		\override Staff.Clef #'stencil = ##f
		\override Staff.KeySignature #'stencil = ##f

		bes( c) bes-. a-. g8-.
		d'16( g) g-. g-. g-. a-.
		fis( g) fis-. e-. d-. fis-.
		g( bes) bes-. bes-. bes-. bes-.
		es,( g) g-. g-. g-. g-.
		c,( f) f-. f-. f-. f-.
		d( es) d-. c-. bes-. c-.
		d( g) g-. g-. g-. f-.
		e( \< f) e-. d-. c-. g'-. \!
		c-. g-. a-. bes-. a-. g-.
		fis-. \> g-. fis-. e-. d-. c-. \!
		bes \p g' bes, g' bes, g'
		c, g' c, g' \< c, g'
		d g d g d g
		es g es g es \! g
		bes, \mf g' bes, g' bes, \< g'
		c, g' c, g' c, g'
		d g fis a d, fis \!
		g4 a8
		bes16 a g f es d
		g f es d c bes
		c d es d c bes
		a bes c bes c a
		f( \f ^\accent bes) bes bes bes bes
		f( ^\accent c') c c c c
		f,( ^\accent d') d d d d
		f,( ^\accent es') es es es es
		f, \p bes f bes f bes
		f \cresc c' f, c' f, \< c'
		f, d' f, d' f, d'
		f, es' f, es' f, es' \!
		f \f g f es d bes'
		bes,[ c] c8.([ \trill bes16)]
	}
	\alternative {
		{
			bes4 r8
		}
		{
			bes4 d8 \mf
		}
	}
	g16 f g a g f
	e f e d c g'
	a g a bes a g
	fis4 d8 \p
	g16( d) d d d d
	a'( \< d,) d d d d
	bes'( \! d,) d d d d
	a'( d,) \> d d d d \!
	g( \mf d) g( d) g( d)
	a'( \< d,) a'( d,) a'( d,) \!
	bes'( d,) bes'( d,) bes'( d,)
	a'( \> d,) a'( d,) a'( d,) \!
	g \f a bes a g fis
	g a bes a g fis
	g a bes a g fis
	g \p aes g f g d
	es f g f es d
	c d es d c bes
	a bes c bes a g
	fis e d8-. d'-.
	es a,4 \trill
	g16 \f bes bes d d g
	g d d bes bes g
	d' bes bes g g d
	bes' g g d d bes
	g( bes) d g bes d
	g4 ^\accent r8
	<d, a' fis'>4 ^\accent r8
	<g, d' bes' g'>4 ^\accent r8
	\bar "|."
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

