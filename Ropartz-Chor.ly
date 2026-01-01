\version "2.24.4"
\language "deutsch"
#(set-global-staff-size 17)

\header {
  title = "Psamue CXXXVI"
  composer = "J. Guy Ropartz"
  subtitle = "à Gabriel FAURÉ"
  piece = "pour chœur, orgue et orchestre"
}

\paper{
  top-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
  ragged-last-bottom=##f
}

diminuendo = \markup {\italic{dim.}}
crescendo = \markup {\italic{cresc.}}
piuF = \markup { \italic più \dynamic f }
menoF = \markup { \italic meno \dynamic f }
sempreFF = \markup { \italic sempre \dynamic ff }
menoF = \markup { \italic meno \dynamic f }

tmpVoiceOne = #(define-music-function (m) (ly:music?)
                 #{
                   \override Rest.staff-position = 0
                   \override MultiMeasureRest.staff-position = 0
                   \voiceOne $m \oneVoice
                   \revert Rest.staff-position
                   \revert MultiMeasureRest.staff-position
                 #}
                 )

Global = {
  %\override Score.BarNumber.break-visibility = ##(#t #t #t)
  % \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \key b \minor
  \numericTimeSignature\time 4/4
  \accidentalStyle modern
  \tempo "Poco lento"
  s1*8
  \mark \default
  s1*8
  \mark \default
  s1*8
  \mark \default
  s1*15
  \bar "||"
  \tempo "Tempo primo"
  \mark \default
  s1*10
  \mark \default
  s1*14
  \mark \default
  s1*8
  \mark \default
  s1*9
  \bar "||"
  \key g \minor
  \mark \default
  \tempo "Tempo primo"
  s1*12
  \mark \default
  s1*7
  \bar "||"
  \key f \minor
  \mark \default
  s1*8
  \mark \default
  s1*16
  \bar "||"
  \mark \default

  \tempo \markup {
    \concat {
      "Allegro moderato"
      (
      \smaller \general-align #Y #DOWN \note { 2 } #UP
      " = "
      \smaller \general-align #Y #DOWN \note { 4 } #UP
      )
    }
  }
  % scritto da Ginevra
  s1*26
  \mark \default
  s1*15
  \mark \default
  s1*16
  \tempo "allargando"
  s1
  \bar "||"
  \numericTimeSignature\time 4/4
  \tempo "Più animato"
  \mark \default
  \key fis \minor
  s1*11
  \bar "||"
  \time 2/4
  \tempo "allargando"
  s2
  \bar "||"
  \time 3/4
  s2.
  \bar "||"
  \time 2/4
  s2
  \bar "||"
  \time 3/4
  s2.
  \mark \default
  \numericTimeSignature\time 4/4
  \tempo "Più largamente"
  \bar "||"
  s1*11
  \bar "||"
  \mark \default
  \key b \minor
  \time 6/4
  \tempo "Largamente molto"
    \grace { s8 }
  s1.*7
  \mark \default
  \bar "||"
  \numericTimeSignature\time 4/4
  s1*17
  \bar "||"
  \tempo "Tempo primo"
  \mark \default
  s1*16
  \bar "||"
  \numericTimeSignature\time 4/4
  \mark \default
  \tempo "Tempo primo"
  s1*7
  \time 2/4
  \bar "||"
  s2
  \numericTimeSignature\time 4/4
  \bar "||"
  s1*11
  \bar "|."
}

Soprano = \relative {
  \autoBeamOff
  \compressEmptyMeasures
  R1*39 |
  R1*8 |
  r4 des''8\mf des8\< es4 e4\! |
  f4 des4 as4. b8 |
  c2\p c4. c8 |
  c4 ~ c8 r8 c8 c8 b8 as8 |
  f'4 as,8-\crescendo b8 c4 c8 c8 |
  es4. as,8 as4 ges8 f8 |
  des'2 des4\< des4 |
  fes4\!\mf des8. ces16 heses4\> as8 ges8\! |
  f4 f8 r8 r2 |
  R1*7 |
  c'8\p c8 es8 des8 c4 c8 b8 |
  b4. ( as16[ ges16] ) ges4 ges8 ges8 |
  fes8\< as4 des8\! des4. ges,8 |
  ges4.\> as8 ges4. ( f8\! ) |
  r4 des4-\crescendo eses4 heses'8. as16 |
  ges4 ges8 b8 b2 ~ |
  b8 b8[\mf ( as8] ) ges8 des'4 b4 ~ |
  b8 b4 c8 c4 ~ c8 r8 |
  r2 r4 ces4\f |
  ces8 ( b4 ) b8 ges'4 b,8\> c8\! |
  cis2 ~ cis8 a4\< a8\! |
  f'4. ( d8 ) a4.\> h8\! |
  c4 c8\< c8\! cis4 e8\> cis8\! |
  h4. ( ais8 ) gis4 gis4\p |
  fis8\< fis8 fis4\! ~ fis8 fis8\> g8. g16\! |
  fis2 ~ fis4 r4 |
  R1 |
  \bar "||"
  \key g \minor
  g4\ff g8. a16 b4 ~ b8 r8 |
  g4 g8. a16 a4 ~ a8 r8 |
  r8 g4 a16[ ( b16] ) b4. a16 g16 |
  d'2 cis4 cis8. cis16 |
  d4 b8 g8 ges4. ges'8 |
  ges4 ( ~ ges8.[ f16] ) es4 ~ es8 r8 |
  r8 g,4 a16 b16 b4 ( a8 ) r8 |
  a8 a4 g8 g4 ~ g8 r8 |
  r8 a8 a8 a8 d8 d8 d8. d16 |
  c4. ( b8 a4 ) ~ a8 r8 |
  b4 f8. b16 b4 \once \omit TupletBracket
  \times 2/3 {
    b8 b8 b8
  } |
  as2 r8 as4\> as8\! |
  des8.-\menoF es16 des4 b4 ges'4 |
  f4 b,2 d4 |
  f8 ( es4 ) b8 b4 f4 |
  as8[\< ( ges8] )    b8[ ( des8]\! ) des4 ~ des8 r16 des16\f |
  des4 c8 b8 as'4 g8. f16 |
  f4 ( e4 ~ e8 ) e8 f8-\diminuendo des8 |
  c2 ~\> c8\!\< c8\! es8.\> c16\! |
  \key f \minor
  c4 ~ c8 r8 r2 |
  R1*23 |
  \bar "||"
  \key d \minor
  \time 2/2
  R1*7 |
  r2 r4 a4\f |
  d2 r4 a'4 |
  h,2 r4 f'4 |
  e4 d4 c2 ~ |
  c4 c4 b8 a8 g4 ~ |
  g8 a8 b8 g8 cis2 |
  r4 cis4 d4. e8 |
  f4 f8 g8 f4 ( e4 ) |
  d2 ~ d4 r4 |
  r4 f,4\mf b4 g4 |
  e'2 r4 e4 |
  a,4 a4 a'4 r4 |
  r4 b,4 f'4 r4 |
  r4 f,4 d'4 r4 |
  r4 f4 e4 a,4 |
  fis'4 fis4 g4 r4 |
  r4 g4 b,4 b4 |
  a2 r4 d4 |
  d2.\> cis4\! |
  d4 a4\p h4\< c4 |
  d4. d8 e4. f8\! |
  g2 r4 g,4 |
  g4 f8[ ( e8] ) f8 f8 es'4 |
  es4 d2 c4 |
  c4 ( b2 ) a4 |
  a4-\diminuendo ( g2 ) f8 g8 |
  f4 e2 r4 |
  r4 \tmpVoiceOne {
    c'4\mf\< des4\!\> ( c4\! ) |
    r4 f4\< g4\!\> ( f4\! ) |
    r2 r4 g4 |
    c,2 ~ c8 d8 e8 f8 |
    g4 e4 e4 ( d4 ) ~ |
    d8
  } r8 r4 r2 |
  R1 |
  r4 g,4\f d'2 |
  r4 g4 a,2 |
  r4 es'4 d4 c4 |
  b2 ~ b4 b4 |
  b8 a8 g4 ~ g8 a8 b8 g8 |
  cis2 ~ cis4 des4\cresc |
  des8 c8 b4 ~ b8 c8 des8 b8 |
  e2 ~ e4 e4 |
  e8 dis8 cis4 ~ cis8 dis8 e8 cis8 |
  g'2. g4 |
  gis2.\ff gis4 |
  a2 gis4 fis4 |
  fis2 eis2 |
  r4 r8 eis8 eis4 r8 eis8 |
  eis2 r4 h8 cis8 |
  h2 h4. eis8 |
  eis2 ~ eis4 r4 |
  \bar "||"
  \key fis \minor
  \numericTimeSignature\time 4/4
  r4-\sempreFF r8 cis8 d8 r8 r8 d8 |
  cis8 r8 r8 cis8 d8 r8 r8 d8 |
  cis8 r8 r4 r2 |
  r4 r8 dis8 e8 r8 r8 e8 |
  dis8 r8 r8 dis8 e8 r8 r8 e8 |
  dis8 r8 r4 r2 |
  r4 r8 eis8 fis8 r8 r8 fis8 |
  eis4 eis8. eis16 fis8 fis4 fis8 |
  f4 r8 g,8 des'8 r8 r8 g,8 | % 10
  des'8 r8 r8 g,8 des'8 r8 r8 g,8 |
  g'2 ~ g4 r4 |
  \time 2/4 R2 |
  \time 3/4 r8 c,8 c8 c8 c8 c8 |
  \time 2/4 es2 ~ |
  \time 3/4 es4 c2 |
  \numericTimeSignature\time 4/4 a'1 ~ |
  a2 ~ a4 r4 |
  R1*9 |
  \bar "||"
  \key b \minor
  \time 6/4
  \grace { s8 }
  r8 r16 b,16\ff b4 ~ b8 b8 des2 ~ des8 r8 |
  r8 b8 ~ b8 b8 \once \omit TupletBracket
  \times 2/3 {
    b8 b8 b8
  } e2 ~ e8 r8 |
  r8 r16 b16 b4 ~ b8 b8 ges'2 ~ ges8 r8 |
  r4 des2 c2 ~ c8 r8 |
  f4 des4 ~ des8 des8 as2 \once \omit TupletBracket
  \times 2/3 {
    des8 des8 des8
  } |
  es2\> d8\!-\diminuendo d8 d4 h8 h8 h8 h8 |
  cis4 ~ cis8 r8 r8 c8-\menoF c4 a8 a8 c8 c16 a16 |
  \numericTimeSignature\time 4/4 g4 \once \omit TupletBracket
  \times 2/3 {
    g8-\crescendo g8 g8
  } c8 c8 es8. c16 |
  b8 b8 \once \omit TupletBracket
  \times 2/3 {
    b8 b8 b8
  } es8 es8 b8 es8 | % 10
  f2. ~\ff f8 r8 |
  R1 |
  r2 r4 \tmpVoiceOne {
    f4\fff |
    ges2. ges4 |
    f2 r4 f4 |
    ges2. ~ ges8 r8 |
    f1 |
    <f b>1 ~ ~ |
    <f b>2 ~ ~ <f b>4 r4
  } |
  R1*6 |
  \bar "||"
  R1*9 | % 10
  r4 des8 des8 es4 e4 |
  f1 ~ |
  f2. ~ f8 r8 |
  R1*4 |
  \bar "||"
  \numericTimeSignature\time 4/4
  R1*7
  \bar "||"
  \time 2/4
  R2
  \bar "||"
  \numericTimeSignature\time 4/4
  R1 |
  R1 |
  r4\p ges4 \< ges4 \! \> ( f8 \! ) r8 |
  R1 |
  r4\p ges4 \< ges4 \! \> ( f8 \! ) r8 |
  R1*6
  \bar "|."
}

