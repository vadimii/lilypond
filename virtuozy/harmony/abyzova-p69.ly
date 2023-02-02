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

\markup \large "131. Гармонизовать следующие мелодии и басы:"


% Задание № 1

\parallelMusic voiceS, voiceA, voiceT, voiceB {
  a4 cis8-3^"ш" | e4 e8 | cis4 a8 | a4. |
  fis,8-3^"т" d'^"ш" a | d8 fis fis | a4 d8 | d4. |
  gis8 b e | e4 gis8 | b8 gis b | e4. |
  e4 cis8 | a4 e8 | cis4 a8 | a,4. |
  d8 fis e | fis8 a gis | a8 d b | d,4 e8 |
  cis8-3 gis-3 a | e4. | a8 b cis | a8 e' a, |
  fis4^"т" d'8^"ш" | d4 fis8 | a4. | d4. |
  cis8 a gis | e4 d8 | a8 cis b | e4. |
  a4. | cis4. | a4. | a,4. |
}

analysis = \lyricmode {
  \override LyricText.self-alignment-X = #1
  \markup { A: \hspace #2 Ⅰ}
  \override LyricText.self-alignment-X = #0
  −  Ⅳ − − Ⅴ − − Ⅰ − Ⅳ − Ⅴ Ⅰ Ⅴ Ⅰ Ⅳ − ᛕ − Ⅴ₇ Ⅰ % Ⅰ Ⅳ ᛕ Ⅴ₇ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "①" \key a \major \time 3/8 \relative c'' \voiceS \bar "|."
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
        \key a \major \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}

% \score {
%   \new GrandStaff {
%     \key a \major
%     \relative { <a' cis e>1 <d, fis a> <e gis b d> s1 s1 s1 s1 }
%   }
%   \layout {
%     \omit Staff.TimeSignature
%     \override Score.BarLine.stencil = ##f
%   }
% }


% Задание № 2

\parallelMusic voiceS, voiceA, voiceT, voiceB {
  c2 bes4 | f2. | a2-3 d4-3 | f,2 d'4 |
  a2^"т" f'4^"ш" | f2 a4 | c2. | f2 f,4 |
  d4 bes a | f2. | bes4 d c | bes2 f4 |
  a2 g4 | f2 e4 | c2. | c'2 c,4 |
  f4 g a | c2. | a4-3 e-3 f | f4 c' f, |
  bes4 c d | d4 f f | f4 a bes | bes4 f bes |
  c4^"ш" f,^"т" g | f4 c e\glissando | a4 a bes | c2. |
  f2. | c2.^"?" | a2. | f2. |
}

analysis = \lyricmode {
  \override LyricText.self-alignment-X = #1
  \markup { F: \hspace #2 Ⅰ}
  \override LyricText.self-alignment-X = #0
  Ⅳ Ⅰ − Ⅳ − Ⅰ ᛕ Ⅴ Ⅰ Ⅴ Ⅰ Ⅳ Ⅰ Ⅳ ᛕ − Ⅴ₇ Ⅰ % Ⅰ Ⅳ ᛕ Ⅴ₇ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "②" \key f \major \time 3/4 \relative c'' \voiceS \bar "|."
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
        \key f \major \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}

% \score {
%   \new GrandStaff {
%     \key f \major
%     \relative { <f' a c>1 <bes d f> <c, e g bes> s1 s1 s1 s1 }
%   }
%   \layout {
%     \omit Staff.TimeSignature
%     \override Score.BarLine.stencil = ##f
%   }
% }


% Задание № 3

\parallelMusic voiceS, voiceA, voiceT, voiceB {
  g2 f4 bes | es2 d | bes2 bes4 f | es,2 bes' |
  bes2^"ш" es,^"т" | es2 bes | g2 g | es,2 es' |
  es2^"т" c'4^"ш" as | c2 es4 es | as2. c4 | as,1 |
  g2 f | es2 d | bes1 | bes1 |
  g2-3 as4-3 bes | es2 c4 es | bes2 es,4 g | es,2 as4 es |
  c2 es | es2 as | as2 c | as1 |
  es4 bes bes^"ш" d,^"т" | g4 es d\glissando as^"?" | bes4 g f2 | bes1 |
  es1 | g1^"?" | es1 | es,1 |
}

analysis = \lyricmode {
  \override LyricText.self-alignment-X = #1
  \markup { E♭: \hspace #2 Ⅰ}
  \override LyricText.self-alignment-X = #0
  Ⅴ − Ⅰ − Ⅳ − − ᛕ Ⅴ Ⅰ Ⅳ Ⅰ Ⅳ − ᛕ − Ⅴ Ⅴ₇ Ⅰ % Ⅰ Ⅳ ᛕ Ⅴ₇ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "③" \key es \major \time 4/4 \relative c'' \voiceS \bar "|."
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
        \key es \major \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}

% \score {
%   \new GrandStaff {
%     \key es \major
%     \relative { <es' g bes>1 <as c es> <bes d f as> s1 s1 s1 s1 }
%   }
%   \layout {
%     \omit Staff.TimeSignature
%     \override Score.BarLine.stencil = ##f
%   }
% }


% Задание № 4

\parallelMusic voiceS, voiceA, voiceT, voiceB {
  c4 as8-3 des-3 | f2 | as4 c8 bes | f,4 f'8 bes, |
  c4 g | e4 e | g4 c | c2 |
  f4 g8 as-3 | c4 e8 f | as4 c8 c | f4 c8 f, |
  bes2-3 | des2 | f,2 | bes2 |
  as4-3 e8-3 f | c2 | f4 g8 as | f4 c'8 f, |
  des4^"т" bes'8^"ш" f | bes4 des8 des | f4. bes8 | bes2 | \break
  e4 f | c2 | g4 as | c4 f |
  as4 g | f4 e | c2 | c2 |
  as4 f8^"т" c'^"ш" | f4 c8 f | c4 as8 as | f2 |
  des8-3 as-3 bes^"т" f'^"ш" | f4. bes8 | bes8 c des des | bes,8 f' bes, bes |
  f4 e | as4 g | c4 bes4 | c2 |
  f2 | f2 | as2 | f,2 |
}

analysis = \lyricmode {
  \override LyricText.self-alignment-X = #1
  \markup { f: \hspace #2 ⅰ}
  \override LyricText.self-alignment-X = #0
  − ⅳ Ⅴ − ⅰ Ⅴ ⅰ ⅳ ⅰ Ⅴ ⅰ ⅳ − − Ⅴ ⅰ ᛕ Ⅴ ⅰ − − ⅳ ⅰ ⅳ − ᛕ Ⅴ₇ ⅰ % ⅰ ⅳ ᛕ Ⅴ₇ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "④" \key f \minor \time 2/4 \relative c'' \voiceS \bar "|."
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
        \key f \minor \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}

% \score {
%   \new GrandStaff {
%     \key f \minor
%     \relative { <f' as c>1 <bes des f> <c, e! g bes> s1 s1 s1 s1 }
%   }
%   \layout {
%     \omit Staff.TimeSignature
%     \override Score.BarLine.stencil = ##f
%   }
% }


% Задание № 5

\parallelMusic voiceS, voiceA, voiceT, voiceB {
  g4^"т" es'^"ш" b | es4 g d | c2 g4 | c2 g'4 |
  c2 es4-3^"ш" | es2 g4 | g2 c4 | c,2. |
  as,2-3^"т" f'4^"ш" | f2 as4 | c2. | f2. |
  es4 d b | g2. | c4 b d | g2. |
  c2^"т" g'4^"ш" | g2 c4 | es2 es4-3 | c,2. |
  f4^"т" c'^"ш" as | c4 f c | as4-3 as f | f2. |
  g2^"ш" b,4^"т" | b2 f4 | d2. | g2. |
  c2. | es2. | c2. | c,2. |
}

analysis = \lyricmode {
  \override LyricText.self-alignment-X = #1
  \markup { c: \hspace #2 ⅰ}
  \override LyricText.self-alignment-X = #0
  − Ⅴ ⅰ − ⅳ − ᛕ Ⅴ − ⅰ − ⅳ − − Ⅴ Ⅴ₇ ⅰ % ⅰ ⅳ ᛕ Ⅴ₇ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "⑤" \key c \minor \time 3/4 \relative c'' \voiceS \bar "|."
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
        \key c \minor \relative c \voiceB
      }
    >>
    \new Lyrics \lyricsto "soprano" {
      \analysis
    }
  >>
  \layout { }
  \midi { }
}

% \score {
%   \new GrandStaff {
%     \key c \minor
%     \relative { <c' es g>1 <f as c> <g b! d f> s1 s1 s1 s1 }
%   }
%   \layout {
%     \omit Staff.TimeSignature
%     \override Score.BarLine.stencil = ##f
%   }
% }


% Задание № 6

\parallelMusic voiceS, voiceA, voiceT, voiceB {
  fis4 g8 fis4 cis8 | b'4. b4 fis8 | d4 e8 d4 ais8 | b4 e8 b4 fis'8 |
  d8-3 ais-3 b cis4 fis8 | fis4. fis4 ais8 | b8 cis d ais4 cis8 | b,8 fis' b, fis4. |
  fis4 e8 d4-3^"ш" g,8-3^"т" | b4 g8 g4 e8 | d4 b8 b4. | b4 e8 b4 e8 |
  fis8^"т" d'^"ш" b ais4. | d8 fis fis fis4. | b4 d8 cis4. | fis4. fis,4. | \break
  fis4 g8 fis4 ais8 | d4 e8 d4 fis8 | b4 b8 b4 cis8 | b4 g8 b4 fis8 |
  b8 cis d e4 g8 | fis4. g4 b8 | d8-3 ais-3 b b4 e8 | b8 fis b e4. |
  fis8 d e d4 cis8 | b8 fis g fis4 e8 | d8 b b b4 ais8 | b4 e,8 fis4. |
  b4 g8 fis4. | d4 b8 b4. | b4 e,8 d4. | b8 b,8^"?" e8 b'4. |
}

analysis = \lyricmode {
  \override LyricText.self-alignment-X = #1
  \markup { b: \hspace #2 ⅰ}
  \override LyricText.self-alignment-X = #0
  ⅳ ⅰ Ⅴ ⅰ Ⅴ ⅰ Ⅴ − ⅰ ⅳ ⅰ ⅳ ᛕ − − Ⅴ ⅰ ⅳ ⅰ Ⅴ ⅰ Ⅴ ⅰ ⅳ − ⅰ − ⅳ ᛕ Ⅴ₇ ⅰ ⅳ ⅰ % ⅰ ⅳ ᛕ Ⅴ₇ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "⑥" \key b \minor \time 6/8 \relative c'' \voiceS \bar "|."
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

% \score {
%   \new GrandStaff {
%     \key b \minor
%     \relative { <b' d fis>1 <e, g b> <fis ais cis e> s1 s1 s1 s1 }
%   }
%   \layout {
%     \omit Staff.TimeSignature
%     \override Score.BarLine.stencil = ##f
%   }
% }


% Задание № 7

\parallelMusic voiceS, voiceA, voiceT, voiceB {
  des4 as bes | f4 f ges | as4 des des | des2 ges,4 |
  f2 as4 | des2. | as2 f4 | des'2. |
  bes4^"ш" des,^"т" ges | des4 bes des | ges4 ges bes | ges,2. |
  f2 es4 | des2 c4 | as2. | des'2 as4 |
  des4^"т" as'^"ш" as | as4 des es | f4 f-3 c'-3 | des4 des as | \break
  f4^"т" des'^"ш" bes | des4 f des | as2 ges4 | des2 ges4 |
  as4 des es | des4 f as | f4 as c | as,2. |
  f2. | as2. | des2. | des2. |
  ges2^"ш" bes,4^"т" | bes2 ges4 | des2. | ges,2. |
  as4^"т" f'^"ш" es | f4 as ges | des2 c4 | as2. |
  des2 des4 | f2 ges4 | des2 bes4 | des2 ges,4 |
  des2. | f2. | as2. | des2. |
}

analysis = \lyricmode {
  \override LyricText.self-alignment-X = #1
  \markup { D♭: \hspace #2 Ⅰ}
  \override LyricText.self-alignment-X = #0
  − Ⅳ Ⅰ − Ⅳ − − Ⅰ Ⅴ Ⅰ − Ⅴ Ⅰ − Ⅳ ᛕ − Ⅴ Ⅰ Ⅳ − ᛕ − Ⅴ₇ Ⅰ Ⅳ Ⅰ % Ⅰ Ⅳ ᛕ Ⅴ₇ −
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne
        \sectionLabel "⑦" \key des \major \time 3/4 \relative c'' \voiceS \bar "|."
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

% \score {
%   \new GrandStaff {
%     \key des \major
%     \relative { <des' f as>1 <ges bes des> <as c es ges> s1 s1 s1 s1 }
%   }
%   \layout {
%     \omit Staff.TimeSignature
%     \override Score.BarLine.stencil = ##f
%   }
% }
