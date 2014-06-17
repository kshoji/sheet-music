\header{
	tagline = ""
}

\pointAndClickOff

\relative c'' {
	\key g \minor
	\time 3/4

	\accidentalStyle modern-cautionary

	\mark \markup { \left-column \large { "Courante" " " \bold "Allegro con spirito" } }

	\partial 8 d8 \downbow \f

	%% disable clef / key signature
	\override Staff.Clef #'stencil = ##f
	\override Staff.KeySignature #'stencil = ##f

	\repeat volta 2 {
		<g,, d' bes' g'>8 ^\accent d''16-. c-. bes8-.[ g-.] g,-.^[ g''-.]
		fis-. d-. a-. fis16-. e-. d8-.^[ a''--^1] \mp
		bes[( a]) bes[ fis] g[( c,^1])
		d2 r8 d^3 \f
		<g,, d' bes' g'>8 ^\accent d''16-. c-. bes8-.[ g-.] g,-.^[ g''-.]
		fis-. d-. a-. fis16-. e-. d8-.^[ a''--^1] \mp
		bes[( a]) bes[ fis] g[( c,^1])
		d2 r8 d^3 \mf
		<g,, d' b' g'>8 ^\accent d''16-.( c-.) b c d b g'8-. d-.
		es c16( d) es8-.[ c-.] g-.[ c-.]
		f c16( bes) a8-.[ c-.] f-.[ c-.]
		d-. bes16( c) d8-.[ bes-.] f-.[ bes-.]
		d-. a16^4( g) fis8-.[ a-.] d-.[ a-.]
		bes([ a^0)] g^1[ g'^4] d16^3( c) bes a
		bes( a) g8 c8.( \trill \< bes16) c8( d) \!
		d \f fis16( g) a8-.[ fis-.] d-.[ fis-.]
		a,16 d cis d a8-.[ d] fis,-.[ a-.^4]
	}
	\alternative {
		{
			d,2 \> r8 \! d'
		}
		{
			d,2 \> r8 \! f'! \f
		}
	}
	
	\repeat volta 2 {
		<d, bes' f'>8 ^\accent d'16 c bes8-.[ f-.] d-.[ bes'-.]
		c ^\accent c,16bes a8-.[ c'-.] f,-.[ f'-.]
		d([ c)] bes[ f'^3] d,-.([ f'-.)]
		g( f) g-. d-. es( d)
		c16^2 \mp bes a bes c bes a g f4
		cis'16^1 \upbow \f d e8 a,16^0 b cis8 a16 cis e8^4
		<d, a' f'>4. ^\accent bes''8^2( a g)
		f16( e) f g e4.( \trill d8)
		d4. d8 \mf es^1( g16 f)
		g8 aes d,4.^1( \trill c8^2)
		<g, es' c'>4. \mp d''8( c d)
		es[( a,]) c[( f,]) es'[-. c]-.
		d( c) bes-. d-. bes16( c d8)
		c-. fis,-. a-.^0 d,-. d'16 c bes a
		bes8( \cresc a) g-. bes16 a g8-. bes-.
		a-.[ e-.] g-.[ cis,-.] g'-.[ a,-.]
		fis'( e) d-. d'16 c bes c d bes
		es8[( c]) \< aes[ c] es[( g]) \!
		<d, a' fis'>4. ^\accent \f fis'8-- g[( bes,])
		a[ g d( a']) g' fis
		<g,, d' bes' g'>8 ^\accent \ff f''16 \upbow es \downbow d c bes a bes a g fis
		g8 f16 es d es d c bes( c) bes a
	}
	\alternative {
		{
			g2 r8 f''! \mf
		}
		{
			g,,2.
			<g d' bes' g'>8 r8 r4 r8
			\bar "|."
		}
	}
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