Alto = \relative {
  \autoBeamOff
  \compressEmptyMeasures
  R1*39 |
  R1 |
  r2 r4 des''4\p |
  des4 c8 b8 b4 ges8 f8 |
  es2 es4 es8 es8 |
  es4 es4 ~ es8 es8 f8 ges8 |
  as4 d,4 r8 d4-\crescendo b'8 |
  b4 b8.[ ( ces16] ) b4 ~ b8 r8 |
  a4\mf b8\< b8 h4 c8 c8\! |
  es4\> ( des2\! ) ~ des8 r8 |
  R1 |
  r8 f,4\p f8\< as8.\! as16\> f4\! |
  r8 f4\< f8 as8.\! as16\> f4\! |
  as8.-\crescendo g16 f4 f4 c4 |
  ces4. ces8 ces8[ ( des8] ) es8 f8 |
  ges8.[ ( as16] ) b4 ~ b8 r8\< ges4\! |
  fes4\mf heses8 fes8 des4\> des8. des16\! |
  b4 b8 r8 r2 |
  R1*7 |
  c'8\p c8 es8 des8 c4 c8 b8 |
  b4. ( as16[ ges16] ) ges4 ges8 ges8 |
  fes8\< as4 des8\! des4. ges,8 |
  ges4.\> as8 ges4. ( f8\! ) |
  r4 des4-\crescendo eses4 heses'8. as16 |
  ges4 ges8 b8 b2 ~ |
  b8 b8[\mf ( as8] ) ges8 des'4 b4 ~ |
  b8 b4 c8 c4 ~ c8 r8 |
  R1 |
  r4 ges8.[\f ( as16] ) b4 b4 |
  a4 a8. a16 a4 ~ a8 r8 |
  r4 a8 a8 a4 f8\> d8\! |
  c8 as'4\< as8\! gis8 gis4\> gis8\! |
  gis4 ( h,4 ) dis4 cis8[\p ( h8] ) |
  cis8\< cis8 cis4\! ~ cis8 cis8\> his8 his8\! |
  cis2 ~ cis4 r4 R1 |
  \bar "||"
  \key g \minor
  g'4\ff g8. a16 b4 ~ b8 r8 |
  g4 g8. a16 a4 ~ a8 r8 |
  r8 g4 a16[ ( b16] ) b4. a16 g16 |
  d'2 cis4 cis8. cis16 |
  d4 b8 g8 ges4. ges'8 |
  ges4 ( ~ ges8.[ f16] ) es4 ~ es8 r8 |
  r8 g,4 a16 b16 b4 ( a8 ) r8 |
  a8 a4 g8 g4 ~ g8 r8 |
  r8 a8 a8 a8 d8 d8 d8. d16 |
  c4. ( b8 a4 ) ~ a8 r8 |
  b4 f8. b16 b4 \once \omit TupletBracket
  \times 2/3 {
    b8 b8 b8
  } |
  as2 r2 |
  R1 |
  r2 r8 f4-\menoF f8 |
  b8. c16 b4 ges4 des'4 |
  des4 ges,2 ges8.[\< ( f16]\! ) |
  f4\f f8 b8 des8 des4 des8 |
  b4 b4- \diminuendo b4 as4 |
  g4 ( ges8\> ) ges8 f4\! b4 |
  \key f \minor
  as4 ~ as8 r8 r2 |
  R1*23
  \bar "||"
  \key d \minor
  \time 2/2
  r4 d,4\f a'2 |
  r4 d4 e,2 |
  r4 b'4 a4 g4 |
  f2 ~ f4 f4 |
  f8 e8 d4 ~ d8 e8 f8 d8 |
  gis2 r4 gis4 |
  a4. h8 c4 c8 d8 |
  c4 ( h4 ) a2 ~ |
  a8 r8 r4 r2 |
  R1*6 |
  r4 d,4\f a'2 |
  r4 d4 e,2 |
  r4 b'4 a4 g4 |
  f2 ~ f4 f4 |
  f8 e8 d4 ~ d8 e8 f8 d8 |
  gis2 r4 gis4 |
  a4. h8 c4 c8 d8 |
  es4\> ( a,4\! ) g4 r4 |
  r4 g4\mf g4 g4 |
  g4 f8[ ( e8] ) d4 b'4 |
  b4\> ( a2 ) g4\! |
  fis4 r4 r4 a4\p |
  a4 g8[ ( f8] ) g8 g8 f4 |
  e2. ( g4 ) |
  c,2 r4 f4 |
  fis2 r4 fis4 |
  g4 r4 r2 |
  R1 |
  r2 r4 c,4\f |
  f2 r4 c'4 |
  d,2 r4 a'4 |
  g4\> f4 e2\! ~ |
  e4 e4 g8 a8 b4 ~ |
  b4 b4 a4 a4 |
  a2 ( g4 ) fis4 |
  g4 es'4 c4 c8 c8 |
  b4 b8 r8 r2 |
  r4 g4\mf g4 g4 |
  fis2 r4 a4 |
  g2 r4 fis4 |
  g4. g8 g4 g4 |
  b4. b8 b4 a4\cresc |
  b4. b8 b4 b4 |
  des4. des8 des4 c4 |
  cis4. cis8 cis4 cis4 |
  e4. e8 e4 g,4 |
  gis2.\ff gis4 |
  a2 gis4 fis4 |
  fis2 eis2 |
  r4 r8 \tmpVoiceOne {
    h'8 h4 r8 h8 |
    h2 r4 eis,8 eis8 |
    eis2 eis4. h'8 |
    h2 ~ h4
  } r4
  \bar "||"
  \key fis \minor
  \numericTimeSignature\time 4/4
  r4-\sempreFF r8 \tmpVoiceOne {
    a8 b8 r8 r8 b8 |
    a8 r8 r8 a8 b8 r8 r8 ais8 |
    a8 r8 r4 r2 |
    r4 r8 h8 c8 r8 r8 c8 |
    h8 r8 r8 h8 c8 r8 r8 c8 |
    h8 r8 r4 r2 |
    r4 r8 cis8 d8 r8 r8 d8 |
    cis4 cis8. cis16 d8 d4 d8 |
    des4 r8 g,8 des'8 r8 r8 g,8 |
    des'8 r8 r8 g,8 des'8 r8 r8 g,8 |
    c2 ~ c4 r4 |
    \time 2/4 R2 |
    \time 3/4 r8 g8 g8 g8 g8 g8 |
    \time 2/4 c2 ~ |
    \time 3/4 c4 c2 |
    \numericTimeSignature\time 4/4 cis1 ~ |
    cis2 ~ cis4 r4
  } |
  R1*9 |
  \bar "||"
  \key b \minor
  \time 6/4
  \grace { s8 }
  r8 r16 b16\ff b4 ~ b8 b8 a2 ~ a8 r8 |
  r8 b8 ~ b8 b8 \once \omit TupletBracket \times 2/3 { b8 b8 b8 } a2 ~ a8 r8 |
  r8 r16 b16 b4 ~ b8 b8 a2 ~ a8 r8 |
  r4 b2 a2 ~ a8 r8 |
  as4 as4 ~ as8 as8 as2 \once \omit TupletBracket \times 2/3 { as8 as8 as8 } |
  g2\> fis8\!-\diminuendo fis8 fis4 fis8 fis8 fis8 fis8 |
  eis4 ~ eis8 r8 r8 e8-\menoF e4 e8 e8 e8 e16 e16 |
  \numericTimeSignature\time 4/4 es4 \once \omit TupletBracket \times 2/3 { es8-\crescendo es8 es8 } g8 g8 g8. g16 |
  ges8 ges8 \once \omit TupletBracket \times 2/3 { ges8 ges8 ges8 } ges8 ges8 ges8 b8 |
  c2. ~\ff c8 r8 |
  R1 |
  r2 r4 \tmpVoiceOne {
    c4\fff |
    h2. h4 |
    c2 r4 c4 |
    a2. ~ a8 r8 |
    a1 |
    b1 ~ |
    b2 ~ b4 r4
  } |
  R1*6 |
  \bar "||"
  R1*2 |
  r2 r4 des4 |
  des4 c8 b8 b4 ges8 f8 |
  es2 es4 es8 es8 |
  es4 es4 ~ es8 es8 f8 ges8 |
  as4 d,4 r8 d4 b'8 |
  b4 b8.[ ( ces16] ) b4 ~ b8 r8 |
  a4 b8 b8 h4 c8 c8 |
  es4 des2 des8 des8 |
  as2 a4. ( b8 |
  b2. ~ b8 ) r8 |
  R1*4 |
  \bar "||"
  \numericTimeSignature\time 4/4
  R1*7
  \bar "||"
  \time 2/4
  R2
  \bar "||"
  \numericTimeSignature\time 4/4
  R1 |
  r4\p ges4 \< ges4 \! \> ( f8 \! ) r8 |
  R1 |
  r4\p ges4 \< ges4 \! \> ( f8 \! ) r8 |
  R1 |
  R1*6
  \bar "|."

}

Tenor = \relative {
  \autoBeamOff
  \compressEmptyMeasures
  R1*39 |
  r2 r4 f'4\p |
  f4 es8 des8 des4 c8 b8 |
  ges2 ges4 ges8 ges8 |
  ges4 ges4 ~ ges8 ges8 as8 b8 |
  c2 c4 r4 |
  ces4.-\crescendo b8 as4 f'4 |
  f4 ( ges,4 ) r8 b8\mf c8\< des8 |
  es2.\! a,8\> a8\! |
  b2 ~ b4 r4 |
  R1 |
  r8 as4\p as8\< c8.\! c16\> c4\! |
  r8 as4\< c8 f8.\! f16\> c4\! |
  r4 c4-\crescendo as4 f'4 |
  f4 ( as8. ) f16 es4 as,4 |
  des4 des8. des16 ges4 des8\< des8\! |
  des8\mf des4 des8 des8\> ces4 heses8\! |
  des4 des8 r8 r2 |
  R1*14 |
  r2 r4 ges4\f |
  ges8 ( f4 ) f8 f4\> es8. d16\! |
  d8.[ ( es16] es4 ) es4\< ges4\! |
  fis4 ( cis4 ) a8.[ ( h16] ) des4 |
  d4 d8. e16 f2 |
  f4 f4 e4 ~ e8 r8 |
  r4 dis4\> h4 gis4\! |
  ais2\< ais4\! gisis8\> gisis8\! |
  ais2 ~ ais4 r4 R1 |
  \bar "||"
  \key g \minor
  g4\ff g8. a16 b4 ~ b8 r8 |
  g4 g8. a16 a4 ~ a8 r8 |
  r8 g4 a16[ ( b16] ) b4. a16 g16 |
  d'2 cis4 cis8. cis16 |
  d4 b8 g8 ges4. ges'8 |
  ges4 ( ~ ges8.[ f16] ) es4 ~ es8 r8 |
  r8 g,4 a16 b16 b4 ( a8 ) r8 |
  a8 a4 g8 g4 ~ g8 r8 |
  r8 a8 a8 a8 d8 d8 d8. d16 |
  c4. ( b8 a4 ) ~ a8 r8 |
  b4 f8. b16 b4 \once \omit TupletBracket \times 2/3 { b8 b8 b8 } |
  as2 r4\> f'4\! |
  f8-\menoF ( ges4 ) des8 des4 ces8. b16 |
  b4. c8 d4 f8 as8 |
  g4 ( es4 ) d8 r8 r4 |
  r4 b4 b2 ( ~ |
  b8[\< c8] ) des8 es8\! f4 g8 as8 |
  g4. g8-\diminuendo g4. f8 |
  e4 es4\> d4 es8[ ( e8]\! ) |
  \key f \minor
  f4 ~ f8 r8 r2 |
  R1*23 |
  \bar "||"
  \key d \minor
  \time 2/2
  R1*7 r2 r4 a,4\f |
  d2 r4 a'4 |
  h,2 r4 f'4 |
  e4 d4 c2 ~ |
  c4 c4 b8 a8 g4 ~ |
  g8 a8 b8 g8 cis2 |
  r4 cis4 d4. e8 |
  f4 f8 g8 f4 ( e4 ) |
  d2 ~ d4 r4 |
  R1*2 |
  r2 r4 a4\f |
  d2 r4 a'4 |
  h,2 r4 f'4 |
  e4 d4 c2 ~ |
  c4 c4 b8 a8 g4 ~ |
  g8 a8 b8 g8 cis2 |
  r4 cis4 d4. e8 |
  f4 f8 g8 f4\> ( e4\! ) |
  d4 r4 d2\p |
  d4 r4 r4 d4 |
  d4 c8[ ( h8] ) c4 b4 |
  a2 ~ a4 r4 |
  R1 |
  r4 g4\f d'2 |
  r4 f4 b,2 |
  r4 d4\> c4 b4\! |
  a4 f'4\mf f2 |
  r4 d4 d2 |
  r4 d4 g,2 |
  r4 b4 b2 |
  r2 r4 \tmpVoiceOne {
    a4 |
    f'4 es4 d4 c4 |
    b4 g'4 fis4. g8 |
    g4 ~ g8
  } r8 r4 g,4\f |
  d'2 r4 g4 |
  a,2 r4 es'4 |
  d4 c4 b2 ~ |
  b4 b4 b8 a8 g4 ~ |
  g8 a8 b8 g8 cis2 ~ |
  cis4 des4\cresc des8 c8 b4 ~ |
  b8 c8 des8 b8 e2 ~ |
  e4 e4 e8 dis8 cis4 ~ |
  cis8 dis8 e8 cis8 g'4 g4 |
  gis2.\ff gis4 |
  a2 gis4 fis4 |
  fis2 eis2 |
  r4 r8 eis8 eis4 r8 eis8 |
  eis2 r4 h8 cis8 |
  h2 h4. eis8 |
  eis2 ~ eis4 r4 |
  \bar "||"
  \key fis \minor
  \numericTimeSignature\time 4/4
  r4-\sempreFF r8 cis8 d8 r8 r8 d8 |
  cis8 r8 r8 cis8 d8 r8 r8 d8 |
  cis8 r8 r4 r2 |
  r4 r8 dis8 e8 r8 r8 e8 |
  dis8 r8 r8 dis8 e8 r8 r8 e8 |
  dis8 r8 r4 r2 |
  r4 r8 eis8 fis8 r8 r8 fis8 |
  eis4 eis8. eis16 fis8 fis4 fis8 |
  f4 r8 g,8 des'8 r8 r8 g,8 |
  des'8 r8 r8 g,8 des'8 r8 r8 g,8 |
  g'2 ~ g4 r4 |
  \time 2/4 R2 |
  \time 3/4 r8 es8 es8 es8 es8 es8 |
  \time 2/4 g2 ~ |
  \time 3/4 g4 g2 |
  \numericTimeSignature\time 4/4 e1 ~ |
  e2 ~ e4 r4 |
  R1*9 |
  \bar "||"
  \key b \minor
  \time 6/4
    \grace { s8 }
  r8 r16 b16\ff b4 ~ b8 b8 des2 ~ des8 r8 |
  r8 b8 ~ b8 b8 \once \omit TupletBracket \times 2/3 { b8 b8 b8 } e2 ~ e8 r8 |
  r8 r16 b16 b4 ~ b8 b8 ges'2 ~ ges8 r8 |
  r4 f2 e2 ~ e8 r8 |
  f4 f4 fes4 fes2 \once \omit TupletBracket \times 2/3 { fes8 fes8 fes8 } |
  des2\> d8\!-\diminuendo d8 d4 d8 d8 d8 d8 |
  h4 ~ h8 r8 r8 c8-\menoF c4 c8 c8 c8 c16 c16 |
  \numericTimeSignature\time 4/4 c4 \once \omit TupletBracket \times 2/3 { es8-\crescendo es8 es8 } es8 es8 es8. es16 |
  es8 es8 \once \omit TupletBracket \times 2/3 { es8 es8 es8 } es8 es8 es8 ges8 |
  es2. ~\ff es8 r8 |
  R1 |
  r2 r4 \tmpVoiceOne {
    f4\fff |
    ges2. ges4 |
    f2 r4 f4 |
    ges2. ~ ges8 r8 |
    f1 |
    f1 ~ |
    f2 ~ f4 r4
  } |
  R1*6 |
  \bar "||"
  R1 |
  r2 r4 f4 |
  f4 es8 des8 des4 c8 b8 |
  ges2 ges4 ges8 ges8 |
  ges4 ges4 ~ ges8 ges8 as8 b8 |
  c2 c4 r4 |
  ces4. b8 as4 f'4 |
  f4 ( ges,4 ) r8 b8 c8 des8 |
  es2. a,8 a8 |
  b2 ~ b8 b8 des8 des8 |
  des4 ( f4 ) es4 es4 |
  des2. ~ des8 r8 |
  R1*4 |
  \bar "||"
  \numericTimeSignature\time 4/4
  R1*7
  \bar "||"
  \time 2/4
  R2
  \bar "||"
  \numericTimeSignature\time 4/4
  R1 |
  R1 |
  r4\p ges4 \< ges4 \! \> ( f8 \! ) r8 |
  R1 |
  r4\p ges4 \< ges4 \! \> ( f8 \! ) r8 |
  R1*6
  \bar "|."

}

