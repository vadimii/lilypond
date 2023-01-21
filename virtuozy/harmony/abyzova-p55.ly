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

\markup \large "102. Гармонизовать следующие мелодии и басы:"


% Задание № 1

\parallelMusic voiceS,voiceA,voiceT,voiceB {
  bes2 d-3^"ш" | f1 | d2 bes | bes1 |
  g,2.-3^"т" f4 | es2. d4 | bes1 | es2. bes4 |
  f2^"т" c'4^"ш" d | c2 f4 f | a2 a4 bes | f'2. bes,4 |
  c1 | f1 | a1 | f'1 |
  d2-3 a4-3 bes | f1 | bes2 c4 d | bes,2 f'4 bes, |
  g2^"т" es'^"ш" | es2 g | bes1 | es1 |
  c2 f | f2 a | a2 c | f2 f, |
  d1 | f1 | bes1 | bes1 |
  es4^"ш" g,-3^"т" d'-3^"ш" bes | g4 es f d | bes2 bes4 f | es,2 bes'2 |
  a2 c | c2 f | f2 a | f1 |
  bes1( | d1( | f1( | bes1( |
  bes1) | d1) | f1) | bes1) |
}

analysis = \lyricmode {
 Ⅰ − Ⅳ Ⅰ Ⅴ − Ⅰ Ⅴ Ⅰ Ⅴ Ⅰ Ⅳ − Ⅴ − Ⅰ Ⅳ − Ⅰ − Ⅴ − Ⅰ % Ⅰ Ⅳ Ⅴ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "1. B-dur" \key bes \major \time 4/4 \relative c'' \voiceS \bar "|."
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


% Задание № 2

\parallelMusic voiceS,voiceA,voiceT,voiceB {
  a4.-3 d8-3 cis4 | fis4. fis8 eis4 | cis4. b8 gis4 | fis,4. b8 cis4 |
  cis2 fis4 | fis2 a4 | a2 cis4 | fis2 fis,4 |
  d4^"ш" fis,^"т" b | fis4 d fis | b2 d4 | b2. |
  gis2. | eis2. | cis2. | cis2. |
  fis4^"т" cis'^"ш" b | cis4 fis fis | a4 a-3 d-3 | fis4 fis, b |
  gis4.^"т" eis'8^"ш" fis4 | eis4. gis8 a4 | cis2. | cis2 fis,4 |
  fis2 d4 | b2 fis4 | d2 b4 | b2. |
  cis2^"ш" eis,4^"т" | eis2 cis4 | gis2. | cis2. |
  fis2. | cis2. | a2. | fis,2. |
}

analysis = \lyricmode {
  ⅰ ⅳ Ⅴ ⅰ − ⅳ − − Ⅴ ⅰ − ⅳ Ⅴ − ⅰ ⅳ − Ⅴ − ⅰ % ⅰ ⅳ Ⅴ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "2. fis-moll" \key fis \minor \time 3/4 \relative c'' \voiceS \bar "|."
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
        \key fis \minor \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}


% Задание № 3

\parallelMusic voiceS,voiceA,voiceT,voiceB {
  c2-3^"ш" f,-3^"т" as | es2 des es | as2 as c | as2 des as |
  g2. bes4 c2 | es1. | bes2. g4 as2 | es'1 as,2 |
  as2 des bes | des2 f es | f2 as g | des1 es2 |
  c2 bes1 | es2 es1 | as2 g1 | as,2 es'1 |
  es2^"ш" g,2.^"т" as4 | g2 es2. es4 | bes2 bes2. c4-3 | es,2 es'2. as,4 |
  bes2^"ш" es,^"т" es | es2 bes c | g2-3 g as | es1 as2 |
  f2.^"т" des'4^"ш" as2 | des2. f4 des2 | as2. as4 f2 | des,1. |
  g1 bes2 | bes1 es2 | es1 g2 | es1. |
  as1. | c1. | es1. | as1. |
}

analysis = \lyricmode {
  Ⅰ Ⅳ − Ⅴ − Ⅰ Ⅳ − Ⅴ Ⅰ Ⅴ Ⅴ − Ⅰ Ⅴ − Ⅰ Ⅳ − − Ⅴ − Ⅰ % Ⅰ Ⅳ Ⅴ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "3. As-dur" \key as \major \time 3/2 \relative c'' \voiceS \bar "|."
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
        \key as \major \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}


% Задание № 4

\parallelMusic voiceS,voiceA,voiceT,voiceB {
  fis4 e | d4 cis | a4 a | d,4 a' |
  fis8-3 b-3 a4 | d2 | a8 g fis4 | d8 g, d'4|
  a8 cis d d | cis8 e fis g | e8 a a b | a4 d,8 g |
  cis4 e | e4 a | a4 cis | a2 |
  fis8-3 cis-3 d^"т" a'^"ш" | a8 a a d | d8 e fis fis | d8 a' d,4 |
  g8^"ш" b,^"т" d4 | b8 g g4 | d8 d b4 | g2 |
  fis8^"ш" a,^"т" b g | a8 fis g d | d4 d8 b | d4 g, |
  fis4^"т" d'^"ш" | d4 fis | a2 | d'2 |
}

analysis = \lyricmode {
  Ⅰ Ⅴ Ⅰ Ⅳ Ⅰ Ⅴ − Ⅰ Ⅳ Ⅴ − Ⅰ Ⅴ Ⅰ − Ⅳ − − Ⅰ − Ⅳ − Ⅰ − % Ⅰ Ⅳ Ⅴ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "4. D-dur" \key d \major \time 2/4 \relative c' \voiceS \bar "|."
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
        \key d \major \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}
