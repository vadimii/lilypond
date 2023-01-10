\version "2.24.0"

\header {
  tagline = ##f
}

\layout {
  indent = 0\cm
  \context {
    \Staff
    printKeyCancellation = ##f
    explicitKeySignatureVisibility = #end-of-line-invisible
    \override InstrumentName.font-series = #'bold
    \override TimeSignature.break-visibility = ##(#f #t #t)
  }
  \context {
    \Score
    \override BarNumber.break-visibility = ##(#f #f #f)
  }
}

\parallelMusic voiceSa,voiceAa,voiceTa,voiceBa {
  s2 g4 | s2 d4 | s2 b4 | s2 g4 |
  a2 s4 | fis2 s4 | d2 s4 | d2 s4 |
}

\parallelMusic voiceSb,voiceAb,voiceTb,voiceBb {
  bes4. c8 d4 | d4. f8 f4 | f4. a8 d4 | bes4. f8 bes4 |
  es2 c4 | g2 f4 | bes2 a4 | es,2 f4 |
  bes2. | d2. | f2. | bes2. |
}

\parallelMusic voiceSc,voiceAc,voiceTc,voiceBc {
  a4 b | fis4 gis | cis4 d | fis4 b, |
  gis4 a | eis4 fis | cis4 cis | cis4 fis, |
  fis4 eis | d4 cis | b4 d | b4 cis |
  fis2 | cis2 | a2 | fis,2 |
}

\parallelMusic voiceSd,voiceAd,voiceTd,voiceBd {
  es2 d4 | bes2 bes4 | g2 f4 | es2 bes'4 |
  es2 f4 | bes2 d4 | g2 bes4 | es2 bes4 |
  g2. | es2. | bes2. | es,2. |
}

\parallelMusic voiceSe,voiceAe,voiceTe,voiceBe {
  e4 e e fis | b4 cis b dis | gis4 a gis b | e4 a e' b |
  gis4. a8 b2 | e4. e8 gis2 | b4. cis8 e2 | e,4. a8 e2 |
}

analysis = \lyricmode {
  Ⅰ Ⅴ Ⅰ Ⅳ Ⅰ Ⅳ Ⅴ Ⅰ Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅴ Ⅰ Ⅰ Ⅴ Ⅰ Ⅴ Ⅰ Ⅰ Ⅳ Ⅰ Ⅴ Ⅰ Ⅳ Ⅰ
}

\markup \large "48. Гармонизовать следующие фразы:"

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "1." \key g \major \time 3/4 \relative c'' \voiceSa \bar "||"
        \sectionLabel "2." \key bes \major \relative c'' \voiceSb \bar "||"
        \sectionLabel "3." \key fis \minor \time 2/4 \relative c'' \voiceSc \bar "||" \break
        \sectionLabel "4." \key es \major \time 3/4 \relative c' \voiceSd \bar "||"
        \sectionLabel "5." \key e \major \time 4/4 \relative c' \voiceSe \bar "|."
      }
      \new Voice { \voiceTwo
        \relative c' \voiceAa
        \relative c' \voiceAb
        \relative c' \voiceAc
        \relative c' \voiceAd
        \relative c' \voiceAe
      }
    >>
    \new Staff << \clef bass
      \new Voice { \voiceThree
        \relative c' \voiceTa
        \relative c \voiceTb
        \relative c' \voiceTc
        \relative c' \voiceTd
        \relative c' \voiceTe
      }
      \new Voice = "bass" { \voiceFour
        \key g \major \relative c' \voiceBa
        \key bes \major \relative c \voiceBb
        \key fis \minor \relative c \voiceBc
        \key es \major \relative c, \voiceBd
        \key e \major \relative c, \voiceBe
      }
    >>
    \new Lyrics \lyricsto "bass" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}

\markup \large "49. Гармонизовать следующие мелодии:"

\parallelMusic voiceSa,voiceAa,voiceTa,voiceBa {
  c4 d | e4 f | a4 a | a4 d |
  b4 c | e4 e | gis4 a | e4 a, |
  a4 gis | d4 b | f4 e | d4 e |
  a2 | c2 | e2 | a,2 |
}

\parallelMusic voiceSb,voiceAb,voiceTb,voiceBb {
  c4 des c | f4 f es | as'4 bes g | f4 bes, c |
  as2 bes4 | c2 des4 | f2 f4 | f2 bes,4 |
  g2. | c2. | es2. | c2. |
  f2. | as2. | c2. | f,2. |
}

\parallelMusic voiceSc,voiceAc,voiceTc,voiceBc {
  es4 f g | bes d es | g bes bes | es bes es, |
  as2 f4 | es2 d4 | c2 bes4 | as2 bes4 |
  g4 as g4 | es f es | bes c bes | es as, es' |
  bes2. | f2 g4 | d2 es4 | bes2 es4 |
  c4 bes g | as f es | es d bes | as, bes es |
  as2 g4 | f2 es4 | d2 bes4 | as,2 es'4 |
  f4 es d | d bes bes | bes g f | bes es bes |
  es2. | bes2. | g2. | es,2. |
}