Bass = \relative {
  \autoBeamOff
  \compressEmptyMeasures
  R1*39 |
  R1*2 |
  r2 r4 b4\p |
  b4 ges8 f8 es4 f8 ges8 |
  as2 ges4 f8 es8 |
  d4 f4 ~ f8 ces8 b8 as8 |
  ges8.[ ( b16] ) es4 ~ es8 r8 r4 |
  c'4\mf b4 a4 f4 |
  ges2 ~ ges8 ges8-\diminuendo ges8 ges8 |
  des4. ( es8 ) f8 f8 f4 ~ |
  f8 r8 f4 ~\p f8\< f8\! as8.\> f16\! |
  es4 es4 ~\< es8 es8\! as8.\> es16\! |
  eses4 eses8\< eses8 eses4\! as8\> eses8\! |
  des4 ~ des8 r8 r4 ces'4 |
  b4 ( ges4 ) des4 b4 |
  heses4 heses8\< des8\! ges4 ges,8\> ges8\! |
  b4 b8 r8 r2 |
  R1*17 |
  r4 a'8.[\f ( gis16] ) fis4. fis8 |
  f4 f8.\> e16 d4\! ( a'4 |
  as4 ) as8 f8 des4 cis4 |
  gis4.\< ( ais8\! ) h4 dis4\p |
  e8\< e8\! e4 ~ e8 e8\> dis8 dis8\! |
  e2 ~ e8 r4 r8 R1 |
  \bar "||"
  \key g \minor
  g4\ff g8. a16 b4 ~ b8 r8 |
  g4 g8. a16 a4 ~ a8 r8 |
  r8 g4 a16[ ( b16] ) b4. a16 g16 |
  d'2 cis4 cis8. cis16 |
  d4 b8 g8 ges4. ges8 |
  ges4 ( ~ ges8.[ f16] ) es4 ~ es8 r8 |
  r8 g4 a16 b16 b4 ( a8 ) r8 |
  a8 a4 g8 g4 ~ g8 r8 |
  r8 a8 a8 a8 d8 d8 d8. d16 |
  c4. ( b8 a4 ) ~ a8 r8 |
  b4 f8. b16 b4 \once \omit TupletBracket \times 2/3 { b8 b8 b8 } |
  as2 r2 |
  b4-\menoF b8. as16 ges4 ~ ges8 des8 |
  d8. f16 as4 ~ as8 r8 c8. b16 |
  b8. as16 g4 ges4 des8. ( ces16 ) |
  b2 ~ b8 r8 es4\f |
  ges4 ( g4 ) b4 h4 |
  des4 des8. des16 c4 h4 |
  b8 b8 a4\> as8 as8 g4\! |
  \key f \minor
  f4 ~ f8 r8 r2 |
  R1*23
  \bar "||"
  \key d \minor
  \time 2/2
  r4 d4\f a'2 |
  r4 d4 e,2 |
  r4 b'4 a4 g4 |
  f2 ~ f4 f4 |
  f8 e8 d4 ~ d8 e8 f8 d8 |
  gis2 r4 gis4 |
  a4. h8 c4 c8 d8 |
  c4 ( h4 ) a2 ~ |
  a8 r8 g4 f2 |
  r4 e4 d2 |
  r4 gis4 a4 g4 |
  fis4 d4 g4 r4 |
  f4 g8 f8 es4 g4 |
  g,4 g'4 f4 d4 |
  b'8 b8 d,2 cis4 |
  d2 r4 d8[\mf ( e8] ) |
  f4 b8[ ( a8] ) g8[ ( f8] ) e8 d8 |
  cis1 |
  d2 r2 |
  R1*3 |
  r4 d4\mf es4 ~ es8 b8 |
  es2 r4 e4 |
  f2. g4 |
  a2.\> a,4\! |
  c2 ~ c4 r4 |
  R1*2 |
  r2 r4 c'4\p |
  c4 b8[ ( a8] ) b4 a4 |
  g2 ~ g4 r4 |
  R1 |
  r2 r4 c,4\f |
  f2 r4 c'4 |
  d,2 r4 a'4 |
  g4 f4 e2 ~ |
  e4 e4 e8 d8 cis4 ~ |
  cis8 d8 e8 cis8 f2 ~ |
  f4 fis4 g4. a8 |
  b4 b8 c8 b4 ( a4 ) |
  g4 ~ g8 r8 r2 |
  r4 \tmpVoiceOne {
    b4 c4 c4 |
    d2
  } r4 fis,4 |
  g2 r4 d4 |
  es4 b'4 g4 f8[ ( e8] ) |
  dis4 r4 es4 ( f4 ) |
  ges4 des'4 b4 as8[ ( g8] ) |
  fis4 r8 fis8 g4 gis4 |
  a4 e'4 cis4 h8[ ( ais8] ) |
  a2. a4 |
  gis2.\ff gis4 |
  a2 gis4 fis4 |
  fis2 eis2 |
  r4 r8 g8 g4 r8 g8 |
  g2 r4 g8 g8 |
  g2 g4. g8 |
  g2 ~ g4 r4 |
  \bar "||"
  \key fis \minor
  \numericTimeSignature\time 4/4
  \tmpVoiceOne {
    r4-\sempreFF r8 fis8 e8 r8 r8 e8 |
    fis8 r8 r8 fis8 e8 r8 r8 e8 |
    fis8 r8 r4 r2 |
    r4 r8 gis8 fis8 r8 r8 fis8 |
    gis8 r8 r8 gis8 fis8 r8 r8 fis8 |
    gis8 r8 r4 r4 r8 his8 |
    cis4 ( c4 ) h4 his4 |
    cis4 ( c4 ) h4 c4 |
    des4 r8 g,8 des'8 r8 r8 g,8 |
    des'8 r8 r8 g,8 des'8 r8 r8 g,8 |
    es'2 ~ es4 r4 |
    \time 2/4 R2 |
    \time 3/4 r8 c8 c8 c8 c8 c8 |
    \time 2/4 es2 ~ |
    \time 3/4 es4 es2 |
    \numericTimeSignature\time 4/4 e1 ~ |
    e2 ~ e4 r4
  } |
  R1*9 |
  \bar "||"
  \key b \minor
  \time 6/4
    \grace { s8 }
  r8 r16 b16\ff b4 ~ b8 b8 ges2 ~ ges8 r8 |
  r8 b8 ~ b8 b8 \once \omit TupletBracket \times 2/3 { b8 b8 b8 } ges2 ~ ges8 r8 |
  r8 r16 b16 b4 ~ b8 b8 ges2 ~ ges8 r8 |
  r4 \tmpVoiceOne { b2 ges2 ~ ges8 r8 } |
  r4 r4 des8[ ( es8] ) fes4 ~ fes8 es8 des8 fes8 |
  b,2\> h8\!-\diminuendo cis8 d4 d8 cis8 h8 d8 |
  gis,4 ~ gis8 r8 a4-\menoF ( ~ a8.[ h16] ) c2 |
  \numericTimeSignature\time 4/4 c4-\crescendo ( ~ c8.[ d16] ) es2 |
  es4 ( ~ es8.[ f16] ) ges4 ~ ges8. es16 |
  a2. ~\ff a8 r8 |
  R1 |
  r2 r4 \tmpVoiceOne {
    a4\fff |
    a2. a4 |
    a2 r4 a4 |
    a2. ~ a8 r8 |
    a1 |
    b1 ~ |
    b2 ~ b4 r4
  } |
  R1*6 |
  \bar "||"
  R1*3 |
  r2 r4 b4 |
  b4 ges8 f8 es4 f8 ges8 |
  as2 ges4 f8 es8 |
  d4 f4 ~ f8 ces8 b8 as8 |
  ges8.[ ( b16] ) es4 ~ es8 r8 r4 |
  c'4 b4 a4 f4 |
  ges2 ~ ges8 ges8 ges8 ges8 |
  des2 c4 ces4 |
  b2. ~ b8 r8 |
  R1*4 |
  \bar "||"
  \numericTimeSignature\time 4/4
  R1*7
  \bar "||"
  \time 2/4
  R2
  \bar "||"
  \numericTimeSignature\time 4/4
  R1 |
  r4\p ges'4 \< ges4 \! \> ( f8 \! ) r8 |
  R1 |
  r4\p ges4 \< ges4 \! \> ( f8 \! ) r8 |
  R1 |
  R1*6
  \bar "|."

}

%% ==========================================

SopranTwo = \relative {
  \voiceTwo
  \autoBeamOff
  s1*157
  s4 a'4 b4 ( a4 ) | % 59
  s4 a4 b4 ( a4 ) | % 60
  s2 s4 g4 | % 61
  b4 g4 e4. f8 | % 62
  g2 ( f2 ~ | % 63
  f8 ) s8 s4 s2 | % 64
  s1*18
  \key fis \minor
  \bar "||"
  s1*11
  \time 2/4
  s2 s2.
  s2 s2.
  s1*11
  s1.*7 | % 8
  \numericTimeSignature\time 4/4  s1*4 | % 12
  s2 s4 es'4 | % 13
  es2. es4 | % 14
  es2 s4 es4 | % 15
  es2. ~ es8 s8 | % 16
  es1 | % 17
  des1 ~ | % 18
  des2 ~ des4 s4
}

AltTwo = \relative {
  \voiceTwo
  \autoBeamOff
  s1*177
  s4 s8 cis'8 cis4 s8 cis8 | % 79
  cis2 s4 eis8 eis8 |
  eis2 eis4. cis8 | % 81
  cis2 ~ cis4 s4 |
  s4 s8 a'8 g8 s8 s8 g8 | % 2
  a8 s8 s8 a8 g8 s8 s8 g8 | % 3
  a8 s8 s4 s2 | % 4
  s4 s8 h8 a8 s8 s8 a8 | % 5
  h8 s8 s8 h8 a8 s8 s8 a8 | % 6
  h8 s8 s4 s2 | % 7
  s4 s8 gis8 a8 s8 s8 a8 | % 8
  gis4 gis8. gis16 a8 a4 a8 | % 9
  as4 s8 g8 d'8 s8 s8 g,8 | % 10
  des'8 s8 s8 g,8 des'8 s8 s8 g,8 | % 11
  c2 ~ c4 s4 | % 12
  \time 2/4  s2 | % 13
  \time 3/4  s8 g8 g8 g8 g8 g8 | % 14
  \time 2/4  c2 ~ | % 15
  \time 3/4  c4 c2 | % 16
  \numericTimeSignature\time 4/4  cis1 ~ | % 17
  cis2 ~ cis4 s4 | % 18
  s1*9
  s1.*7 | % 8
  \numericTimeSignature\time 4/4  s1*4 | % 12
  s2 s4 a4 | % 13
  a2. a4 | % 14
  a2 s4 a4 | % 15
}

TenorTwo = \relative {
  \voiceTwo
  \autoBeamOff
  s1*161
  s2 s4 a4 | % 63
  d4 c4 c4 b8[ ( a8] ) | % 64
  d4 es4 d4. d8 | % 65
  es4 ~ es8 s8 s2 | % 66
  s1*16
  s1*11
  s2 s2.
  s2 s2.
  s1*11
  s1.*7 | % 8
  \numericTimeSignature\time 4/4  s1*4 | % 12
  s2 s4 es4 | % 13
  es2. es4 | % 14
  es2 s4 es4 | % 15
  es2. ~ es8 s8 | % 16
  es1 | % 17
  des1 ~ | % 18
  des2 ~ des4 s4 |
}

BassTwo = \relative {
  \voiceTwo
  \autoBeamOff
  s1*165
  s4 e4 es4 es4 | % 67
  d2 s2 | % 68
  s1*14
  s4 s8 fis8 e8 s8 s8 e8 | % 2
  fis8 s8 s8 fis8 e8 s8 s8 e8 | % 3
  fis8 s8 s4 s2 | % 4
  s4 s8 gis8 fis8 s8 s8 fis8 | % 5
  gis8 s8 s8 gis8 fis8 s8 s8 fis8 | % 6
  gis8 s8 s4 s4 s8 his,8 | % 7
  cis4 ( c4 ) h4 his4 | % 8
  cis4 ( c4 ) h4 c4 | % 9
  des4 s8 g8 des'8 s8 s8 g,8 | % 10
  des'8 s8 s8 g,8 des'8 s8 s8 g,8 | % 11
  es2 ~ es4 s4 | % 12
  \time 2/4  s2 | % 13
  \time 3/4  s8 c8 c8 c8 c8 c8 | % 14
  \time 2/4  es2 ~ | % 15
  \time 3/4  es4 c2 | % 16
  \numericTimeSignature\time 4/4  a'1 ~ | % 17
  a2 ~ a4 s4 | % 18
  s1*9|
  s1.*3 | % 4
  s4 b,2 ges2 ~ ges8 s8 | % 5
  s1.*3 | % 8
  \numericTimeSignature\time 4/4  s1*4 | % 12
  s2 s4 a'4 | % 13
  h,2. h4 | % 14
  a'2 s4 a4 | % 15
  h,2. ~ h8 s8 | % 16
  h1 | % 17
  b1 ~ | % 18
  b2 ~ b4 s4 |
}


SopranoLyricsOne = \lyricmode {
  Nous a -- vons pleu -- ré au sou -- ve -- nir de Si -- on, __ et dans no -- tre deuil nous a -- vons sus­ -- pen -- du aux bran -- ches des sau -- les nos luths, dé -- sor -- mais i -- nu -- ti -- les.
  Ceux qui nous re -- tienn -- ent cap -- ti -- ves au pa -- ys dé -- tes -- té de Sen -- na -- ar, __ nous ont de -- man -- dé de chan -- ter __ les can -- ti -- ques __ de Si -- on. __
  Com -- ment __ nos voix at -- tris -- tées __ pour -- raient el -- les chan -- ter sur la terre é -- tran -- gè -- re les saints can -- ti -- ques du Sei -- gneur! __
  %%
  Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __  Si ja -- mais je t'ou -- bli -- e, que ma droi -- te de -- meure i -- ner -- te! __ Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __
  Et que ma lan -- gue des -- sé -- chée __ reste at -- ta -- chée à mon pa -- lais, si ta dé -- li -- vrance at -- ten -- du -- e,
  Jé -- ru -- sa -- lem!  Jé -- ru -- sa -- lem! __  n'est pas le su -- jet é -- ter -- nel __ de mes es -- poirs __ et de mes joies! __
  %%
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  rap -- pel -- "le -" toi, rap -- pel -- "le -" toi,
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur!
  rap -- pel -- "le -" toi, rap -- pel -- "le -" toi la cru -- au -- té des fils d'É -- dom aux jours de __ no -- tre dé -- tres -- se!
  Aux jours __ de no -- tre dé -- tres -- se!
  Sei -- gneur! Sei -- gneur!
  Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur!
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom! __
  Sei -- gneur! Sei -- gneur! __
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom!
  aux jours de no -- tre dé -- tres -- se!
  Sei -- gneur! Sei -- gneur!
  Sou -- "viens-" toi qu'ils cri -- aient: __
  %%
  A mort! A mort! A mort! A mort!
  A mort! A mort! A mort! A mort!
  A mort! A mort les en -- fants d'Is -- ra -- ël!
  A mort! A mort! A mort! A mort! __
  Et que Jé -- ru -- sa -- lem __ s'é -- croule! __
  %%
  Mal -- heur sur toi! __
  Fil -- le de Ba -- by -- lone! __
  Mal -- heur sur toi! __
  Mal -- heur! __
  Heu -- reux __ ce -- lui qui te ren --
  dra tous les maux que tu nous as
  faits! __ Heu -- reux qui prend -- ra tes en --
  fants, et bri -- se -- ra leur corps fra -- gi -- les
  con -- tre la pier -- re de tes
  murs! __
  Mal -- heur __ sur toi!
  Mal -- heur! __
  Mal -- heur! __
  %%
  Nous a -- vons pleu -- ré! __
  %%
  Hé -- las! __ Hé -- las! __
}

