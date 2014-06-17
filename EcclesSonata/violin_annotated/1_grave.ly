\header{
	title = "Sonata in G minor"
	subtitle = "for Violin and Piano"
	composer = "Henry Eccles"
	tagline = ""
}

\pointAndClickOff

\relative c'' {
	\key g \minor
	\time 4/4

	\accidentalStyle modern-cautionary

	\mark \markup \large \bold {Grave}

	\partial 8 d8^2 \upbow \p
	\repeat volta 2 {
		bes'4\(( bes16) a^3\) g fis g4 r8 d

		%% disable clef / key signature
		\override Staff.Clef #'stencil = ##f
		\override Staff.KeySignature #'stencil = ##f

		c8.( \> bes16) a8( bes16 g) fis8( d) \! r d'
		a'8.^0( c,16^2) c8( bes16 a) bes8 \cresc e^0 e( f16 g)
		cis,8^3 f f^1( g16 a) d,8 g g4(
		g8) \f bes16^2 a a4( a8) g16 f f8 e16( d^-)
	}
	\alternative {
		{
			d4^2 \> cis8.( \trill d16) d4. \! d8 \p
		}
		{
			d4 \> cis8.( \trill d16) d4. \! f8^3 \p
		}
	}

	f4. d8 bes16 a bes4 bes8^1
	g'8.( f16) es( d c bes) a8 f bes4(
	bes8) \< d16 c c4( c8) \! es16^2 d es8 \tuplet 3/2 {g16( f es)}
	d8.( \> c16^2) c8.( \trill bes16) \! bes4( bes16) f'^1( g^1 a^2)
	bes4. g8 e4.^3 e8^0
	a8 g16 fis g8.( a16^1) fis8-- \< d-- c'-- \! c--
	c bes16( a) bes8-- c--^2 d8.( \f c16) bes( a^3) g fis
	g^1( a) g a a8.( \trill _\markup { \italic { rit.} } g16) g4.^2 \fermata
	\bar "|."
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

