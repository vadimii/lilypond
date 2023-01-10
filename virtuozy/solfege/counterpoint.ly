\version "2.24.0"

\header {
  tagline = ##f
}

\layout {
  indent = 0\cm
  ragged-right = ##f
  \omit Staff.TimeSignature
  \override Score.BarLine.stencil = ##f
  \override Staff.NoteHead.style = #'altdefault
}

cantusFirmus = { c1-"c.f." d f e c g' f e d c\breve }

\score {
  \header {
    piece = "Ex. 1. C-dur"
  }
  \new Staff <<
    \relative c'' { c1\8 b-6 a-3 b\5( e-10) d\5( a-3)( c-6) b-6 c\breve\8 }
    \\
    \relative c' \cantusFirmus
  >>
  \layout { }
  \midi { }
}

\score {
  \new Staff << \clef "treble_8"
    \relative c' \cantusFirmus
    \\
    \relative c { c1_\8 b-10( d-10) c-10( a'-3) g_\8( d-10) e_\8( b-10) c\breve_\8 }
  >>
  \layout { }
  \midi { }
}

cantusFirmus = { a1-"c.f." b c a f' e d e c b a\breve }

\score {
  \header {
    piece = "Ex. 2. a-moll"
  }
  \new Staff <<
    \relative c'' { c1-10( g-6) a-6( e'\12) d-6 c-6 d\8( g,-3) a-6 g-6 a\breve\8 }
    \\
    \relative c' \cantusFirmus
  >>
  \layout { }
  \midi { }
}

\score {
  \new Staff << \clef "treble_8"
    \relative c' \cantusFirmus
    \\
    \relative c { a'1_\1 g-3( e-6) f-3( d-10) e_\8( b'-3) \slurDashed a_\5( a-3) g-3 a\breve_\1 }
  >>
  \layout { }
  \midi { }
}

cantusFirmus = { f1-"c.f." g c, a' f d bes' a g f\breve }

\score {
  \header {
    piece = "Ex. 3. F-dur"
  }
  \new Staff << \key f \major
    \relative c'' { f1\8( bes,-3) \slurDashed c\8( c-3) \slurSolid d-6( a'\12) g-6 a\8( e-6) f\breve\8 }
    \\
    \relative c' \cantusFirmus
  >>
  \layout { }
  \midi { }
}

\score {
  \new Staff << \clef "treble_8" \key f \major
    \relative c' \cantusFirmus
    \\
    \relative c { f1_\8( bes-6) a-3( f-10)( a-6) bes-3 c-6 d_\5 e-3 f\breve_\1 }
  >>
  \layout { }
  \midi { }
}

cantusFirmus = { d1-"c.f." a' e f d bes' g a f e d\breve }

\score {
  \header {
    piece = "Ex. 4. d-moll"
  }
  \new Staff << \key d \minor
    \relative c'' { d1\8 c-3( e\8) d-6( f-10)( d-3) e-6( c-3) d-6 c-6 d\breve\8 }
    \\
    \relative c' \cantusFirmus
  >>
  \layout { }
  \midi { }
}

\score {
  \new Staff << \clef "treble_8" \key d \minor
    \relative c' \cantusFirmus
    \\
    \relative c' { d1_\1 \slurDashed c-6( \slurSolid c-3)( a-6) bes-3( e,_\12)( g_\8) f_\12( d-10) c-10 d\breve_\8 }
  >>
  \layout { }
  \midi { }
}

cantusFirmus = { d1-"c.f." f e d g f a g f e d\breve }

\score {
  \header {
    piece = "Ex. 5. d-dorian"
  }
  \new Staff <<
    \relative c'' { d1\8 c\5( g-3) a\5 b-3( d-6) c-3 d\5( f\8)( c-6) d\breve\8 }
    \\
    \relative c' \cantusFirmus
  >>
  \layout { }
  \midi { }
}

\score {
  \new Staff << \clef "treble_8"
    \relative c' \cantusFirmus
    \\
    \relative c { d1_\8( a'-6) \slurDashed g-6( \slurSolid g_\5)( b-6) a-6( f-10) g_\8( b,_\12) c-10 d\breve_\8 }
  >>
  \layout { }
  \midi { }
}