SopranoTwoLyrics = \lyricmode {

}

AltoLyricsOne = \lyricmode {
  As -- sis sur les ber -- ges du fle -- uve dont les flots bai -- gnent Ba -- by -- lo -- ne, nous a -- vons pleu -- ré __ au sou -- ve -- nir de Si -- on, __ et dans no -- tre deuil, et dans no -- tre deuil nous a -- vons sus­ -- pen -- du aux bran -- ches des sau -- les __ nos luths, dé -- sor -- mais i -- nu -- ti -- les.
  Ceux qui nous re -- tienn -- ent cap -- ti -- ves au pa -- ys dé -- tes -- té de Sen -- na -- ar, __ nous ont de -- man -- dé de chan -- ter __ les can -- ti -- ques __ de Si -- on.
  Com -- ment nos voix at -- tris -- tées pour -- raient el -- les chan -- ter sur la terre é -- tran -- gè -- re les saints can -- ti -- ques du Sei -- gneur! __
  %%
  Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __  Si ja -- mais je t'ou -- bli -- e, que ma droi -- te de -- meure i -- ner -- te! __ Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __
  Et que ma lan -- gue des -- sé -- chée __ reste at -- ta -- chée à mon pa -- lais, si ta dé -- li -- vrance at -- ten -- du -- e,
  n'est pas le su -- jet é -- ter -- nel de mes es -- poirs __ et de mes joies! __
  %%
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se!
  rap -- pel -- "le -" toi leur cru -- au -- té, __
  Sei -- gneur! aux jours de __ no -- tre dé -- tres -- se!
  Sei -- gneur! Sei -- gneur!
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom __
  aux jours de no -- tre dé -- tres -- se!
  rap -- pel -- "le -" toi, Sei -- gneur! la cru -- au -- té des fils d'É -- dom, Sei -- gneur!
  Sei -- gneur!
  rap -- pel -- "le -" toi la cru -- au -- té des fils d'É -- dom aux jours de no -- tre dé -- tres -- se!
  Sei -- gneur! Sei -- gneur!
  Sou -- "viens-" toi qu'ils cri -- aient: __
  %%
  A mort! A mort! A mort! A mort!
  A mort! A mort! A mort! A mort!
  A mort! A mort les en -- fants d'Is -- ra -- ël!
  A mort! A mort! A mort! A mort! __
  Et que Jé -- ru -- sa -- lem __ s'é -- croule! __
  %%
  Mal -- heur sur toi! __
  Fil -- le de Ba -- by -- lone! __
  Mal -- heur sur toi! __
  Mal -- heur! __
  Heu -- reux __ ce -- lui qui te ren --
  dra tous les maux que tu nous as
  faits! __ Heu -- reux qui prend -- ra tes en --
  fants, et bri -- se -- ra leur corps fra -- gi -- les
  con -- tre la pier -- re de tes
  murs! __
  Mal -- heur __ sur toi!
  Mal -- heur! __
  Mal -- heur! __
  %%
  As -- sis sur les ber -- ges du fleu -- ve
  dont les flots bai -- gnent Ba -- by -- lo -- ne,
  nous a -- vons pleu -- ré __ au sou -- ve -- nir de Si -- on!
  Nous a -- vons pleu -- ré! __
  %%
  Hé -- las! __ Hé -- las! __
}

AltoTwoLyrics = \lyricmode {

}

TenorLyricsOne = \lyricmode {
  As -- sis sur les ber -- ges du fle -- uve dont les flots bai -- gnent Ba -- by -- lo -- ne, nous a -- vons pleu -- ré __ au sou -- ve -- nir de Si -- on, __ et dans no -- tre deuil, et dans no -- tre deuil nous a -- vons sus­ -- pen -- du aux bran -- ches des sau -- les nos luths, dé -- sor -- mais i -- nu -- ti -- les.
  Com -- ment __ nos voix at -- tris -- tées __ pour -- raient el -- les __ chan -- ter sur la terre é -- tran -- gère __ les saints can -- ti -- ques du Sei -- gneur! __
  %%
  Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __  Si ja -- mais je t'ou -- bli -- e, que ma droi -- te de -- meure i -- ner -- te! __ Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __
  Et que ma lan -- gue des -- sé -- chée __ reste at -- ta -- chée à mon pa -- lais,
  Jé -- ru -- sa -- lem! si ta dé -- li -- vrance at -- ten -- du -- e,
  n'est pas le su -- jet é -- ter -- nel de mes es -- poirs et de mes __ joies! __
  %%
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur! __ 
  Sei -- gneur!
  Sei -- gneur! rap -- pel -- "le -" toi
  Sei -- gneur! Sei -- gneur! Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur! rap -- pel -- "le -" toi! __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se!
  Sei -- gneur! Sei -- gneur!
  Sou -- "viens-" toi qu'ils cri -- aient: __
  %%
  A mort! A mort! A mort! A mort!
  A mort! A mort! A mort! A mort!
  A mort! A mort les en -- fants d'Is -- ra -- ël!
  A mort! A mort! A mort! A mort! __
  Et que Jé -- ru -- sa -- lem __ s'é -- croule! __
  %%
  Mal -- heur sur toi! __
  Fil -- le de Ba -- by -- lone! __
  Mal -- heur sur toi! __
  Mal -- heur! __
  Heu -- reux __ ce -- lui qui te ren --
  dra tous les maux que tu nous as
  faits! __ Heu -- reux qui prend -- ra tes en --
  fants, et bri -- se -- ra leur corps fra -- gi -- les
  con -- tre la pier -- re de tes
  murs! __
  Mal -- heur __ sur toi!
  Mal -- heur! __
  Mal -- heur! __
  %%
  As -- sis sur les ber -- ges du fleu -- ve
  dont les flots bai -- gnent Ba -- by -- lo -- ne,
  nous a -- vons pleu -- ré __ au sou -- ve -- nir de Si -- on! __
  au sou -- ve -- nir __ de Si -- on! __
  %%
  Hé -- las! __ Hé -- las! __
}

TenorTwoLyrics = \lyricmode {

}

BassLyricsOne = \lyricmode {
  As -- sis sur les ber -- ges du fle -- uve dont les flots bai -- gnent Ba -- by -- lo -- ne, __ nous a -- vons pleu -- ré __ au sou -- ve -- nir de Si -- on, __ et __ dans no -- tre deuil, et __ dans no -- tre deuil nous a -- vons sus­ -- pen -- du __ aux bran -- ches des sau -- les nos luths i -- nu -- ti -- les.
  Com -- ment nos voix at -- tris -- tées __ pour -- raient el -- les chan -- ter les saints can -- ti -- ques du Sei -- gneur! __
  %%
  Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __  Si ja -- mais je t'ou -- bli -- e, que ma droi -- te de -- meure i -- ner -- te! __ Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __
  Et que ma lan -- gue des -- sé -- chée __ reste at -- ta -- chée à mon pa -- lais,
  Jé -- ru -- sa -- lem, Jé -- ru -- sa -- lem! __ Si ta dé -- li -- vrance at -- ten -- due,
  n'est pas le su -- jet é -- ter -- nel de mes es -- poirs et de mes joies! __
  %%
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur!
  la cru -- au -- té des fils d'É -- dom aux __ jours de __ no -- tre dé -- tres -- se!

  rap -- pel -- "le -" toi, rap -- pel -- "le -" toi,
  Sei -- gneur! __
  rap -- pel -- "le -" toi,
  Sei -- gneur! __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom __ aux jours de no -- tre dé -- tres -- se! __
  rap -- pel -- "le -" toi,
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi,
  Sei -- gneur!
  rap -- pel -- "le -" toi la cru -- au -- té des fils d'É -- dom
  aux jours de no -- tre dé -- tres -- se!
  Sei -- gneur! Sei -- gneur!
  Sou -- "viens-" toi qu'ils cri -- aient: __
  %%
  A mort! A mort! A mort! A mort!
  A mort! A mort! A mort! A mort!
  A mort __ les en -- fants __ d'Is -- ra -- ël!
  A mort! A mort! A mort! A mort! __
  Et que Jé -- ru -- sa -- lem __ s'é -- croule! __
  %%
  Mal -- heur sur toi! __
  Fil -- le de Ba -- by -- lone! __
  Mal -- heur sur toi! __
  Mal -- heur! __
  Heu -- reux __ qui te ren --
  dra tous les maux que tu nous as
  faits! __ Mal -- heur!
  Mal -- heur! Mal -- heur __ sur toi! __
  Mal -- heur __ sur toi!
  Mal -- heur! __
  Mal -- heur! __
  %%
  As -- sis sur les ber -- ges du fleu -- ve
  dont les flots bai -- gnent Ba -- by -- lo -- ne, __
  nous a -- vons pleu -- ré __ au sou -- ve -- nir de Si -- on! __
  %%
  Hé -- las! __ Hé -- las! __
}

BassTwoLyrics = \lyricmode {

}

Chords = \chordmode {
  \set chordChanges = ##t

}

