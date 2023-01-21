\version "2.24.0"

\header {
  tagline = ##f
}

\layout {
  indent = 0\cm
  ragged-right = ##f
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
  \context {
    \Voice
    \consists Horizontal_bracket_engraver
    \override HorizontalBracket.direction = #UP
  }
}

\parallelMusic voiceS,voiceA,voiceT,voiceB {
  f2 ges4 | des2 des4 | as2 bes4 | des2 ges4 |
  as2\startGroup des4\stopGroup | f2 as4 | des2 f4 | des2. |
  bes4^"т"\startGroup ges'^"ш" des\stopGroup | ges4 bes ges | des2 bes4 | ges2. |
  c2\startGroup es4\stopGroup | es2 as4 | as2 c4 | as2. |
  f4 es des | as4 as4 f4 | des4 c as | des,4 as des |
  des2\startGroup bes4\stopGroup | ges2. | bes2 des4 | ges,2. |
  as4\startGroup f\stopGroup ges | f4 des4 des4 | des4 as bes | des'2 ges,4 |
  es2\startGroup c4\stopGroup | c2 as4 | as2 es4 | as2. |
  des2. | as2. | f2. | des2. |
}

analysis = \lyricmode {
 Ⅰ Ⅳ Ⅰ − Ⅳ − − Ⅴ − Ⅰ Ⅴ Ⅰ Ⅳ − Ⅰ − Ⅳ Ⅴ − Ⅰ % Ⅰ Ⅳ Ⅴ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "Пример гармонизации" \key des \major \time 3/4 \relative c' \voiceS \bar "|."
      }
      \new Voice { \voiceTwo
        \relative c' \voiceA
      }
    >>
    \new Staff << \clef bass
      \new Voice { \voiceThree
        \relative c' \voiceT
      }
      \new Voice { \voiceFour
        \key des \major \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}


\markup \large "61. Гармонизовать следующие фразы:"

\parallelMusic voiceS,voiceA,voiceT,voiceB {
  b2 a8\startGroup fis8\stopGroup | d2 d4 | g2 fis8 a8 | g2 d'4 |
  g2\startGroup b4\stopGroup | d2. | b2 g4 | g,2. |
  c4\startGroup e c\stopGroup | e4 g e | g4 c g | c2. |
  a2. | d2. | fis2. | d2. |
  b2 a8\startGroup fis8\stopGroup | d2 d4 | g2 fis8 a8 | g,2 d'4 |
  g2 e4 | d2 c4 | b2 g4 | g,2 c4 |
  d4^"т"\startGroup a'^"ш" fis\stopGroup | a4 d2 | fis4 fis a | d2. |
  g2. | d2. | b2. | g,2. |
}

analysis = \lyricmode {
  Ⅰ Ⅴ − Ⅰ − Ⅳ − − Ⅴ Ⅰ Ⅴ − Ⅰ Ⅳ Ⅴ − − Ⅰ % Ⅰ Ⅳ Ⅴ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "1." \key g \major \time 3/4 \relative c'' \voiceS \bar "|."
      }
      \new Voice { \voiceTwo
        \relative c' \voiceA
      }
    >>
    \new Staff << \clef bass
      \new Voice { \voiceThree
        \relative c' \voiceT
      }
      \new Voice { \voiceFour
        \key g \major \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}

\parallelMusic voiceS,voiceA,voiceT,voiceB {
  bes8 d es^"ш" g,^"т" | d8 f g es | f,8 bes bes4 | bes4 es, |
  f8 bes c4 | d4 f4 | bes8 f a4 | bes'4 f |
  bes8 d es g | d8 f g bes | f8 bes bes es | bes4 es, |
  f8 d c4 | bes8 f f4 | d8 bes a4 | bes'4 f |
  d8 f f c | f8 bes a f | bes8 d c a | bes4 f |
  bes8 d c a | d8 f f c | f8 bes a f | bes4 f |
  bes8 d es^"ш" g,^"т" | d8 f g es | f8 bes bes4 | bes4 es, |
  f8 a bes4 | c8 f f4 | a8 c d4 | f4 bes |
}

analysis = \lyricmode {
  Ⅰ − Ⅳ − Ⅰ − Ⅴ Ⅰ − Ⅳ − Ⅰ − Ⅴ Ⅰ − Ⅴ − Ⅰ − Ⅴ − Ⅰ − Ⅳ − Ⅴ − Ⅰ % Ⅰ Ⅳ Ⅴ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "2." \key bes \major \time 2/4 \relative c'' \voiceS \bar "|."
      }
      \new Voice { \voiceTwo
        \relative c' \voiceA
      }
    >>
    \new Staff << \clef bass
      \new Voice { \voiceThree
        \relative c' \voiceT
      }
      \new Voice { \voiceFour
        \key bes \major \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}

\parallelMusic voiceS,voiceA,voiceT,voiceB {
  fis,4^"т" d'^"ш" b | d4 fis d | b2 fis4 | b2. |
  ais2 cis4 | cis2 fis4 | fis2 ais4 | fis2. |
  d4 fis^"ш" b,^"т" | fis4 b fis | b4 d d | b2. |
  cis2. | ais2. | fis2. | fis2. |
  d2 b4 | b2 fis4 | fis2 d4 | b2. |
  b4^"т" g'^"ш" e | g4 b g | e2 b4 | e,2. |
  cis2 ais4 | fis2 cis4 | ais2 fis4 | fis2. |
  b2. | d2. | fis2. | b,2. |
  g2 e4 | b2. | e2 g4 | e2. |
  fis2. | d2. | b2. | b2. |
}

analysis = \lyricmode {
  ⅰ − − Ⅴ − ⅰ − − Ⅴ ⅰ − ⅳ − − Ⅴ − ⅰ ⅳ − ⅰ % ⅰ ⅳ Ⅴ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "3." \key b \minor \time 3/4 \relative c'' \voiceS \bar "|."
      }
      \new Voice { \voiceTwo
        \relative c' \voiceA
      }
    >>
    \new Staff << \clef bass
      \new Voice { \voiceThree
        \relative c' \voiceT
      }
      \new Voice { \voiceFour
        \key b \minor \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}
