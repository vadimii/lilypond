\version "2.24.0"

\layout {
  indent = 0\cm
  ragged-right = ##f
}

global = {
  \key c \major
  \time 4/4
}

\parallelMusic voiceS,voiceB {
  e4 g8 e c'4 e~ | c1 |
  e4 c g e | g'4 c,2 b4 |
  c2 g'8 e g4~ | c2 e, |
  g4 e8 b c2 | g2 c |
}

\score {
  \new GrandStaff <<
    \new Staff {
      \global \relative c' \voiceS \bar "|."
    }
    \new Staff {
      \global \clef bass \relative c \voiceB \bar "|."
    }
  >>
  \layout { }
  \midi { }
}

\parallelMusic voiceS,voiceB {
  e4 g8 e d' c e4~ | c1 |
  e4 d8 c f, g e4 | g'4 c,2 b4 |
  c4 a' g8 e g4~ | c2 e, |
  g8 f e b c2 | g2 c |
}

\score {
  \new GrandStaff <<
    \new Staff {
      \global  \relative c' \voiceS \bar "|."
    }
    \new Staff {
      \global \clef bass \relative c \voiceB \bar "|."
    }
  >>
  \layout { }
  \midi { }
}

\parallelMusic voiceS,voiceA,voiceT,voiceB {
  s1 | e4 g8 e d' c e4~ | s1 | c1 |
  s1 | e4 d8 c f, g e4 | s1 | g'4 c,2 b4 |
  s1 | c4 a' g8 e g4~ | s1 | c2 e, |
  s1 | g8 f e b c2 | s1 | g2 c |
}

\score {
  \new GrandStaff <<
    \new Staff {
      \global
      <<
          \relative c' \voiceS
          \\
          \relative c' \voiceA
      >>
      \bar "|."
    }
    \new Staff {
      \global \clef bass
      <<
       \relative c \voiceT
       \\
       \relative c \voiceB
      >>
      \bar "|."
    }
  >>
  \layout { }
  \midi { }
}