RH_One = \relative {
  R1*8 | % 9
  f'4 ges4 f4 e4 ~ | \barNumberCheck #10
  e4 ges4 f4 es4 | % 11
  f4 ges4 f4 e4 ~ | % 12
  e4 ges4 f4 <es ges es'>4 ~ | % 13
  es'4 f4 es4 des4 ~ | % 14
  des4 eses4 des4 c4 ~ | % 15
  c4 des4 c8 b4 a8 | % 16
  <f des' f>2 ~ ~ ~ <f des' f>4 ~ ~ ~ <f des' f>8 r8 | % 17
  R1*2 | % 19
  cis4 ~ cis8. dis16 e4 ~ e8. dis16 | \barNumberCheck #20
  d4 ~ d8 e16 fis16 gis2 | % 21
  a4 ~ a8. gis16 fis2 | % 22
  ges4 ~ ges8. f16 es2 | % 23
  es4 ~ es8. ges16 ges8 f4 es8 | % 24
  des4 c8 b8 b4 c8 ~ c16 r16 | % 25
  <c c'>4 <des des'>4 <c c'>4 <b b'>4 ~ ~ | % 26
  <b b'>4 <c c'>4 <b b'>4 <heses heses'>8 <as as'>8 | % 27
  <gis cis e gis>4 <a cis e a>4 gis'4 fis4 ~ | % 28
  fis4 gis4 fis4 eis4 | % 29
  eis4 fis4 gis4 a4 ~ | \barNumberCheck #30
  <a, a'>4 <b b'>4 <c c'>4 <des des'>4 | % 31
  <d d'>4 <es es'>4 <e e'>4 <f f'>4 | % 32
  <ges b fes' ges>4 <g des' fes g>4 <es' ges>2 | % 33
  <c c'>4 <ces ces'>8. <b b'>16 <ces ces'>4 ~ ~ <ces ces'>8 <b b'>8 | % 34
  <b b'>2. <heses heses'>4 | % 35
  <as as'>2. <g g'>4 | % 36
  <ges ges'>2. <f f'>8. <ges ges'>16 | % 37
  <ges ges'>2. <f f'>8. <ges ges'>16 | % 38
  <ges ges'>4 <f f'>8. <ges ges'>16 <ges ges'>4 <f f'>8. <ges ges'>16
  | % 39
  <ges ges'>2. <f f'>4 | \barNumberCheck #40
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    <des f>8 b'8 c8 ~ c8 b8 f'8 ~ f8 f,8 b8 c8 b4 | % 41
    <des, f>8 b'8 c8 ~ c8 b8 f'8 ~ f8 f,8 b8 c8 b4 | % 42
    <des, f>8 b'8 c8 ~ c8 b8 f'8 ~ f8 f,8 b8 c8 b4 | % 43
    <des, es>8 b'8 c8 ~ c8 b8 es8 ~ es8 es,8 b'8 c8 b4 | % 44
    <c, es>8 c'8 des8 ~ des8 c8 es8 ~ es8 es,8 c'8 des8 c4 | % 45
    <ces, f>8 d'8 es8 ~ es8 d8 f8 ~ f8 f,8 d'8 es8 d4 | % 46
    <b, ges'>8 es'8 f8 ~ f8 es8 ges8 ~ ges8 ges,8 es'8 f8 es4 | % 47
    <a, a'>4. <b b'>4. <h h'>4. <c c'>4. | % 48
    <es es'>4. <des des'>4. <es es'>4. <e e'>4. | % 49
    <f f'>8 f8 ges8 as8 ges8 f8 es8 des8 c8 b8 as8 b8 | \barNumberCheck
    #50
    c8 c,8 f8 g8 f8 c'8 ~ c8 c,8 f8 g8 f4 ~ | % 51
    f8 c8 f8 g8 f8 c'8 ~ c8 c,8 f8 g8 f4 ~ | % 52
    f8 c8 f8 g8 f8 c'8 ~ c8 c,8 f8 g8 f4 ~ | % 53
    f8 es8 as8 b8 as8 es'8 ~ es8 es,8 as8 b8 as4 | % 54
    r8 des,8 ges8 as8 ges8 des'8 ~ des8 des,8 ges8 as8 ges4 | % 55
    r8 fes8 heses8 ces8 des8 fes8 heses8 ges8 des8 ces8 heses8 ges'8 | % 56
  }
  \numericTimeSignature\time 4/4  <f, f'>8 <ges ges'>8 <des des'>8 <f
  f'>8 ~ ~ <f f'>8 <ges ges'>8 <f f'>8 <e e'>8 ~ ~ | % 57
  <e e'>8 <ges ges'>8 <des des'>8 <f f'>8 ~ ~ <f f'>8 <ges ges'>8 <f
  f'>8 <es es'>8 | % 58
  <f f'>8 <ges ges'>8 <des des'>8 <f f'>8 ~ ~ <f f'>8 <ges ges'>8 <f
  f'>8 <e e'>8 ~ ~ | % 59
  <e e'>8 <ges ges'>8 <des des'>8 <f f'>8 ~ ~ <f f'>8 <ges ges'>8 <f
  f'>8 <es es'>8 | \barNumberCheck #60
  es'8 as8 f8 es8 ~ es8 f8 es8 des8 ~ | % 61
  des8 ges8 eses8 des8 ~ des8 eses8 des8 c8 ~ | % 62
  c8 des8 des8 c8 ~ c8 b4 a8 | % 63
  f'8 des8 es8 f8 es8 des8 c8 b8 | % 64
  <c, c'>8 <f f'>8 <es es'>8 <des des'>8 <c c'>8 <des des'>8 <c c'>8
  <b b'>8 ~ ~ | % 65
  <b b'>8 <es es'>8 <des des'>8 <c c'>8 <b b'>8 <c c'>8 <b b'>8 <heses
  heses'>16 <as as'>16 | % 66
  gis'8 cis8 h8 a8 gis8 a8 gis8 fis8 ~ | % 67
  fis8 h8 a8 gis8 fis8 gis8 fis8 eis8 | % 68
  eis8 fis8 cis'8 fis,8 gis8 a8 d8 a8 | % 69
  a8 b8 es8 b8 c8 des8 ges8 des8 | \barNumberCheck #70
  d8 es8 b'8 es,8 e8 f8 des'8 f,8 | % 71
  ges8 g8 fes'8 g,8 ges8 c8 es8 ges,8 ~ | % 72
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    ges8 ces8 as8 f8 es8 d8 f8 d8 ces8 as8 ges8 f8 | % 73
    ces'8 b8 es8 f8 es8 b'8 ~ b8 b,8 es8 f8 es4 | % 74
    r8 cis8 fis8 gis8 fis8 cis'8 ~ cis8 cis,8 fis8 gis8 fis4 | % 75
    r8 a,8 d8 e8 d8 a'8 ~ a8 a,8 d8 e8 d4 | % 76
    r8 c8 f8 g8 f8 c'8 cis8 gis8 cis8 dis8 cis8 gis'8 | % 77
    r8 dis,8 gis8 ais8 gis8 dis'8 ~ dis8 dis,8 gis8 ais8 gis4 | % 78
    <ais, cis fis>8 cis'8 ais8 fis8 cis8 ais8 fis8 cis8 fis8 g8 c8 g8 | % 79
    fis8 cis'8 fis8 gis8 fis8 cis'8 ~ cis8 cis,8 fis8 gis8 fis4 |
  }
  \barNumberCheck #80
  <fis, ais cis fis>8 <fis ais cis
  fis>8 <fis ais cis fis>4 ~ ~ ~ ~ <fis ais cis fis>8 <fis ais cis
  fis>8 <g b d g>8 <g b d g>8 \bar "||"
  <g b d g>4 ~ ~ ~ ~ <g b d g>8. <a a'>16 <b es g b>2 | % 82
  <g b d g>4 ~ ~ ~ ~ <g b d g>8. <a a'>16 <a es' g a>2 | % 83
  <g b d g>4 ~ ~ ~ ~ <g b d g>8 <a a'>16 <b b'>16 <b es g b>4 ~ ~ ~ ~
  <b es g b>8 <a a'>16 <g g'>16 | % 84
  <g b d g>4 ~ ~ ~ ~ <g b d g>16 <f f'>16 <g g'>16 <a a'>16 <a cis g'
  a>2 | % 85
  <b d g b>4 ~ ~ ~ ~ <b d g b>8. <c c'>16 <d fis b d>2 | % 86
  <es ges ces es>4 ~ ~ ~ ~ <es ges ces es>8. <f f'>16 <fis c' es fis>2
  | % 87
  <g, cis e g>4 ~ ~ ~ ~ <g cis e g>8 <a a'>16 <b b'>16 <c fis b>4 <c
  fis a>4 | % 88
  a'4. g8 g4 ~ g8 r8 | % 89
  <d, f a d>4 ~ ~ ~ ~ <d f a d>8. <e e'>16 <f as d f>4 ~ ~ ~ ~ <f as d
  f>8. <e e'>16 | \barNumberCheck #90
  <es g c es>4 ~ ~ ~ ~ <es g c es>8 <f f'>16 <g g'>16 <a c es a>2 | % 91
  <b des f b>4 ~ ~ ~ ~ <b des f b>8. <c c'>16 <des fes b des>4 ~ ~ ~ ~
  <des fes b des>8. <c c'>16 | % 92
  <ces es as ces>4 ~ ~ ~ ~ <ces es as ces>8 <des des'>16 <es es'>16 <f
  as c f>4 <as, f'>4 | % 93
  f'8 ges4 d8 d4 ces8. b16 | % 94
  b2. d4 | % 95
  f8 es8 g8 b8 b4 f4 | % 96
  as8 ges8 b8 des8 des4 <b des>4 | % 97
  <b des>4 c8 b8 as4 <g, g'>8 <as f'>8 | % 98
  f'4 e2 f8 des8 | % 99
  c2. es8 c16 r16 \bar "||"
  \key f \minor r8 as8 g8 f8 es'4 des8 c8 | % 101
  c8 b8 \once \omit TupletBracket
  \times 2/3  {
    as8 g8 f8
  }
  f4 e4 | % 102
  r8 c'8 b8 as8 g'4 f8 des8 | % 103
  \once \omit TupletBracket
  \times 2/3  {
    as8 g8 as8
  }
  b8 c8 c4 h4 | % 104
  h8 c8 f8 as8 as4 e4 | % 105
  dis8 e8 a8 cis8 cis8 c8 \once \omit TupletBracket
  \times 2/3  {
    h8 cis8 d8 ~
  }
  | % 106
  d8 d,8 c8 h8 b8 c4 b8 | % 107
  b2. as8 ~ as16 r16 | % 108
  c,8 d8 es8 g8 fis4 c'4 | % 109
  b8 c4 des8 ~ des8 c4 b8 | \barNumberCheck #110
  b8 as8 \once \omit TupletBracket
  \times 2/3  {
    b8 ces8 es8
  }
  d4 gis4 | % 111
  fis8 gis4 a8 ~ a8 gis4 fis8 | % 112
  g8 e8 fis8 g8 ~ g8 gis8 a8 gis8 | % 113
  g8 e8 f8 g8 ~ g8 gis8 b8 a8 | % 114
  a8 f8 g8 gis8 ~ gis8 a8 d8 c8 | % 115
  <d, f b>8. <b d>16 <b d>2 ~ ~ <b d>8 r8 | % 116
  f8 e4 f8 b4 a8. f16 | % 117
  f8 e4 f8 b4 a8. f16 | % 118
  d1 ~ | % 119
  d4 ~ d8 r8 r2 | \barNumberCheck #120
  R1*3 | % 123
  <d' f a d>1 \bar "||"
  \key d \minor <d, f a d>4 r4 r4 <a' d f>4 | % 125
  <b d b'>4 r4 r4 <g b e>4 | % 126
  <g b e g>4 r4 r4 <g a cis>4 | % 127
  <f a d>2 ~ ~ ~ <f a d>4 r4 | % 128
  r4 <f a d>4 <f d' f>4 r4 | % 129
  r4 <f h d>4 <h e h'>4 r4 | \barNumberCheck #130
  r4 <e, a e'>4 r4 <f a f'>4 | % 131
  r4 <e gis d'>4 r4 <e g a cis>4 | % 132
  <d f a d>4 r4 <a' d f a>2 ~ ~ ~ ~ | % 133
  <a d f a>4 r4 <gis h f' gis>4 r4 | % 134
  <a c e a>4 <f h f'>4 <e c' e>4 r4 | % 135
  r4 <fis c' es>4 <g b d>4 r4 | % 136
  <g b d>4 r4 <g b g'>4 r4 | % 137
  r4 <g b e>4 <a d a'>4 r4 | % 138
  <f gis d'>4 <f g h>2 <e g a>4 | % 139
  <d f a>4 r4 r2 | \barNumberCheck #140
  r4 d'4 e4. f8 | % 141
  <g, b e g>4 r4 r4 <g b e>4 ~ | % 142
  e'4 d8 cis8 d4 c4 ~ | % 143
  c4 b2 a4 | % 144
  <h, f' as>4 r4 r4 <h f' as>4 | % 145
  <e a>4 <f h d>4 <e a c>4 r4 | % 146
  r4 <a c fis>4 <g b g'>4 r4 | % 147
  r4 <g b g'>4 <cis, g' b>4 r4 | % 148
  r4 <cis f a>4 <d f a>4 <f b d>4 | % 149
  <f b d>4 <f a d>2 <e g cis>4 | \barNumberCheck #150
  <d d'>1 ~ ~ | % 151
  <d d'>1 | % 152
  d'4 c8 h8 c4 b4 | % 153
  <c, a'>2. es'4 | % 154
  <fis, c' es>4 <fis b d>2 <fis a c>4 | % 155
  c'4 b2 a4 | % 156
  a4 g2 f4 | % 157
  f4 e2 r4 | % 158
  r4 <a, c f a>4 <b des f b>4 <a c f a>4 | % 159
  r4 <f' a d f>4 <g b d g>4 <f a d f>4 | \barNumberCheck #160
  r4 d'4 g4 a8 b8 | % 161
  c,2 ~ c8 d8 e8 f8 | % 162
  g4 e4 ~ e4 d8 cis8 | % 163
  d4 c4 ~ c4 b8 a8 | % 164
  d4 <es g>4 fis4. g8 | % 165
  <b, es g>4 r8 <g b es g>8 <b d g b>4 r8 <b d g b>8 | % 166
  <d g b d>4 r8 <d g b d>8 <g c g'>4 r8 <g c g'>8 | % 167
  <a d fis>4 r4 r4 <c, es a c>4 | % 168
  <b d g b>4 r4 r4 <b, d fis b>4 | % 169
  <b d g b>4 r4 r4 <d g b d>4 | \barNumberCheck #170
  <cis g' b cis>4 r4 r4 <des f a des>4 | % 171
  <des f b des>4 r4 r4 <f b des f>4 | % 172
  <e ais cis e>4 r4 r4 <e gis his e>4 | % 173
  <e gis cis e>4 r4 r4 <gis cis e gis>4 | % 174
  <g cis e g>4 r4 r4 <g cis e g>4 | % 175
  <gis cis e gis>4 r4 r4 <gis cis e gis>4 | % 176
  <a dis fis a>4 r4 r4 <a his fis' a>4 | % 177
  <h fis' gis h>4 r4 r4 <h d eis h'>4 | % 178
  <cis e h' cis>2 r4 <g cis e g>4 | % 179
  <cis eis h' cis>2 r4 <g cis eis g>4 | \barNumberCheck #180
  <cis eis h' cis>2 r4 <g cis eis g>4 | % 181
  <cis eis h' cis>2 r4 <cis eis h' cis>4 | % 182
  \key fis \minor a'16 gis16 fis8 ~ fis16 gis16 a16 fis16 b4 r4 | % 183
  a16 gis16 fis8 ~ fis16 gis16 a16 fis16 b4 r4 | % 184
  a16 gis16 fis8 b4 a16 gis16 fis8 b4 | % 185
  h16 ais16 gis8 ~ gis16 ais16 h16 gis16 c4 r4 | % 186
  h16 ais16 gis8 ~ gis16 ais16 h16 gis16 c4 r4 | % 187
  h16 ais16 gis8 c4 h16 ais16 gis8 c4 | % 188
  eis,16 dis16 cis8 ~ cis16 dis16 eis16 cis16 a'16 gis16 fis8 ~ fis16
  gis16 a16 fis16 | % 189
  eis16 dis16 cis8 ~ cis16 dis16 eis16 cis16 a'16 gis16 fis8 ~ fis16
  gis16 a16 fis16 | \barNumberCheck #190
  f16 es16 des8 ~ des16 c16 h8 f'16 es16 des8 ~ des16 c16 h8 | % 191
  f'16 es16 des8 ~ des16 c16 h8 f'16 es16 des8 ~ des16 c16 h8 | % 192
  <g c g'>4 <es' g c es>8 <d d'>8 <c es g c>4 ~ ~ ~ ~ <c es g c>8 <d
  d'>8 \bar "||"
  \time 2/4  <es g c es>8 <c c'>8 <g' c es g>4 \bar "||"
  \time 3/4  <es g c es>8 <d d'>8 <c es g c>4 ~ ~ ~ ~ <c es g c>8 <d
  d'>8 \bar "||"
  \time 2/4  <es g c es>8 <c c'>8 <g' c g'>4 \bar "||"
  \time 3/4  <es g c es>8 <d d'>8 <c es g c>4 ~ ~ ~ ~ <c es g c>8 <d
  d'>16 <es es'>16 \bar "||"
  \numericTimeSignature\time 4/4  <e a cis e>4 <e a cis e>2 <e a cis
  e>4 ~ ~ ~ ~ | % 198
  <e a cis e>4. <d d'>8 <cis e a cis>2 ~ ~ ~ ~ | % 199
  <cis e a cis>4 <d d'>4 <e gis h e>4 <cis cis'>4 | \barNumberCheck
  #200
  <f a cis f>4 <f, a cis f>2 ~ ~ ~ ~ <f a cis f>8 <f' a cis f>8 | % 201
  <e a cis e>4. <d d'>8 <cis e a cis>2 ~ ~ ~ | % 202
  <cis fis a cis>4 <d d'>4 <e gis cis e>4 <cis cis'>4 | % 203
  <f a cis f>4 <f, a cis f>4 <f' a cis f>4. <f, a cis f>8 | % 204
  <e a cis e>4. <cis cis'>8 <gis' h dis gis>4. <dis dis'>8 | % 205
  <a' cis fis a>4. <fis fis'>8 <b es ges b>2 | % 206
  <es ges b es>2. ~ ~ ~ ~ <es ges b es>8 <b b'>8 | % 207
  <ges' b es ges>4 <ges b es ges>2 <ges b es ges>4
  \bar "||"
  \time 6/4
  \key b \minor
  \grace { s8 }
  <f b des f>16 es'16 des16 c16 b16 as16
  ges16 f16 es16 des16 c16 b16 a16 h16 cis16 dis16 e16 fis16 gis16 a16
  h16 cis16 dis16 e16 | % 209
  <f, b des f>16 es'16 des16 c16 b16 as16 ges16 f16 es16 des16 c16 b16
  a16 h16 c16 d16 e16 fis16 gis16 a16 h16 c16 d16 e16 |
  \barNumberCheck #210
  <f, b des f>16 es'16 des16 c16 b16 as16 ges16 f16 es16 des16 c16 b16
  a16 h16 cis16 dis16 e16 fis16 gis16 a16 b16 c16 dis16 e16 | % 211
  <f, b des f>16 es'16 des16 c16 b16 as16 ges16 f16 es16 des16 c16 b16
  a16 h16 c16 d16 e16 fis16 gis16 a16 h16 c16 d16 e16 | % 212
  <f, as des f>16 es'16 des16 c16 b16 as16 ges16 f16 <fes as des fes>16
  es'16 des16 ces16 heses16 as16 ges16 fes16 es16 des16 ces16 heses16
  as16 ges16 fes16 es16 | % 213
  <des g des'>16 <es es'>16 <f f'>16 <g g'>16 <as as'>16 <b b'>16 <c
  c'>16 <des des'>16 <d fis d'>16 cis'16 h16 a16 g16 fis16 e16 d16
  cis16 ces16 a16 g16 fis16 e16 d16 cis16 | % 214
  <h eis h'>16 <cis cis'>16 <dis dis'>16 <eis eis'>16 <fis fis'>16
  <gis gis'>16 <ais ais'>16 <h h'>16 <c e c'>16 h'16 a16 g16 f16 e16 d16
  c16 <c e a c>16 h'16 a16 g16 f16 e16 d16 c16 \bar "||"
  \numericTimeSignature\time 4/4  <c es g c>16 b'16 as16 g16 f16 es16
  d16 c16 <c es g c>16 b'16 as16 g16 f16 es16 d16 c16 | % 216
  <c g' b c>16 b'16 as16 g16 f16 es16 des16 c16 <c g' b c>16 b'16 as16
  g16 f16 es16 des16 c16 | % 217
  <c f g c>16 b'16 a16 g16 f16 es16 des16 c16 c'16 b16 a16 g16 f16 es16
  d16 c16 | % 218
  <a dis fis a>16 gis'16 fis16 e16 dis16 cis16 h16 a16 a'16 gis16 fis16
  e16 dis16 cis16 h16 a16 | % 219
  <c es f c'>16 b'16 a16 ges16 f16 es16 des16 c16 c'16 b16 a16 ges16 f16
  es16 des16 c16 | \barNumberCheck #220
  <a dis fis a>16 gis'16 fis16 e16 dis16 cis16 h16 a16 a'16 gis16 fis16
  e16 dis16 cis16 h16 a16 | % 221
  <c es f c'>16 b'16 a16 ges16 f16 es16 des16 c16 c'16 b16 a16 ges16 f16
  es16 des16 c16 | % 222
  <a dis fis a>16 gis'16 fis16 e16 dis16 cis16 h16 a16 a'16 gis16 fis16
  e16 dis16 cis16 h16 a16 | % 223
  <a dis eis a>16 gis'16 fis16 eis16 dis16 cis16 h16 a16 a'16 gis16
  fis16 eis16 dis16 cis16 h16 a16 | % 224
  <f' b des f>16 es'16 des16 c16 b16 as16 ges16 f16 f'16 es16 des16 c16
  b16 as16 ges16 f16 | % 225
  <f as des f>16 es'16 des16 c16 b16 as16 ges16 f16 f'16 es16 des16 c16
  b16 as16 ges16 f16 | % 226
  <b, b'>4 <a a'>4 <as as'>4 <g g'>4 | % 227
  <ges ges'>4 <f f'>4 e'4 es4 | % 228
  d4 des4 c4 ces4 | % 229
  <b, b'>4 <a a'>4 as'4 g4 | \barNumberCheck #230
  fis4 f4 e4 es4 | % 231
  des4 ( c8 ) r8 b4 ( as8 ) r8 \bar "||"
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    <des f>8 b'8 c8 ~ c8 b8 f'8 ~ f8 f,8 b8 c8 b4 | % 233
    <des, f>8 b'8 c8 ~ c8 b8 f'8 ~ f8 f,8 b8 c8 b4 | % 234
    <des, f>8 b'8 c8 ~ c8 b8 f'8 ~ f8 f,8 b8 c8 b4 | % 235
    <des, f>8 b'8 c8 ~ c8 b8 f'8 ~ f8 f,8 b8 c8 b4 | % 236
    <des, es>8 b'8 c8 ~ c8 b8 es8 ~ es8 es,8 b'8 c8 b4 | % 237
    <c, es>8 c'8 des8 ~ des8 c8 es8 ~ es8 es,8 c'8 des8 c4 | % 238
    <ces, f>8 d'8 es8 ~ es8 d8 f8 ~ f8 f,8 d'8 es8 d4 | % 239
    <b, ges'>8 es'8 f8 ~ f8 es8 ges8 ~ ges8 ges,8 es'8 f8 es4 |
    \barNumberCheck #240
    <a, a'>4. <b b'>4. <h h'>4. <c c'>4. | % 241
    <es es'>4. <des des'>4. <es es'>4. <e e'>4. | % 242
    <f f'>8 f8 ges8 as8 ges8 f8 ~ f8 ges8 f8 ~ f8 ges,8 f8 ~ | % 243
    <des f>8 b'8 c8 ~ c8 b8 f'8 ~ f8 f,8 b8 c8 b4 | % 244
    <des, f>8 b'8 c8 ~ c8 b8 f'8 ~ f8 f,8 b8 c8 b4 | % 245
    <des, f>8 b'8 c8 ~ c8 b8 f'8 ~ f4. ~ f8 r8 r8 | % 246
    <des, f>8 b'8 c8 ~ c8 b8 f'8 ~ f4. ~ f8 r8 r8 | % 247
    f,4. b4 c8 ~ c4 b8 f'4 ~ f16 r16 \bar "||"
  }
  f,4 ~ f8. g16 as4 ~ as8. g16 | % 249
  ges4 ~ ges8 as16 b16 c2 | \barNumberCheck #250
  cis4 ~ cis8. dis16 e4 ~ e8. dis16 | % 251
  d4 ~ d8 e16 fis16 gis2 | % 252
  a4 ~ a8 gis16 fis16 ~ fis2 | % 253
  ges4 ~ ges8 f16 es16 ~ es2 | % 254
  es4 ~ es8. ges16 ges8 f4 es8 \bar "||"
  \time 2/4  des4 c8 b8 \bar "||"
  \numericTimeSignature\time 4/4  b2 a4 ~ a8 r8 | % 257
  r4 <ges, ges'>2 <f f'>8 r8 | % 258
  r4 <ges' ges'>2 <f f'>8 r8 | % 259
  r4 <ges, ges'>2 <f f'>8 r8 | \barNumberCheck #260
  r4 <ges' ges'>2 <f f'>8 r8 | % 261
  e8 f8 b8 des8 des4 a4 | % 262
  gis8 a8 d8 fis8 fis4 es8 d8 | % 263
  des4 ~ des8. c16 c4 ~ c8. ces16 | % 264
  ces2. ~ ces8. b16 | % 265
  b1 ~ | % 266
  b1 \bar "|."
}

