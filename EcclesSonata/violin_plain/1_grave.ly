\header{
	title = "Sonata in G minor"
	subtitle = "for Violin and Piano"
	composer = "Henry Eccles"
	tagline = ""
}

%% use like ^\markup {\db}
db = \markup { \musicglyph #"scripts.downbow" }
ub = \markup { \musicglyph #"scripts.upbow" }

\pointAndClickOff

\relative c'' {
	\key g \minor
	\time 4/4

	\accidentalStyle modern-cautionary

	\mark \markup \large \bold {Grave}

	\partial 8 d8 \p
	\repeat volta 2 {
		bes'4\(( bes16) a\) g fis g4 r8 d

		%% disable clef / key signature
		\override Staff.Clef #'stencil = ##f
		\override Staff.KeySignature #'stencil = ##f

		c8.( \> bes16) a8( bes16 g) fis8( d) \! r d'
		a'8.( c,16) c8( bes16 a) bes8 \cresc e e( f16 g)
		cis,8 f f( g16 a) d,8 g g4(
		g8) \f bes16 a a4( a8) g16 f f8 e16( d^-)
	}
	\alternative {
		{
			d4 \> cis8.( \trill d16) d4. \! d8 \p
		}
		{
			d4 \> cis8.( \trill d16) d4. \! f8 \p
		}
	}

	f4. d8 bes16 a bes4 bes8
	g'8.( f16) es( d c bes) a8 f bes4(
	bes8) \< d16 c c4( c8) \! es16 d es8 \tuplet 3/2 {g16( f es)}
	d8.( \> c16) c8.( \trill bes16) \! bes4( bes16) f'( g a)
	bes4. g8 e4. e8
	a8 g16 fis g8.( a16) fis8-- \< d-- c'-- \! c--
	c bes16( a) bes8-- c-- d8.( \f c16) bes( a) g fis
	g( a) g a a8.( \trill _\markup { \italic { rit.} } g16) g4. \fermata
	\bar "|."
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

