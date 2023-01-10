\version "2.24.0"

#(define sn 0)

#(define (score-number)
   (set! sn (1+ sn))
   (string-append (number->string sn)))  % "."

\header {
  title = "Этюды по сольфеджио"
  subtitle = "Одноголосные этюды"
  composer = "Б. Алексеев"
  tagline = ""
}

\layout {
  indent = 0\cm
  \context {
    \Staff
    \override InstrumentName.font-series = #'bold
  }
  \context {
    \Score
    \override BarNumber.break-visibility = ##(#f #f #f)
  }
}

\score {
  \new Staff \with { instrumentName = #(score-number) } \relative {
    \key bes \major
    \time 4/4
    bes'4. a8 bes f d a' |
    g4. fis8~ fis8 g4.~ |
    g8 b,4 c8~ c8 d es16 g d' c |
    bes4. gis8~ gis8 a4. |
    f'8 d bes as~ as f' d b |
    g8 es'4 d8~ d c \tuplet 3/2 { bes8 ges e~ } |
    e8 f4 g8~ g as a16 d c ces |
    bes1 \bar "|."
  }
  \layout { }
  \midi { }
}

\score {
  \new Staff \with { instrumentName = #(score-number) } \relative {
    \key d \major
    \time 4/4
    fis'4 g8 fis e b' a g |
    fis a d4~ d8 d cis b |
    ais cis4 fis,8 gis cis4 eis,8 |
    dis2. ais'4 |
    dis,8 e fis g a b c8. d16 |
    c4. ais8 b4 \tuplet 3/2 { g8 fis e } |
    cis8 dis e fis g a bes8. c16 |
    bes4. gis8 a4 d,16 e eis fis |
    \tuplet 3/2 { d'8 c bes~ } \tuplet 3/2 { bes as g }
    \tuplet 3/2 { e' d cis~ } \tuplet 3/2 { cis bes a } |
    fis'2~ fis16 e d cis e8 fis, |
    b8. bes16 a4~ a e |
    cis16 bis cis e g8 fis d2 \bar "|."
  }
  \layout { }
  \midi { }
}

\score {
  \new Staff \with { instrumentName = #(score-number) } \relative {
    \key bes \major
    \time 3/4
    \set Timing.beamExceptions = #'()
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    \set Timing.beatStructure = 1,1,1
    f'2 bes4 |
    a d,2 |
    g4 es8 f g4 |
    f2 bes,4 |
    es8 d c b c g' |
    fis4. d8 fis c' |
    bes4 g e |
    f2. |
    f2 bes4 |
    a4. cis,8 f e |
    d e f g a d |
    c4. f,8 ges f |
    es f ges bes c cis | \break
    d4 f g,8 gis |
    a4 es' d8 cis |
    d4. bes8 e, f |
    ges4. es8 b c |
    f4 bes,2 \bar "|."
  }
  \layout { }
  \midi { }
}

\score {
  \new Staff \with { instrumentName = #(score-number) } \relative {
    \key a \major
    \time 3/4
    \set Timing.beamExceptions = #'()
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    \set Timing.beatStructure = 1,1,1
    e'8 cis16 d e8 fis e a, |
    cis8. ais16 b4 r8 e~ |
    e cis16 d e8 a gis fis |
    fis8. dis16 eis4 r8 eis |
    fis8 d16 e fis8 g fis b, |
    d8. bis16 cis4 r8 fis~ |
    fis d16 e fis8 cis' b fis |
    bes8 g16 as bes8 es d cis |
    e4. ais,8 b cis |
    e d4 cis8 b16 a gis fis |
    b4. cis,8 fis gis |
    b a4 gis 8 g16 a g f | \break
    e8 cis16 d e8 a gis g~ |
    g d16 e f8 bes a f |
    e16 dis e8~ e cis' \tuplet 3/2 { b a fis } |
    gis16 fisis gis8~ gis e' \tuplet 3/2 { dis d b } |
    a2. \bar "|."
  }
  \layout { }
  \midi { }
}