RH_Two = \relative {
  \voiceTwo
  s1*8 | % 9
  des'2 ges,2 | \barNumberCheck #10
  des'2 ges,2 | % 11
  des'2 ges,2 | % 12
  des'2 ges,4 r4 | % 13
  <f' as>2 ces'2 | % 14
  <ges heses>2 ~ ges2 | % 15
  <e g>2 <es ges>2 | % 16
  s1*9 | % 25
  <f as>2 f2 | % 26
  fes2 es2 | % 27
  r2 <a, c>2 | % 28
  <a c>2 h2 | % 29
  cis2 <d fis>2 | \barNumberCheck #30
  <es ges>2 <ges b>2 | % 31
  <ges b>2 <b des>2 | % 32
  r2 <des des'>4 <c c'>4 | % 33
  f1 ~ | % 34
  f4 es2. ~ | % 35
  es4 des8. c16 des2 ~ | % 36
  des4 c8. h16 c4. des8 ~ | % 37
  des4 c8. h16 c4. des8 ~ | % 38
  des8 c4 des8 ~ des8 c4 des8 ~ | % 39
  des4 c2. | \barNumberCheck #40
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    s1.*7 | % 47
    c8 es8 f8 ~ f8 es8 ges8 ~ ges8 f8 es8 ~ es8 des8 c8 | % 48
    s1.*3 | % 51
    as,2. r2. | % 52
    as2. s2. | % 53
    as2. es'2. |
    s1.*2
  } | % 56
  des'2 b2 | % 57
  des2 b4 ~ b8. a16 | % 58
  a8 b8 b4 b2 | % 59
  des2 b2 | \barNumberCheck #60
  <f ces'>2 <as ces>2 | % 61
  <eses heses'>2 <es ges>2 | % 62
  <e g>2 <es ges>2 | % 63
  f2 ~ f4 ~ f8 r8 | % 64
  <f as>2 f2 | % 65
  fes2 es2 | % 66
  <cis e>2 <a cis>2 | % 67
  <a c>2 h2 | % 68
  cis2 <d fis>2 | % 69
  <es ges>2 <ges b>2 | \barNumberCheck #70
  <ges b>2 <b des>2 | % 71
  <b f'>4 <ges' des'>4 <c, es>4 <ges' c>4 | % 72
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    <ces, d>4. r4. <d, as'>4. d4. | % 73
    s1.*3 | % 76
    r2. r4. <h' dis>4. | % 77
    s1.*3 |
  }
  s1 \bar "||"
  s1*7 | % 88
  <b es>2 <b d>4 ~ ~ <b d>8 r8 | % 89
  s1*3 | % 92
  r2. es8. des16 | % 93
  des4 b2 ges4 | % 94
  f4 as2 c8. b16 | % 95
  b2 b4 <b des>4 | % 96
  <b des>4 ~ ~ <b des>8 r8 <des b'>4 ges8. f16 | % 97
  f4 <des f>4 <des f>4 des4 | % 98
  <g, b>2. <f as>4 | % 99
  <e g>4 <es ges>4 <d f>4 <es b'>8 e16 s16 \bar "||"
  \key f \minor s1*6 | % 106
  f4 ~ f8 g16 as16 as4 g4 | % 107
  g4 ~ g8 f8 f4 ~ f8 ~ f16 s16 | % 108
  g,2 c4 f4 | % 109
  f4 as4 g4 des4 | \barNumberCheck #110
  ces4 es4 as4 des4 | % 111
  cis4 e4 dis4 a8 dis8 | % 112
  cis2 es2 | % 113
  cis8 c4 b8 b4 e4 | % 114
  d4 e4 f2 | % 115
  s1 | % 116
  d,1 | % 117
  d1 | % 118
  s1*6 \bar "||"
  \key d \minor s1*16 | \barNumberCheck #140
  r4 <f b>4 <g b>2 | % 141
  s1 | % 142
  <f a>1 | % 143
  <d f>1 | % 144
  s1*6 | \barNumberCheck #150
  fis2 a2 ~ | % 151
  a4 g8 f8 g4 f4 | % 152
  <e g>1 | % 153
  g4 f8 e8 f4 f4 | % 154
  s1 | % 155
  <d g>2. r4 | % 156
  <d f>2. <g, b>4 | % 157
  <g b>2 r2 | % 158
  s1*2 | \barNumberCheck #160
  r4 <g' b>4 ~ ~ <g b>2 | % 161
  <g b>1 ~ ~ | % 162
  <g b>2 <f a>2 ~ ~ | % 163
  <f a>4 <es a>4 <d g>4 <c fis>4 | % 164
  <d g>4 b'8 a8 <c d>2 | % 165
  s1*17 | % 182
  \key fis \minor r2 b16 a16 g8 ~ g16 a16 b16 g16 | % 183
  cis4 r4 b16 a16 g8 ~ g16 a16 b16 g16 | % 184
  cis4 b16 a16 g8 cis4 b16 a16 g8 | % 185
  es'4 r4 c16 h16 a8 ~ a16 h16 c16 a16 | % 186
  es'4 r4 c16 h16 a8 ~ a16 h16 c16 a16 | % 187
  es'4 c16 h16 a8 es'4 c16 h16 a8 | % 188
  <eis gis>8 r8 r4 <d' fis>8 r8 r4 | % 189
  <eis, gis>8 r8 r4 <d' fis>8 r8 r4 | \barNumberCheck #190
  <f, as>4 <e g>4 <f as>4 <e g>4 | % 191
  <f as>4 <e g>4 <f as>4 <e g>4 | % 192
  s1 \bar "||"
  \time 2/4  r2 \bar "||"
  \time 3/4  r2. \bar "||"
  \time 2/4  r2 \bar "||"
  \time 3/4  r2. \bar "||"
  \numericTimeSignature\time 4/4  s1*11 \bar "||"
  \time 6/4 
  \key b \minor 
    \grace { s8 }
    s1.*7 \bar "||"
  \numericTimeSignature\time 4/4  s1*11 | % 226
  <des' f>2 <des fes>2 | % 227
  <b des>2 <ges a>2 | % 228
  <f b>2 <f as>2 | % 229
  <d f>2 <b des>2 | \barNumberCheck #230
  <a cis>2 <ges c>2 | % 231
  a4 ~ a8 r8 r2 \bar "||"
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    s1.*8 | \barNumberCheck #240
    c'8 es8 f8 ~ f8 es8 ges8 ~ ges8 f8 es8 ~ es8 des8 c8 | % 241
    s1.*7 \bar "||"
  }
  s1 | % 249
  r2 r4 fis,4 | \barNumberCheck #250
  r4 e4 r4 e4 | % 251
  r4 e4 r4 f4 | % 252
  r4 fis4 r4 fis4 | % 253
  r4 ges4 r4 ges4 | % 254
  r4 ges4 r2 \bar "||"
  \time 2/4  r2 \bar "||"
  \numericTimeSignature\time 4/4  s1*7 | % 263
  r4 <es ges>4 r4 <d f>4 | % 264
  r4 <des e>2 <des e>4 | % 265
  r4 <des f>2 <des f>4 ~ ~ | % 266
  <des f>1 \bar "|."
}