\parallelMusic voiceSd,voiceAd,voiceTd,voiceBd {
  cis2 d4 | e2 fis4 | a2 a4 | a2 d4 |
  b2 cis4 | e2 e4 | gis2 a4 | e2 a,4 |
  a4 gis a | d b cis | fis e e | d e a, |
  b2. | e2. | gis2. | e2. |
  cis4 d e | e fis a | a a cis | a d a |
  fis2 e4 | a2 gis4 | d2 b4 | d2 e4 |
  cis4 d b | e fis e | a a gis | a d, e |
  a2. | cis2. | e2. | a,2. |
}

% d f a Ⅰ
% g b d Ⅳ
% a c e Ⅴ

\parallelMusic voiceSe,voiceAe,voiceTe,voiceBe {
  a2 g4 e | fis2 d4 cis | d2 b4 a | d,2 g4 a |
  fis4 d fis2 | d4 b d2 | a4 g a2 | d4 g d2 |
  e2 fis4 g | cis2 d4 d | a2 a4 b | g,2 d4 g |
  e1 | cis | a | a |
  fis4 g a b | d4 d fis g | a4 b d d | d4 g, d g |
  a2 fis4 g | e2 d4 d | cis2 a4 b | a2 d4 g, |
  fis2 e | d2 cis | a2 a | d'2 a |
  d1 | a | fis | d |
}

% f a c Ⅰ
% b d f Ⅳ
% c e g Ⅴ

\parallelMusic voiceSf,voiceAf,voiceTf,voiceBf {
  fis2 d | a'2 fis | cis2 b | fis2 b |
  cis2. cis4 | fis2. eis4 | a2. gis4 | fis2. cis'4 |
  a2 b | cis2 d | fis2 fis | fis2 b, |
  gis1 | cis1 | eis1 | cis1 |
  gis2 a4 b | cis2 cis4 d | eis2 fis4 fis | cis2 fis,4 b |
  cis2 b | fis2 d | a2 fis | fis2 b |
  a2 gis4 a | cis2 cis4 cis | fis2 eis4 fis | fis'2 b,4 fis |
  fis2 eis | b2 gis | d2 cis | b2 cis |
  fis1 | a1 | cis1 | fis,1 |
}

% g b d Ⅰ
% c e g Ⅳ
% d f a Ⅴ

\parallelMusic voiceSg,voiceAg,voiceTg,voiceBg {
  bes4 c a | d4 es d | g4 g fis | g4 c d |
  bes2 g4 | d2 c4 | g2 es4 | g,2 c4 |
  fis2 g4 | a2 bes4 | d2 d4 | d2 g,4 |
  a2. | d2. | fis2. | d2. |
  bes4 c d | d4 es g | g4 g bes | g4 c g |
  c2 a4 | es2 d4 | g2 fis4 | c2 d4 |
  g2 g4 | bes2 c4 | d2 es4 | g,2 c4 |
  g2. | bes2. | d2. | g2. |
}

analysis = \lyricmode {
  Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅴ Ⅰ Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅴ Ⅰ
  Ⅰ Ⅴ Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅰ Ⅴ Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅰ Ⅴ Ⅰ Ⅴ Ⅰ
  Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅴ Ⅰ Ⅴ Ⅰ Ⅳ Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅴ Ⅰ
  Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅰ Ⅳ Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅰ Ⅴ Ⅰ
  Ⅰ Ⅳ Ⅰ Ⅴ Ⅰ Ⅳ Ⅴ Ⅴ Ⅰ Ⅳ Ⅰ Ⅳ Ⅰ Ⅴ Ⅰ Ⅳ Ⅴ Ⅰ
  Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅴ Ⅰ Ⅴ Ⅰ Ⅳ Ⅰ Ⅳ Ⅴ Ⅰ Ⅳ Ⅰ % Ⅰ Ⅳ Ⅴ
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "1." \key a \minor \time 2/4 \relative c'' \voiceSa \bar "||"
        \sectionLabel "2." \key f \minor \time 3/4 \relative c'' \voiceSb \bar "||" \break
        \sectionLabel "3." \key es \major \relative c' \voiceSc \bar "||"
        \sectionLabel "4." \key a \major \relative c'' \voiceSd \bar "||" \break
        \sectionLabel "5." \key d \major \time 4/4 \relative c'' \voiceSe \bar "||"
        \sectionLabel "6." \key fis \minor \relative c'' \voiceSf \bar "||" \break
        \sectionLabel "7." \key g \minor \time 3/4 \relative c'' \voiceSg \bar "||"
      }
      \new Voice { \voiceTwo
        \relative c' \voiceAa
        \relative c' \voiceAb
        \relative c' \voiceAc
        \relative c' \voiceAd
        \relative c' \voiceAe
        \relative c' \voiceAf
        \relative c' \voiceAg
      }
    >>
    \new Staff << \clef bass
      \new Voice { \voiceThree
        \relative c' \voiceTa
        \relative c \voiceTb
        \relative c' \voiceTc
        \relative c' \voiceTd
        \relative c' \voiceTe
        \relative c' \voiceTf
        \relative c' \voiceTg
      }
      \new Voice = "bass" { \voiceFour
        \key a \minor \relative c \voiceBa
        \key f \minor \relative c \voiceBb
        \key es \major \relative c \voiceBc
        \key a \major \relative c \voiceBd
        \key d \major \relative c \voiceBe
        \key fis \minor \relative c, \voiceBf
        \key g \minor \relative c \voiceBg
      }
    >>
    \new Lyrics \lyricsto "bass" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}