LH_One = \relative {
  b,4 ~ b8. c16 des2 | % 2
  b4 ~ b8. c16 c2 | % 3
  b4 ~ b8 c16 des16 des4 ~ des8 c16 b16 | % 4
  b4 ~ b16 as16 b16 c16 c2 | % 5
  des4 ~ des8. es16 f2 | % 6
  ges4 ~ ges8. as16 a2 | % 7
  b4 ~ b8 c16 des16 des4 c4 | % 8
  c4 ~ c8 b8 b4 ~ b8 r8 | % 9
  b1 ~ | \barNumberCheck #10
  b2. ~ b8 a8 | % 11
  a8 b8 b2. ~ | % 12
  b1 | % 13
  ces2. ~ ces8 des8 | % 14
  eses2 es2 | % 15
  <e g>2 <es ges>2 | % 16
  es2 ~ es4 ~ es8 r8 | % 17
  f,,4 ~ f8. g16 as4 ~ as8. g16 | % 18
  ges4 ~ ges8 as16 b16 c2 | % 19
  cis4 ~ cis8. dis16 e4 ~ e8. dis16 | \barNumberCheck #20
  d4 ~ d8 e16 fis16 gis2 | % 21
  a4 ~ a8. gis16 fis2 | % 22
  ges4 ~ ges8. f16 es2 | % 23
  es4 ~ es8. ges16 ges8 f4 es8 | % 24
  des4 c8 b8 b4 c8 ~ c16 r16 | % 25
  f2 des2 ~ | % 26
  des2 ges2 | % 27
  <cis,, cis'>4 ~ ~ <cis cis'>8. <dis dis'>16 <e e'>4 ~ ~ <e e'>8.
  <dis dis'>16 | % 28
  <d d'>4 ~ ~ <d d'>8 <e e'>16 <fis fis'>16 <gis gis'>2 | % 29
  <a a'>4 ~ ~ <a a'>8. <gis gis'>16 <fis fis'>2 | \barNumberCheck #30
  <ges ges'>4 ~ ~ <ges ges'>8. <f f'>16 <es es'>2 | % 31
  <es es'>4 ~ ~ <es es'>8. <ges ges'>16 <ges ges'>8 <f f'>4 <es es'>8
  | % 32
  <des des'>4 <c c'>8 <b b'>8 <b b'>4 ~ ~ <b b'>8 <a a'>8 | % 33
  d''1 ~ | % 34
  d4 es8. f16 ges4 c,4 ~ | % 35
  c4 des4 as4 a4 | % 36
  b2. a4 | % 37
  b2. a4 | % 38
  b4 a4 b4 a4 | % 39
  <es b'>2 ~ <es a>2 | \barNumberCheck #40
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    r4. f'4. b,4. des4 des8 | % 41
    r4. f4. b,4. des4 des8 | % 42
    r4. ges4. b,4. des4 des8 | % 43
    r4. ges4. b,4. des4 des8 | % 44
    r4. ges4. c,4. es4 es8 | % 45
    r4. as4. d,4. f4 f8 | % 46
    r4. b4. es,4. ges4 ges8 | % 47
    c,4. b4. a2. | % 48
    b8 c8 des8 ~ des8 c8 b8 ~ b8 c8 des8 ~ des8 ces8 heses8 | % 49
    <des, as'>1. | \barNumberCheck #50
    <f, c' as'>2. <as as'>4. ~ ~ <as as'>4 <f f'>8 | % 51
    <c' es,>2. <as as'>4. ~ ~ <as as'>4 <es es'>8 | % 52
    <eses c'>2. <as as'>4. ~ ~ <as as'>4 <es es'>8 | % 53
    <des ces'>2. <ces' f>2. | % 54
    des'4. des4. ges,4. b4 b8 | % 55
    des4. fes4. heses,4. des4 des8 | % 56
  }
  <b,, b'>4 ~ ~ <b b'>8. <c c'>16 <des
  des'>2 | % 57
  <b b'>4 ~ ~ <b b'>8. <c c'>16 <des des'>2 | % 58
  <b b'>4 ~ ~ <b b'>8 <c c'>16 <des des'>16 <des des'>4 ~ ~ <des des'>8
  <c c'>16 <b b'>16 | % 59
  <b b'>4 ~ ~ <b b'>16 <as as'>16 <b b'>16 <c c'>16 <c c'>2 |
  \barNumberCheck #60
  <des des'>4 ~ ~ <des des'>8. <es es'>16 <f f'>2 | % 61
  <ges ges'>4 ~ ~ <ges ges'>8. <as as'>16 <a a'>2 | % 62
  <b b'>4 ~ ~ <b b'>8 <c c'>16 <des des'>16 <des des'>4 <c c'>4 | % 63
  des'2 ~ des4 ~ des8 r8 | % 64
  f,2 des2 ~ | % 65
  des2 ges2 | % 66
  <cis,, cis'>4 ~ ~ <cis cis'>8. <dis dis'>16 <e e'>4 ~ ~ <e e'>8.
  <dis dis'>16 | % 67
  <d d'>4 ~ ~ <d d'>8 <e e'>16 <fis fis'>16 <gis d' gis>2 | % 68
  <a a'>4 ~ ~ <a a'>8. <gis gis'>16 <fis fis'>2 | % 69
  <ges ges'>4 ~ ~ <ges ges'>8. <f f'>16 <es es'>2 | \barNumberCheck
  #70
  <es es'>4 ~ ~ <es es'>8. <ges ges'>16 <ges ges'>8 <f f'>4 <es es'>8
  | % 71
  <des des'>4 <c c'>8 <b b'>8 <b b'>4 <a a'>4 | % 72
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    <as as'>1. | % 73
    <ges' es' b'>2. <ges ges'>4. ~ ~ <ges ges'>4 <ges, ges'>8 | % 74
    <fis' cis' a'>2. <a a'>4. ~ ~ <a a'>4 <a, a'>8 | % 75
    <f' d' a'>2. <f f'>4. ~ ~ <f f'>4 <f, f'>8 | % 76
    <f' c' as'>2. <cis' e gis>2. | % 77
  }
  <gis dis' h'>8 <gis, gis'>4 <ais
  ais'>8 <h h'>4 <dis dis'>8. <dis dis'>16 | % 78
  <e e'>2. <es' a>4 | % 79
  <e ais>8 <fis, fis'>4 <gis gis'>8 <ais ais'>4 <cis cis'>8. <cis
  cis'>16 | \barNumberCheck #80
  \numericTimeSignature\time 4/4  <e, e'>8 <e e'>8 <e e'>4 ~ ~ <e e'>8
  <e e'>8 <es es'>8 <es es'>8 \bar "||"
  <g g'>4 <d d'>4 <c c'>2 | % 82
  <g' g'>4 <d d'>4 <cis cis'>2 | % 83
  <g' g'>4 <d d'>4 <c c'>2 | % 84
  <g' g'>4 <d d'>4 <es es'>2 | % 85
  <d d'>4 <g g'>4 <c, c'>2 | % 86
  <ces ces'>4 <ges' ges'>4 <b, b'>2 | % 87
  <a a'>4 <e' e'>4 <es es'>4. <d d'>8 | % 88
  <es es'>4 <c c'>4 <g' g'>4 ~ ~ <g g'>8 r8 | % 89
  <f f'>4 <d d'>8 <c c'>8 <h h'>4 <b b'>4 | \barNumberCheck #90
  <a a'>4 <g g'>4 <ges ges'>4 <f f'>4 | % 91
  <b b'>4 <as as'>4 <g g'>4 <ges ges'>4 | % 92
  <f f'>4 <es es'>4 <d d'>4 <des' des'>8. <ces ces'>16 | % 93
  <b b'>4 ges''4 b4 des4 | % 94
  <b d>4. <c es>8 <d f>8 f4 as8 | % 95
  g4 ~ <es g>4 <d ges>4 des8. ces16 | % 96
  b4 des,8. es16 fes4 <es, es'>4 | % 97
  <ges, ges'>4 <g g'>4 <b b'>4 <h h'>4 | % 98
  <des des'>2 <c c'>4 <h h'>4 | % 99
  <b b'>4 <a a'>4 <as as'>4 <g g'>8 ~ ~ <g g'>16 r16 \bar "||"
  \key f \minor f''4 ~ f8. g16 as2 | % 101
  f4 ~ f8. g16 g2 | % 102
  f4 ~ f8 g16 as16 as4 ~ as8 g16 f16 | % 103
  f4 ~ f16 es16 f16 g16 g2 | % 104
  as4 ~ as8. b16 c2 | % 105
  cis4 ~ cis8. dis16 e2 | % 106
  h4. f8 e4 g4 | % 107
  des'2 c4 ~ c8 ~ c16 r16 | % 108
  c,4 ~ c8. d16 es4 ~ es8. d16 | % 109
  des4 ~ des8 es16 f16 g2 | \barNumberCheck #110
  as4 ~ as8. b16 h4 ~ h8. ais16 | % 111
  a4 ~ a8 h16 cis16 dis2 | % 112
  e4 ~ e8. dis16 dis4 cis4 | % 113
  e4 ~ e8. d16 d4 cis4 | % 114
  d4 ~ d8. c16 c4 b8 a8 | % 115
  a8 g4 f8 f4 e4 | % 116
  b'4 ~ b8. a16 a8 g4 f16 d16 | % 117
  b'4 ~ b8. a16 a8 g4 f16 d16 | % 118
  b'4 a2 g4 ~ | % 119
  g4 f8 d8 b4 a4 ~ | \barNumberCheck #120
  a4 g2 f4 ~ | % 121
  f4 d4 b2 ~ | % 122
  b4 a2 ~ a8 r8 | % 123
  <d a' d>1 \bar "||"
  \key d \minor <d a' d>4 r4 r4 <d a' d>4 | % 125
  <g, g'>4 r4 r4 <g' g'>4 | % 126
  <cis, cis'>4 r4 r4 <a' a'>4 | % 127
  <d, d'>4 <d' d'>4 <c c'>4 r4 | % 128
  r4 <c c'>4 <h h'>4 r4 | % 129
  r4 <f f'>4 <d d'>4 r4 | \barNumberCheck #130
  r4 <c c'>4 r4 <d d'>4 | % 131
  r4 <e e'>4 r4 <a a'>4 | % 132
  r4 d4 <h, h'>2 ~ ~ | % 133
  <h h'>4 r4 <d d'>4 r4 | % 134
  <c c'>4 <gis' gis'>4 <a a'>4 <g g'>4 | % 135
  <fis fis'>4 <d d'>4 <g g'>4 r4 | % 136
  <f f'>4 r4 <e e'>4 r4 | % 137
  r4 <g g'>4 <f f'>4 <d d'>4 | % 138
  <b' b'>4 <d d'>2 <cis cis'>4 | % 139
  <d d'>4 r4 r4 <d, d'>8 <e e'>8 | \barNumberCheck #140
  <f f'>4 <b b'>8 <a a'>8 <g g'>8 <f f'>8 <e e'>8 <d d'>8 | % 141
  <cis cis'>4 r4 r4 <cis cis'>4 | % 142
  <d d'>1 ~ ~ | % 143
  <d d'>1 | % 144
  <d d'>4 r4 r4 <d' d'>4 | % 145
  <c c'>4 <gis gis'>4 <a a'>4 r4 | % 146
  r4 <d, d'>4 <es es'>4 ~ ~ <es es'>8 <b b'>8 | % 147
  <es es'>4 r4 r4 <e e'>4 | % 148
  <f f'>2. <g g'>4 | % 149
  <a a'>2. <a, a'>4 | \barNumberCheck #150
  <c c'>1 | % 151
  <b b'>1 | % 152
  <b' b'>2. <e, e'>4 | % 153
  <a a'>2. <a, a'>4 | % 154
  <d d'>2. <d, d'>4 | % 155
  <g g'>2. <a a'>4 | % 156
  <b b'>2. <d d'>4 | % 157
  <c c'>2 r4 <c c'>4 | % 158
  <f f'>2 r4 <c' c'>4 | % 159
  <d, d'>2 r4 <a' a'>4 | \barNumberCheck #160
  <g g'>4 <f f'>4 <e e'>2 ~ ~ | % 161
  <e e'>4 <e e'>4 <e e'>8 <d d'>8 <cis cis'>4 ~ ~ | % 162
  <cis cis'>8 <d d'>8 <e e'>8 <cis cis'>8 <f f'>2 ~ ~ | % 163
  <f f'>4 <fis fis'>4 <g g'>4. <a a'>8 | % 164
  <b b'>4 <b b'>8 <c c'>8 <b b'>4 <a a'>4 | % 165
  <g g'>4 r8 <g g'>8 <f f'>4 r8 <f f'>8 | % 166
  <e e'>4 r8 <e e'>8 <es es'>4 r8 <es es'>8 | % 167
  <d d'>4 r4 r4 <fis fis'>4 | % 168
  <g g'>4 r4 r4 <d d'>4 | % 169
  <es es'>4 <b' b'>4 <g g'>4 <f f'>8 <e e'>8 | \barNumberCheck #170
  <dis dis'>4 r4 <e e'>4 <f f'>4 | % 171
  <ges ges'>4 <des' des'>4 <b b'>4 <as as'>8 <g g'>8 | % 172
  <fis fis'>4 r4 <g g'>4 <gis gis'>4 | % 173
  <a a'>4 <e' e'>4 <cis cis'>4 <h h'>8 <ais ais'>8 | % 174
  <a a'>4 <e e'>4 <cis cis'>4 <h h'>8 <a a'>8 | % 175
  <gis gis'>4 <gis' gis'>4 <e e'>4 <dis dis'>8 <cis cis'>8 | % 176
  <his his'>4 <a' a'>4 <fis fis'>4 <e e'>8 <dis dis'>8 | % 177
  <d d'>4 <d' d'>4 <h h'>4 <a a'>8 <gis gis'>8 | % 178
  <g g'>4 <eis' eis'>4 <cis cis'>4 <h h'>8 <a a'>8 | % 179
  <g g'>4 <eis' eis'>4 <cis cis'>4 <h h'>8 <a a'>8 | \barNumberCheck
  #180
  <g g'>4 <eis' eis'>4 <cis cis'>4 <h h'>8 <a a'>8 | % 181
  <g g'>4 <eis eis'>4 <cis cis'>4 <a a'>8 <g g'>8 | % 182
  \key fis \minor <fis'' a cis>2 <e g b d>2 | % 183
  <fis a cis>2 <e g b d>2 | % 184
  <fis a cis>4 <e g b d>4 <fis a cis>4 <e g b d>4 | % 185
  <gis h dis>2 <fis a c e>2 | % 186
  <gis h dis>2 <fis a c e>2 | % 187
  <gis h dis>4 <fis a c e>4 <gis h dis>4 <fis a c e>4 | % 188
  <cis, cis'>4 <c c'>4 <h h'>4 <his his'>4 | % 189
  <cis cis'>4 <c c'>4 <h h'>4 <c c'>4 | \barNumberCheck #190
  as''8. a16 b8. h16 as8. a16 b8. h16 | % 191
  as8. a16 b8. h16 as8. a16 b8. h16 | % 192
  <es,, es'>8 <d d'>8 <c c'>4 ~ ~ <c c'>8 <d d'>8 <es es'>8 <c c'>8
  \bar "||"
  \time 2/4  <g' g'>4 <es es'>8 <d d'>8 \bar "||"
  \time 3/4  <c c'>4 ~ ~ <c c'>8 <d d'>8 <es es'>8 <c c'>8 \bar "||"
  \time 2/4  <g' g'>4 <es es'>8 <d d'>8 \bar "||"
  \time 3/4  <c c'>4 ~ ~ <c c'>8 <d d'>8 <es es'>8 <c c'>8 \bar "||"
  \numericTimeSignature\time 4/4  <a'' cis e>4 r4 <a,, a'>4. <a' a'>8
  | % 198
  <g g'>4 <g, g'>2 ~ ~ <g g'>8 <g' g'>8 | % 199
  <fis fis'>2 <e e'>2 | \barNumberCheck #200
  r4 r8 g'8 ~ g8 a8 h8 g8 | % 201
  cis4 ~ cis8 r8 r2 | % 202
  <fis,, fis'>2 <e e'>2 | % 203
  r4 r8 g'8 ~ g8 a8 h8 g8 | % 204
  cis4 ~ cis8 r8 r2 | % 205
  r2 r4 <ges, ges'>4 ~ ~ | % 206
  <ges ges'>4 <as as'>4 <b b'>4 <ges ges'>4 | % 207
  <c c'>2 <ges ges'>4. <b b'>8 \bar "||"
  \time 6/4
  \key b \minor
  \grace { <b, b'>8 ( } b''2 ) ~ \times 2/3
  {
    b4 c8
  }
  \grace { ges,8 ( } des''2. ) | % 209
  \grace { <b,, b'>8 ( } b''2 ) ~ \times 2/3 {
    b4 c8
  }
  \grace { <ges, e'>8 ( } c'2. ) | \barNumberCheck #210
  \grace { <b,, b'>8 ( } b''2 ) ~ \once \omit TupletBracket
  \times 2/3  {
    b8 c8 des8
  }
  \grace { ges,,8 ( } des''2 ) ~ \once \omit TupletBracket
  \times 2/3  {
    des8 c8 b8
  }
  | % 211
  \grace { <b,, b'>8 ( } b''2 ) \once \omit TupletBracket
  \times 2/3  {
    as8 b8 c8
  }
  \grace { <ges, e'>8 ( } c'2. ) | % 212
  <des,, des'>2 ~ ~ <des des'>8 <es es'>8 <fes fes'>4 ~ ~ <fes fes'>8
  <es es'>8 <des des'>8 <fes fes'>8 | % 213
  <b, b'>2 <h h'>8 <cis cis'>8 <d d'>4 ~ ~ <d d'>8 <cis cis'>8 <h h'>8
  <d d'>8 | % 214
  <gis, gis'>2 <a a'>4 ~ ~ <a a'>8. <h h'>16 <c c'>2 \bar "||"
  \numericTimeSignature\time 4/4  <c c'>4 ~ ~ <c c'>8. <d d'>16 <es
  es'>2 | % 216
  <es es'>4 ~ ~ <es es'>8. <f f'>16 <ges ges'>4 ~ ~ <ges ges'>8. <es
  es'>16 | % 217
  <a es' f a>2. <a es' f a>4 | % 218
  <h, dis fis h>2. <h dis fis h>4 | % 219
  <a' es' f a>2. <a es' f a>4 | \barNumberCheck #220
  <h, dis fis h>2. <h dis fis h>4 | % 221
  <a' es' f a>2. <a es' f a>4 | % 222
  <h, dis fis h>2. <h' dis fis h>4 | % 223
  <h, dis eis h'>2. <h' dis eis h'>4 | % 224
  <b des f b>1 ~ ~ ~ ~ | % 225
  <b des f b>2. ~ ~ ~ ~ <b des f b>8 r8 | % 226
  <b, b'>4 ~ ~ <b b'>8. <c c'>16 <des des'>2 | % 227
  <b b'>4 ~ ~ <b b'>8. <c c'>16 <c c'>2 | % 228
  <b b'>4 ~ ~ <b b'>8 <c c'>16 <des des'>16 <des des'>2 | % 229
  <d d'>4 ~ ~ <d d'>8 <e e'>16 <f f'>16 <f f'>2 | \barNumberCheck #230
  <fis fis'>4 ~ ~ <fis fis'>8 <gis gis'>16 <a a'>16 <a a'>2 | % 231
  ges'4 ~ ges8 r8 <c, es>2 \bar "||"
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    r4 r8 f'4. b,4. des4 des8 | % 233
    r4 r8 f4. b,4. des4 des8 | % 234
    r4 r8 f4. b,4. des4 des8 | % 235
    r4 r8 ges4. b,4. des4 des8 | % 236
    r4 r8 ges4. b,4. des4 des8 | % 237
    r4 r8 ges4. c,4. es4 es8 | % 238
    r4 r8 as4. d,4. f4 f8 | % 239
    r4 r8 b4. es,4. ges4 ges8 | \barNumberCheck #240
    c,4. b4. a2. | % 241
    b8 c8 des8 ~ des8 c8 b8 ~ b8 c8 des8 ~ des8 ces8 heses8 | % 242
    <des, as'>2. <es a>2. | % 243
    r4 r8 f'4. b,4. des4 des8 | % 244
    r4 r8 f4. b,4. des4 des8 | % 245
    r4 r8 f4. b,4. des4 des8 | % 246
    r4 r8 f4. b,4. des4 des8 | % 247
    des4. ~ des8 r8 r8 r4. r4. \bar "||"
  }
  r4 <f, as c>4 r4 <fes as c>4 | % 249
  r4 <es as c>4 r4 <d as' c>4 | \barNumberCheck #250
  r4 <cis gis'>4 r4 <his gis'>4 | % 251
  r4 <h gis'>4 r4 <b d gis>4 | % 252
  r4 <a cis a'>4 r4 <a d a'>4 | % 253
  r4 <b d b'>4 r4 <ces es ces'>4 | % 254
  r4 <c es b'>4 r2 \bar "||"
  \time 2/4  R2 \bar "||"
  \numericTimeSignature\time 4/4  r4 <ges, ges'>2 <f f'>8 r8 | % 257
  <b b'>4 ~ ~ <b b'>8. <c c'>16 <des des'>2 | % 258
  <b b'>4 ~ ~ <b b'>8. <c c'>16 <c c'>2 | % 259
  <b b'>4 ~ ~ <b b'>8 <c c'>16 <des des'>16 <des des'>4 ~ ~ <des des'>8
  <c c'>16 <b b'>16 | \barNumberCheck #260
  <b b'>4 ~ ~ <b b'>16 <as as'>16 <b b'>16 <c c'>16 <c c'>2 | % 261
  <des des'>4 ~ ~ <des des'>8. <es es'>16 <f f'>2 | % 262
  <fis fis'>4 ~ ~ <fis fis'>8. <gis gis'>16 <a a'>2 | % 263
  r4 <as as'>4 r4 <g g'>4 | % 264
  r4 <ges ges'>2 <ges ges'>4 | % 265
  r4 <b f'>2 <b f'>4 ~ ~ | % 266
  <b f'>1 \bar "|."
}

LH_Two = \relative {
  b,,4 ~ b8. c16 des2 | % 2
  b4 ~ b8. c16 c2  | % 3
  b4 ~ b8 c16 des16 des4 ~ des8 c16 b16 | % 4
  b4 ~ b16 as16 b16 c16 c2 | % 5
  des4 ~ des8. es16 f2 | % 6
  ges4 ~ ges8. as16 a2 | % 7
  b4 ~ b8 c16 des16 des4 c4 | % 8
  c4 ~ c8 b8 b4 ~ b8 r8 | % 9
  b4 ~ b8. c16 des2 | \barNumberCheck #10
  b4 ~ b8. c16 c2 | % 11
  b4 ~ b8 c16 des16 des4 ~ des8 c16 b16 | % 12
  b4 ~ b16 as16 b16 c16 c2 | % 13
  des4 ~ des8. es16 f2 | % 14
  ges4 ~ ges8. as16 a2 | % 15
  b4 ~ b8 c16 des16 des4 c4 | % 16
  c4 ~ c8 b8 b4 ~ b8 r8 | % 17
  f,,4 ~ f8. g16 as4 ~ as8. g16 | % 18
  ges4 ~ ges8 as16 b16 c2 | % 19
  cis4 ~ cis8. dis16 e4 ~ e8. dis16 | \barNumberCheck #20
  d4 ~ d8 e16 fis16 gis2 | % 21
  a4 ~ a8. gis16 fis2 | % 22
  ges4 ~ ges8. f16 es2 | % 23
  es4 ~ es8. ges16 ges8 f4 es8 | % 24
  des4 c8 b8 b4 c8 ~ c16 r16 | % 25
  f4 ~ f8. g16 as4 ~ as8. g16 | % 26
  ges4 ~ ges8 as16 b16 c2 | % 27
  s1 | % 28
  s2 d2 | % 29
  cis2 s2 | \barNumberCheck #30
  s1*3 | % 33
  \grace { <as, as'>8 } as''2. g4 | % 34
  ges1 | % 35
  f2. fes4 | % 36
  es1 | % 37
  es1 | % 38
  es1 | % 39
  r4 r8 f,8 ~ f4. f8 | \barNumberCheck #40
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    <b f'>1. | % 41
    <b f'>1. | % 42
    <b ges'>1. | % 43
    <b ges'>1. | % 44
    <as ges'>1. | % 45
    <as f'>1. | % 46
    <ges es'>1. | % 47
    <f es'>1. | % 48
    <ges des'>1. | % 49
    s1.*5 | % 54
    <b ges'>1. | % 55
    <heses fes'>2. <ges des'>2. | % 56
  }
  s1*7 | % 63
  c'4 ~ c8 b8 b4 ~ b8 r8 | % 64
  f,4 ~ f8. g16 as4 ~ as8. g16 | % 65
  ges4 ~ ges8 as16 b16 c2 | % 66
  s1*2 |
  cis2 s2 |
  s1*3 | % 72
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    s1.*8 | \barNumberCheck #80
  } s1 \bar "||"
  s1*12 | % 93
  r4 des4 ~ des8 ges4 as8 | % 94
  s1*6 \bar "||"
  \key f \minor <f, c'>2 <h f'>2 | % 101
  <f as c>2 <b des>2 | % 102
  <f as c>2 <b des>2 | % 103
  <f as c>2 <des' f>2 | % 104
  <c f>2 <b e>2 | % 105
  <a e'>2 <gis e'>2 | % 106
  g2 c2 | % 107
  des4 b4 f'4 ~ f8 ~ f16 r16 | % 108
  es,4 b'4 a4 as4 | % 109
  g4 f4 fes4 es4 | \barNumberCheck #110
  as4 ges'4 f4 e4 | % 111
  dis4 cis4 c4 h4 | % 112
  b4 a4 cis4 e4 | % 113
  b4 a4 e'4 g4 | % 114
  f4 e4 d2 | % 115
  g,1 | % 116
  g4 f4 e4 f4 | % 117
  g4 f4 e4 f4 | % 118
  g2 f2 | % 119
  e4 f4 r2 | \barNumberCheck #120
  s1*4 \bar "||"
  \key d \minor s1*58 | % 182
  \key fis \minor s1*8 | \barNumberCheck #190
  des'4 e4 des4 e4 | % 191
  des4 e4 des4 e4 | % 192
  s1 \bar "||"
  \time 2/4  s2 \bar "||"
  \time 3/4  s2. \bar "||"
  \time 2/4  s2 \bar "||"
  \time 3/4  s2. \bar "||"
  \numericTimeSignature\time 4/4  s1*3 | \barNumberCheck #200
  <dis, dis'>2 <dis, dis'>2 | % 201
  r4 <a' a'>2 <g' g'>4 | % 202
  s1 | % 203
  <dis dis'>2 <dis, dis'>2 | % 204
  r4 <a' a'>4 <gis gis'>4 <gis' gis'>4 | % 205
  <fis fis'>4 <fis, fis'>4 <es es'>2 ~ ~ | % 206
  <es es'>1 ~ ~ | % 207
  <es es'>4 <es es'>2 <es es'>4 \bar "||"
  \time 6/4
  \key b \minor 
  \grace { s8 } 
  s1.*7 \bar "||"
  \numericTimeSignature\time 4/4  s1*16 | % 231
  es''4. ( ges8 ) ges,4. ( f8 ) \bar "||"
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    <b f'>1. | % 233
    <b f'>1. | % 234
    <b f'>1. | % 235
    <b ges'>1. | % 236
    <b ges'>1. | % 237
    <as ges'>1. | % 238
    <as f'>1. | % 239
    <ges es'>1. | \barNumberCheck #240
    <f es'>1. | % 241
    <ges des'>1. | % 242
    r2. c4. ces4. | % 243
    <b f'>1. | % 244
    <b f'>1. | % 245
    <b f'>1. | % 246
    <b f'>1. | % 247
    <b f'>4. ~ ~ <b f'>8 r8 r8 r4. r4. \bar "||"
  }
  s1*7 \bar "||"
  \time 2/4  s2 \bar "||"
  \numericTimeSignature\time 4/4  s1*10 | % 266
  b,1 \bar "|."
}

Ped = \relative {

}

Layout = {


}

\score {
  <<
   \new ChoirStaff <<
      \new Staff { << \Global \Layout \new Voice = "soprano" { \Soprano } \SopranTwo >> }
      \new Lyrics \lyricsto "soprano" { \SopranoLyricsOne }

      \new Staff { << \Global \new Voice = "alto" { \Alto } \AltTwo >> }
      \new Lyrics \lyricsto "alto" { \AltoLyricsOne }

      \new Staff { << \Global \clef "treble_8" \new Voice = "tenor" { \Tenor } \TenorTwo >> }
      \new Lyrics \lyricsto "tenor" { \TenorLyricsOne }

      \new Staff { << \Global \clef "bass" \new Voice = "bass" { \Bass } \BassTwo >> }
      \new Lyrics \lyricsto "bass" { \BassLyricsOne }
    >> 
    \new PianoStaff <<
      \new Staff << \Global \RH_One \\ \RH_Two >>
      \new Staff << \Global \clef "bass" \LH_One \\ \LH_Two >>
    >>
    %  \new Staff << \Global \clef "bass" \Ped >>
  >>

  \layout {
  }
  % To create MIDI output, uncomment the following line:
  % \midi {}
}