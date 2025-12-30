\version "2.24.4"
\language "deutsch"
#(set-global-staff-size 17)

\paper{
  top-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
  ragged-last-bottom=##f
}

dim = \markup {\italic{dim.}}
cresc = \markup {\italic{cresc.}}
piuF = \markup { \italic più \dynamic f }
menoF = \markup { \italic meno \dynamic f }

\header {
  title = "Titel"
  composer = "Komponist"
}

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
  \key b \minor
  \time 4/4
  \accidentalStyle modern
  \tempo "Poco lento"
  s1*39 
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
  f'4 as,8-\cresc b8 c4 c8 c8 |
  es4. as,8 as4 ges8 f8 |
  des'2 des4\< des4 |
  fes4\!\mf des8. ces16 heses4\> as8 ges8\! |
  f4 f8 r8 r2 |
  R1*7 |
  c'8\p c8 es8 des8 c4 c8 b8 |
  b4. ( as16 ges16 ) ges4 ges8 ges8 |
  fes8\< as4 des8\! des4. ges,8 |
  ges4.\> as8 ges4. ( f8\! ) |
  r4 des4-\cresc eses4 heses'8. as16 |
  ges4 ges8 b8 b2 ~ |
  b8 b8\mf ( as8 ) ges8 des'4 b4 ~ |
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
  r8 g4 a16 ( b16 ) b4. a16 g16 |
  d'2 cis4 cis8. cis16 |
  d4 b8 g8 ges4. ges'8 |
  ges4 ( ~ ges8. f16 ) es4 ~ es8 r8 |
  r8 g,4 a16 b16 b4 ( a8 ) r8 |
  a8 a4 g8 g4 ~ g8 r8 |
  r8 a8 a8 a8 d8 d8 d8. d16 |
  c4. ( b8 a4 ) ~ a8 r8 |
  b4 f8. b16 b4 \once \omit TupletBracket
  \times 2/3 {
    b8 b8 b8 } |
  as2 r8 as4\> as8\! |
  des8.-\menoF es16 des4 b4 ges'4 |
  f4 b,2 d4 |
  f8 ( es4 ) b8 b4 f4 |
  as8\< ( ges8 ) b8 ( des8\! ) des4 ~ des8 r16 des16\f |
  des4 c8 b8 as'4 g8. f16 |
  f4 ( e4 ~ e8 ) e8 f8-\dim des8 |
  c2 ~\> c8\!\< c8\! es8.\> c16\! |
  \key f \minor
  c4 ~ c8 r8 r2 |
  R1*23 |
  \bar "||"
  \key d \minor
  \time 2/2
  R1*7 |
  r2 r4 a4 |
  d2 r4 a'4 |
  h,2 r4 f'4 |
  e4 d4 c2 ~ |
  c4 c4 b8 a8 g4 ~ |
  g8 a8 b8 g8 cis2 |
  r4 cis4 d4. e8 |
  f4 f8 g8 f4 ( e4 ) |
  d2 ~ d4 r4 |
  r4 f,4 b4 g4 |
  e'2 r4 e4 |
  a,4 a4 a'4 r4 |
  r4 b,4 f'4 r4 |
  r4 f,4 d'4 r4 |
  r4 f4 e4 a,4 |
  fis'4 fis4 g4 r4 |
  r4 g4 b,4 b4 |
  a2 r4 d4 |
  d2. cis4 |
  d4 a4 h4 c4 |
  d4. d8 e4. f8 |
  g2 r4 g,4 |
  g4 f8 ( e8 ) f8 f8 es'4 |
  es4 d2 c4 |
  c4 ( b2 ) a4 |
  a4 ( g2 ) f8 g8 |
  f4 e2 r4 |
  r4 \tmpVoiceOne { c'4 des4 ( c4 ) |
                    r4 f4 g4 ( f4 ) |
                    r2 r4 g4 |
                    c,2 ~ c8 d8 e8 f8 |
                    g4 e4 e4 ( d4 ) ~ |
                    d8 } r8 r4 r2 |
  R1 |
  r4 g,4 d'2 |
  r4 g4 a,2 |
  r4 es'4 d4 c4 |
  b2 ~ b4 b4 |
  b8 a8 g4 ~ g8 a8 b8 g8 |
  cis2 ~ cis4 des4 |
  des8 c8 b4 ~ b8 c8 des8 b8 |
  e2 ~ e4 e4 |
  e8 dis8 cis4 ~ cis8 dis8 e8 cis8 |
  g'2. g4 |
  gis2. gis4 |
  a2 gis4 fis4 |
  fis2 eis2 |
  r4 r8 eis8 eis4 r8 eis8 |
  eis2 r4 h8 cis8 |
  h2 h4. eis8 |
  eis2 ~ eis4 r4 |
  \bar "||"
  \key fis \minor
  \time 4/4
  r4 r8 cis8 d8 r8 r8 d8 |
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
  R1*8 |
  \bar "||"
  \key b \minor
  \time 6/4
  r8 r16 b,16 b4 ~ b8 b8 des2 ~ des8 r8 |
  r8 b8 ~ b8 b8 \once \omit TupletBracket
  \times 2/3 {
    b8 b8 b8 } e2 ~ e8 r8 |
  r8 r16 b16 b4 ~ b8 b8 ges'2 ~ ges8 r8 |
  r4 des2 c2 ~ c8 r8 |
  f4 des4 ~ des8 des8 as2 \once \omit TupletBracket
  \times 2/3 {
    des8 des8 des8 } |
  es2 d8 d8 d4 h8 h8 h8 h8 |
  cis4 ~ cis8 r8 r8 c8 c4 a8 a8 c8 c16 a16 |
  \numericTimeSignature\time 4/4 g4 \once \omit TupletBracket
  \times 2/3 {
    g8 g8 g8 } c8 c8 es8. c16 |
  b8 b8 \once \omit TupletBracket
  \times 2/3 {
    b8 b8 b8 } es8 es8 b8 es8 | % 10
  f2. ~ f8 r8 |
  R1 |
  r2 r4 \tmpVoiceOne { f4 |
                       ges2. ges4 |
                       f2 r4 f4 |
                       ges2. ~ ges8 r8 |
                       f1 |
                       <f b>1 ~ ~ |
                       <f b>2 ~ ~ <f b>4 r4 } |
  R1*6 |
  \bar "||"
  R1*9 | % 10
  r4 des8 des8 es4 e4 |
  f1 ~ |
  f2. ~ f8 r8 |
  R1*4 |
  \bar "||"
  \time 4/4
  R1*7
  \bar "||"
  \time 2/4
  R2
  \bar "||"
  \time 4/4
  R1 |
  R1 |
  r4 ges4\p \< ges4 \! \> ( f8 \! ) r8 |
  R1 |
  r4 ges4\p \< ges4 \! \> ( f8 \! ) r8 |
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
  as4 d,4 r8 d4-\cresc b'8 |
  b4 b8. ( ces16 ) b4 ~ b8 r8 |
  a4\mf b8\< b8 h4 c8 c8\! |
  es4\> ( des2\! ) ~ des8 r8 |
  R1 |
  r8 f,4\p f8\< as8.\! as16\> f4\! |
  r8 f4\< f8 as8.\! as16\> f4\! |
  as8.-\cresc g16 f4 f4 c4 |
  ces4. ces8 ces8 ( des8 ) es8 f8 |
  ges8. ( as16 ) b4 ~ b8 r8\< ges4\! |
  fes4\mf heses8 fes8 des4\> des8. des16\! |
  b4 b8 r8 r2 |
  R1*7 |
  c'8\p c8 es8 des8 c4 c8 b8 |
  b4. ( as16 ges16 ) ges4 ges8 ges8 |
  fes8\< as4 des8\! des4. ges,8 |
  ges4.\> as8 ges4. ( f8\! ) |
  r4 des4-\cresc eses4 heses'8. as16 |
  ges4 ges8 b8 b2 ~ |
  b8 b8\mf ( as8 ) ges8 des'4 b4 ~ |
  b8 b4 c8 c4 ~ c8 r8 |
  R1 |
  r4 ges8.\f ( as16 ) b4 b4 |
  a4 a8. a16 a4 ~ a8 r8 |
  r4 a8 a8 a4 f8\> d8\! |
  c8 as'4\< as8\! gis8 gis4\> gis8\! |
  gis4 ( h,4 ) dis4 cis8\p ( h8 ) |
  cis8\< cis8 cis4\! ~ cis8 cis8\> his8 his8\! |
  cis2 ~ cis4 r4 R1 |
  \bar "||"
  \key g \minor
  g'4\ff g8. a16 b4 ~ b8 r8 |
  g4 g8. a16 a4 ~ a8 r8 |
  r8 g4 a16 ( b16 ) b4. a16 g16 |
  d'2 cis4 cis8. cis16 |
  d4 b8 g8 ges4. ges'8 |
  ges4 ( ~ ges8. f16 ) es4 ~ es8 r8 |
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
  des4 ges,2 ges8.\< ( f16\! ) |
  f4\f f8 b8 des8 des4 des8 |
  b4 b4- \dim b4 as4 |
  g4 ( ges8\> ) ges8 f4\! b4 |
  \key f \minor
  as4 ~ as8 r8 r2 |
  R1*23
  \bar "||"
  \key d \minor
  \time 2/2
  r4 d,4 a'2 |
  r4 d4 e,2 |
  r4 b'4 a4 g4 |
  f2 ~ f4 f4 |
  f8 e8 d4 ~ d8 e8 f8 d8 |
  gis2 r4 gis4 |
  a4. h8 c4 c8 d8 |
  c4 ( h4 ) a2 ~ |
  a8 r8 r4 r2 |
  R1*6 |
  r4 d,4 a'2 |
  r4 d4 e,2 |
  r4 b'4 a4 g4 |
  f2 ~ f4 f4 |
  f8 e8 d4 ~ d8 e8 f8 d8 |
  gis2 r4 gis4 |
  a4. h8 c4 c8 d8 |
  es4 ( a,4 ) g4 r4 |
  r4 g4 g4 g4 |
  g4 f8 ( e8 ) d4 b'4 |
  b4 ( a2 ) g4 |
  fis4 r4 r4 a4 |
  a4 g8 ( f8 ) g8 g8 f4 |
  e2. ( g4 ) |
  c,2 r4 f4 |
  fis2 r4 fis4 |
  g4 r4 r2 |
  R1 |
  r2 r4 c,4 |
  f2 r4 c'4 |
  d,2 r4 a'4 |
  g4 f4 e2 ~ |
  e4 e4 g8 a8 b4 ~ |
  b4 b4 a4 a4 |
  a2 ( g4 ) fis4 |
  g4 es'4 c4 c8 c8 |
  b4 b8 r8 r2 |
  r4 g4 g4 g4 |
  fis2 r4 a4 |
  g2 r4 fis4 |
  g4. g8 g4 g4 |
  b4. b8 b4 a4 |
  b4. b8 b4 b4 |
  des4. des8 des4 c4 |
  cis4. cis8 cis4 cis4 |
  e4. e8 e4 g,4 |
  gis2. gis4 |
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
  \time 4/4
  r4 r8 \tmpVoiceOne {
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
  R1*8 |
  \bar "||"
  \key b \minor
  \time 6/4
  r8 r16 b16 b4 ~ b8 b8 a2 ~ a8 r8 |
  r8 b8 ~ b8 b8 \once \omit TupletBracket \times 2/3 { b8 b8 b8 } a2 ~ a8 r8 |
  r8 r16 b16 b4 ~ b8 b8 a2 ~ a8 r8 |
  r4 b2 a2 ~ a8 r8 |
  as4 as4 ~ as8 as8 as2 \once \omit TupletBracket \times 2/3 { as8 as8 as8 } |
  g2 fis8 fis8 fis4 fis8 fis8 fis8 fis8 |
  eis4 ~ eis8 r8 r8 e8 e4 e8 e8 e8 e16 e16 |
  \numericTimeSignature\time 4/4 es4 \once \omit TupletBracket \times 2/3 { es8 es8 es8 } g8 g8 g8. g16 |
  ges8 ges8 \once \omit TupletBracket \times 2/3 { ges8 ges8 ges8 } ges8 ges8 ges8 b8 |
  c2. ~ c8 r8 |
  R1 |
  r2 r4 \tmpVoiceOne { c4 |
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
  b4 b8. ( ces16 ) b4 ~ b8 r8 |
  a4 b8 b8 h4 c8 c8 |
  es4 des2 des8 des8 |
  as2 a4. ( b8 |
  b2. ~ b8 ) r8 |
  R1*4 |
  \bar "||"
  \time 4/4
  R1*7
  \bar "||"
  \time 2/4
  R2
  \bar "||"
  \time 4/4
  R1 |
  r4 ges4\p \< ges4 \! \> ( f8 \! ) r8 |
  R1 |
  r4 ges4\p \< ges4 \! \> ( f8 \! ) r8 |
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
  ces4.-\cresc b8 as4 f'4 |
  f4 ( ges,4 ) r8 b8\mf c8\< des8 |
  es2.\! a,8\> a8\! |
  b2 ~ b4 r4 |
  R1 |
  r8 as4\p as8\< c8.\! c16\> c4\! |
  r8 as4\< c8 f8.\! f16\> c4\! |
  r4 c4-\cresc as4 f'4 |
  f4 ( as8. ) f16 es4 as,4 |
  des4 des8. des16 ges4 des8\< des8\! |
  des8\mf des4 des8 des8\> ces4 heses8\! |
  des4 des8 r8 r2 |
  R1*14 |
  r2 r4 ges4\f |
  ges8 ( f4 ) f8 f4\> es8. d16\! |
  d8. ( es16 es4 ) es4\< ges4\! |
  fis4 ( cis4 ) a8. ( h16 ) des4 |
  d4 d8. e16 f2 |
  f4 f4 e4 ~ e8 r8 |
  r4 dis4\> h4 gis4\! |
  ais2\< ais4\! gisis8\> gisis8\! |
  ais2 ~ ais4 r4 R1 |
  \bar "||"
  \key g \minor
  g4\ff g8. a16 b4 ~ b8 r8 |
  g4 g8. a16 a4 ~ a8 r8 |
  r8 g4 a16 ( b16 ) b4. a16 g16 |
  d'2 cis4 cis8. cis16 |
  d4 b8 g8 ges4. ges'8 |
  ges4 ( ~ ges8. f16 ) es4 ~ es8 r8 |
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
  b8\< c8 ) des8 es8\! f4 g8 as8 |
  g4. g8-\dim g4. f8 |
  e4 es4\> d4 es8 ( e8\! ) |
  \key f \minor
  f4 ~ f8 r8 r2 |
  R1*23 |
  \bar "||"
  \key d \minor
  \time 2/2
  R1*7 r2 r4 a,4 |
  d2 r4 a'4 |
  h,2 r4 f'4 |
  e4 d4 c2 ~ |
  c4 c4 b8 a8 g4 ~ |
  g8 a8 b8 g8 cis2 |
  r4 cis4 d4. e8 |
  f4 f8 g8 f4 ( e4 ) |
  d2 ~ d4 r4 |
  R1*2 |
  r2 r4 a4 |
  d2 r4 a'4 |
  h,2 r4 f'4 |
  e4 d4 c2 ~ |
  c4 c4 b8 a8 g4 ~ |
  g8 a8 b8 g8 cis2 |
  r4 cis4 d4. e8 |
  f4 f8 g8 f4 ( e4 ) |
  d4 r4 d2 |
  d4 r4 r4 d4 |
  d4 c8 ( h8 ) c4 b4 |
  a2 ~ a4 r4 |
  R1 |
  r4 g4 d'2 |
  r4 f4 b,2 |
  r4 d4 c4 b4 |
  a4 f'4 f2 |
  r4 d4 d2 |
  r4 d4 g,2 |
  r4 b4 b2 |
  r2 r4 \tmpVoiceOne { a4 |
                       f'4 es4 d4 c4 |
                       b4 g'4 fis4. g8 |
                       g4 ~ g8 } r8 r4 g,4 |
  d'2 r4 g4 |
  a,2 r4 es'4 |
  d4 c4 b2 ~ |
  b4 b4 b8 a8 g4 ~ |
  g8 a8 b8 g8 cis2 ~ |
  cis4 des4 des8 c8 b4 ~ |
  b8 c8 des8 b8 e2 ~ |
  e4 e4 e8 dis8 cis4 ~ |
  cis8 dis8 e8 cis8 g'4 g4 |
  gis2. gis4 |
  a2 gis4 fis4 |
  fis2 eis2 |
  r4 r8 eis8 eis4 r8 eis8 |
  eis2 r4 h8 cis8 |
  h2 h4. eis8 |
  eis2 ~ eis4 r4 |
  \bar "||"
  \key fis \minor
  \time 4/4
  r4 r8 cis8 d8 r8 r8 d8 |
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
  R1*8 |
  \bar "||"
  \key b \minor
  \time 6/4
  r8 r16 b16 b4 ~ b8 b8 des2 ~ des8 r8 |
  r8 b8 ~ b8 b8 \once \omit TupletBracket \times 2/3 { b8 b8 b8 } e2 ~ e8 r8 |
  r8 r16 b16 b4 ~ b8 b8 ges'2 ~ ges8 r8 |
  r4 f2 e2 ~ e8 r8 |
  f4 f4 fes4 fes2 \once \omit TupletBracket \times 2/3 { fes8 fes8 fes8 } |
  des2 d8 d8 d4 d8 d8 d8 d8 |
  h4 ~ h8 r8 r8 c8 c4 c8 c8 c8 c16 c16 |
  \numericTimeSignature\time 4/4 c4 \once \omit TupletBracket \times 2/3 { es8 es8 es8 } es8 es8 es8. es16 |
  es8 es8 \once \omit TupletBracket \times 2/3 { es8 es8 es8 } es8 es8 es8 ges8 |
  es2. ~ es8 r8 |
  R1 |
  r2 r4 \tmpVoiceOne { f4 |
                       ges2. ges4 |
                       f2 r4 f4 |
                       ges2. ~ ges8 r8 |
                       f1 |
                       f1 ~ |
                       f2 ~ f4 r4 } |
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
  \time 4/4
  R1*7
  \bar "||"
  \time 2/4
  R2
  \bar "||"
  \time 4/4
  R1 |
  R1 |
  r4 ges4\p \< ges4 \! \> ( f8 \! ) r8 |
  R1 |
  r4 ges4\p \< ges4 \! \> ( f8 \! ) r8 |
  R1*6
  \bar "|."
  
}

Bass = \relative {
  \autoBeamOff
  \compressEmptyMeasures
  R1*39 |
  R1*2 | % 3
  r2 r4 b4\p | % 4
  b4 ges8 f8 es4
  f8 ges8 | % 5
  as2 ges4 f8 es8 | % 6
  d4 f4 ~ f8 ces8
  b8 as8 | % 7
  ges8. ( b16 ) es4 ~ es8 r8 r4
  | % 8
  c'4\mf b4 a4 f4 | % 9
  ges2 ~ ges8 ges8-\dim ges8
  ges8 | % 10
  des4. ( es8 ) f8 f8
  f4 ~ | % 11
  f8 r8 f4 ~\p f8\< f8\!
  as8.\> f16\! | % 12
  es4 es4 ~\< es8 es8\!
  as8.\> es16\! | % 13
  eses4 eses8\< eses8 eses4\!
  as8\> eses8\! | % 14
  des4 ~ des8 r8 r4 ces'4 | % 15
  b4 ( ges4 ) des4 b4 | % 16
  heses4 heses8 des8 ges4
  ges,8 ges8 | % 17
  b4 b8 r8 r2 | % 18
  R1*17 | % 35
  r4 a'8. ( gis16 ) fis4.
  fis8 | % 36
  f4 f8. e16 d4 (
  a'4 | % 37
  as4 ) as8 f8 des4
  cis4 | % 38
  gis4. ( ais8 ) h4 dis4 | % 39
  e8 e8 e4 ~ e8
  e8 dis8 dis8 |
  e2 ~ e8 r4 r8
  R1 |
  \bar "||"
  \key g \minor
  g4 g8. a16 b4 ~ b8
  r8 | % 2
  g4 g8. a16 a4 ~ a8
  r8 | % 3
  r8 g4 a16 ( b16 ) b4.
  a16 g16 | % 4
  d'2 cis4 cis8. cis16 | % 5
  d4 b8 g8 ges4. ges8 | % 6
  ges4 ( ~ ges8. f16 ) es4 ~
  es8 r8 | % 7
  r8 g4 a16 b16 b4 (
  a8 ) r8 | % 8
  a8 a4 g8 g4 ~ g8 r8
  | % 9
  r8 a8 a8 a8 d8 d8
  d8. d16 | % 10
  c4. ( b8 a4 ) ~ a8 r8 | % 11
  b4 f8. b16 b4 \once \omit
  TupletBracket
  \times 2/3 {
    b8 b8 b8
  }
  | % 12
  as2 r2 | % 13
  b4 b8. as16 ges4 ~
  ges8 des8 | % 14
  d8. f16 as4 ~ as8 r8
  c8. b16 | % 15
  b8. as16 g4 ges4 des8.
  ( ces16 ) | % 16
  b2 ~ b8 r8 es4 | % 17
  ges4 ( g4 ) b4 h4 | % 18
  des4 des8. des16 c4
  h4 | % 19
  b8 b8 a4 as8 as8
  g4 | % 20
  \key f \minor
  f4 ~ f8 r8 r2 | % 21
  R1*23
  \bar "||"
  \key d \minor
  \time 2/2
  r4 d4 a'2 | % 25
  r4 d4 e,2 | % 26
  r4 b'4 a4 g4 | % 27
  f2 ~ f4 f4 | % 28
  f8 e8 d4 ~ d8 e8 f8 d8 | % 29
  gis2 r4 gis4 | % 30
  a4. h8 c4 c8 d8 | % 31
  c4 ( h4 ) a2 ~ | % 32
  a8 r8 g4 f2 | % 33
  r4 e4 d2 | % 34
  r4 gis4 a4 g4 | % 35
  fis4 d4 g4 r4 | % 36
  f4 g8 f8 es4 g4 | % 37
  g,4 g'4 f4 d4 | % 38
  b'8 b8 d,2 cis4 | % 39
  d2 r4 d8 ( e8 ) | % 40
  f4 b8 ( a8 ) g8 ( f8 ) e8 d8 | % 41
  cis1 | % 42
  d2 r2 | % 43
  R1*3 | % 46
  r4 d4 es4 ~ es8 b8 | % 47
  es2 r4 e4 | % 48
  f2. g4 | % 49
  a2. a,4 | % 50
  c2 ~ c4 r4 | % 51
  R1*2 | % 53
  r2 r4 c'4 | % 54
  c4 b8 ( a8 ) b4 a4 | % 55
  g2 ~ g4 r4 | % 56
  R1 | % 57
  r2 r4 c,4 | % 58
  f2 r4 c'4 | % 59
  d,2 r4 a'4 | % 60
  g4 f4 e2 ~ | % 61
  e4 e4 e8 d8 cis4 ~ | % 62
  cis8 d8 e8 cis8 f2 ~ | % 63
  f4 fis4 g4. a8 | % 64
  b4 b8 c8 b4 ( a4 ) | % 65
  g4 ~ g8 r8 r2 | % 66
  r4 \tmpVoiceOne {
    b4 c4 c4 | % 67
    d2
  } r4 fis,4 | % 68
  g2 r4 d4 | % 69
  es4 b'4 g4 f8 ( e8 ) | % 70
  dis4 r4 es4 ( f4 ) | % 71
  ges4 des'4 b4 as8 ( g8 ) | % 72
  fis4 r8 fis8 g4 gis4 | % 73
  a4 e'4 cis4 h8 ( ais8 ) | % 74
  a2. a4 | % 75
  gis2. gis4 | % 76
  a2 gis4 fis4 | % 77
  fis2 eis2 | % 78
  r4 r8 g8 g4 r8 g8 | % 79
  g2 r4 g8 g8 | % 80
  g2 g4. g8 | % 81
  g2 ~ g4 r4 |
  \bar "||"
  \key fis \minor
  \time 4/4
  \tmpVoiceOne {
    r4 r8 fis8 e8 r8 r8 e8 | % 2
    fis8 r8 r8 fis8 e8 r8 r8 e8 | % 3
    fis8 r8 r4 r2 | % 4
    r4 r8 gis8 fis8 r8 r8 fis8 | % 5
    gis8 r8 r8 gis8 fis8 r8 r8 fis8 | % 6
    gis8 r8 r4 r4 r8 his8 | % 7
    cis4 ( c4 ) h4 his4 | % 8
    cis4 ( c4 ) h4 c4 | % 9
    des4 r8 g,8 des'8 r8 r8 g,8 | % 10
    des'8 r8 r8 g,8 des'8 r8 r8 g,8 | % 11
    es'2 ~ es4 r4 | % 12
    \time 2/4  R2 | % 13
    \time 3/4  r8 c8 c8 c8 c8 c8 | % 14
    \time 2/4  es2 ~ | % 15
    \time 3/4  es4 es2 | % 16
    \numericTimeSignature\time 4/4  e1 ~ | % 17
    e2 ~ e4 r4
  } | % 18
  R1*8 |
  \bar "||"
  \key b \minor
  \time 6/4
  r8 r16 b16 b4 ~ b8 b8 ges2 ~ ges8 r8 | % 2
  r8 b8 ~ b8 b8 \once \omit TupletBracket
  \times 2/3  {
    b8 b8 b8
  }
  ges2 ~ ges8 r8 | % 3
  r8 r16 b16 b4 ~ b8 b8 ges2 ~ ges8 r8 | % 4
  r4 \tmpVoiceOne { b2 ges2 ~ ges8 r8 } | % 5
  r4 r4 des8 ( es8 ) fes4 ~ fes8 es8 des8 fes8 | % 6
  b,2 h8 cis8 d4 d8 cis8 h8 d8 | % 7
  gis,4 ~ gis8 r8 a4 ( ~ a8. h16 ) c2 | % 8
  \numericTimeSignature\time 4/4  c4 ( ~ c8. d16 ) es2 | % 9
  es4 ( ~ es8. f16 ) ges4 ~ ges8. es16 | % 10
  a2. ~ a8 r8 | % 11
  R1 | % 12
  r2 r4 \tmpVoiceOne {
    a4 | % 13
    a2. a4 | % 14
    a2 r4 a4 | % 15
    a2. ~ a8 r8 | % 16
    a1 | % 17
    b1 ~ | % 18
    b2 ~ b4 r4
  } |
  R1*6 |
  \bar "||"
  R1*3 | % 4
  r2 r4 b4 | % 5
  b4 ges8 f8 es4 f8 ges8 | % 6
  as2 ges4 f8 es8 | % 7
  d4 f4 ~ f8 ces8 b8 as8 | % 8
  ges8. ( b16 ) es4 ~ es8 r8 r4 | % 9
  c'4 b4 a4 f4 | % 10
  ges2 ~ ges8 ges8 ges8 ges8 | % 11
  des2 c4 ces4 | % 12
  b2. ~ b8 r8 |
  R1*4 |
  \bar "||"
  \time 4/4
  R1*7
  \bar "||"
  \time 2/4
  R2
  \bar "||"
  \time 4/4
  R1 |
  r4 ges'4\p \< ges4 \! \> ( f8 \! ) r8 | % 2
  R1 | % 3
  r4 ges4\p \< ges4 \! \> ( f8 \! ) r8 | % 4
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
  s1*11
  s2 s2.
  s2 s2.
  s1*10
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
  s1*8
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
  d4 c4 c4 b8 ( a8 ) | % 64
  d4 es4 d4. d8 | % 65
  es4 ~ es8 s8 s2 | % 66
  s1*16
  s1*11
  s2 s2.
  s2 s2.
  s1*10
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
  s1*8 |
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
  Ceux qui nous re -- tienn -- ent cap -- ti -- ves au pa -- ys dé -- tes -- té de Sen -- na -- ar, nous ont de -- man -- dé de chan -- ter les can -- ti -- ques de Si -- on.
  Com -- ment __ nos voix at -- tris -- tées pour -- raient el -- les chan -- ter sur la terre é -- tran -- gè -- re __ les saints can -- ti -- ques du Sei -- gneur! __
  %%
  Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __  Si ja -- mais je t'ou -- bli -- e, que ma droi -- te de -- meure i -- ner -- te! __ Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __
  Et que ma lan -- gue des -- sé -- chée reste at -- ta -- chée à mon pa -- lais, si ta dé -- li -- vrance at -- ten -- du -- e,
  Jé -- ru -- sa -- lem!  Jé -- ru -- sa -- lem! __  n'est pas le su -- jet é -- ter -- nel __ de mes es -- poirs et de mes joies! __
  %%
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  rap -- pel -- "le -" toi, rap -- pel -- "le -" toi,
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur!
  rap -- pel -- "le -" toi, rap -- pel -- "le -" toi la cru -- au -- té des fils d'É -- dom aux jours de no -- tre dé -- tres -- se!
  Aux jours de no -- tre dé -- tres -- se!
  Sei -- gneur! Sei -- gneur!
  Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur!
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom! __
  Sei -- gneur! Sei -- gneur! __
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom!
  aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur! Sei -- gneur!
  Sou -- "viens-" toi qu'ils cri -- aient:
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
  As -- sis sur les ber -- ges du fle -- uve dont les flots bai -- gnent Ba -- by -- lo -- ne, nous a -- vons pleu -- ré au sou -- ve -- nir de Si -- on, __ et dans no -- tre deuil, et dans no -- tre deuil nous a -- vons sus­ -- pen -- du aux bran -- ches des sau -- les nos luths, dé -- sor -- mais i -- nu -- ti -- les.
  Ceux qui nous re -- tienn -- ent cap -- ti -- ves au pa -- ys dé -- tes -- té de Sen -- na -- ar, nous ont de -- man -- dé de chan -- ter les can -- ti -- ques de Si -- on.
  Com -- ment __ nos voix at -- tris -- tées pour -- raient el -- les chan -- ter sur la terre é -- tran -- gè -- re __ les saints can -- ti -- ques du Sei -- gneur! __
  %%
  Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __  Si ja -- mais je t'ou -- bli -- e, que ma droi -- te de -- meure i -- ner -- te! __ Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __
  Et que ma lan -- gue des -- sé -- chée reste at -- ta -- chée à mon pa -- lais, si ta dé -- li -- vrance at -- ten -- du -- e,
  n'est pas le su -- jet é -- ter -- nel __ de mes es -- poirs et de mes joies! __
  %%
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se!
  rap -- pel -- "le -" toi leur cru -- au -- té, __
  Sei -- gneur! aux jours de no -- tre dé -- tres -- se!
  Sei -- gneur! Sei -- gneur!
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom __
  aux jours de no -- tre dé -- tres -- se!
  rap -- pel -- "le -" toi, Sei -- gneur! la cru -- au -- té des fils d'É -- dom, Sei -- gneur!
  Sei -- gneur!
  rap -- pel -- "le -" toi la cru -- au -- té des fils d'É -- dom aux jours de no -- tre dé -- tres -- se!
  Sei -- gneur! Sei -- gneur!
  Sou -- "viens-" toi qu'ils cri -- aient:
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
  Nous a -- vons pleu -- ré! __
  %%
  Hé -- las! __ Hé -- las! __
}

AltoTwoLyrics = \lyricmode {
  
}

TenorLyricsOne = \lyricmode {
  As -- sis sur les ber -- ges du fle -- uve dont les flots bai -- gnent Ba -- by -- lo -- ne, nous a -- vons pleu -- ré au sou -- ve -- nir de Si -- on, __ et dans no -- tre deuil, et dans no -- tre deuil nous a -- vons sus­ -- pen -- du aux bran -- ches des sau -- les nos luths, dé -- sor -- mais i -- nu -- ti -- les.
  Com -- ment __ nos voix at -- tris -- tées pour -- raient el -- les chan -- ter sur la terre é -- tran -- gère __ les saints can -- ti -- ques du Sei -- gneur! __
  %%
  Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __  Si ja -- mais je t'ou -- bli -- e, que ma droi -- te de -- meure i -- ner -- te! __ Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __
  Et que ma lan -- gue des -- sé -- chée reste at -- ta -- chée à mon pa -- lais,
  Jé -- ru -- sa -- lem! si ta dé -- li -- vrance at -- ten -- du -- e,
  n'est pas le su -- jet é -- ter -- nel __ de mes es -- poirs et de mes joies! __
  %%
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur!
  Sei -- gneur! __
  Sei -- gneur! rap -- pel -- "le -" toi
  Sei -- gneur! Sei -- gneur! Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur! rap -- pel -- "le -" toi! __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur! Sei -- gneur!
  Sou -- "viens-" toi qu'ils cri -- aient:
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
  As -- sis sur les ber -- ges du fle -- uve dont les flots bai -- gnent Ba -- by -- lo -- ne, nous a -- vons pleu -- ré au sou -- ve -- nir de Si -- on, __ et dans no -- tre deuil, et dans no -- tre deuil nous a -- vons sus­ -- pen -- du aux bran -- ches des sau -- les nos luths i -- nu -- ti -- les.
  Com -- ment __ nos voix at -- tris -- tées pour -- raient el -- les chan -- ter les saints can -- ti -- ques du Sei -- gneur! __
  %%
  Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __  Si ja -- mais je t'ou -- bli -- e, que ma droi -- te de -- meure i -- ner -- te! __ Jé -- ru -- sa -- lem! __  Jé -- ru -- sa -- lem! __
  Et que ma lan -- gue des -- sé -- chée reste at -- ta -- chée à mon pa -- lais,
  Jé -- ru -- sa -- lem, Jé -- ru -- sa -- lem! __ Si ta dé -- li -- vrance at -- ten -- due,
  n'est pas le su -- jet é -- ter -- nel __ de mes es -- poirs et de mes joies! __
  %%
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur! Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur!
  rap -- pel -- "le -" toi, Sei -- gneur!
  la cru -- au -- té __ des fils d'É -- dom aux __ jours de no -- tre dé -- tres -- se!
  
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
  rap -- pel -- "le -" toi __ la cru -- au -- té __ des fils d'É -- dom
  aux jours de no -- tre dé -- tres -- se! __
  Sei -- gneur! Sei -- gneur!
  Sou -- "viens-" toi qu'ils cri -- aient:
  %%
  A mort! A mort! A mort! A mort!
  A mort! A mort! A mort! A mort!
  A mort les en -- fants d'Is -- ra -- ël!
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
  
}

RH_Two = \relative {
  
}

LH_One = \relative {
  
}

LH_Two = \relative {
  
}

Ped = \relative {
  
}

Layout = {
  
  
}

%showLastLength = R1*15
% The score definition
%{
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
  %  \new PianoStaff <<
  %    \new Staff << \Global \RH_One \\ \RH_Two >>
  %    \new Staff << \Global \clef "bass" \LH_One \\ \LH_Two >>
  %  >>
  %  \new Staff << \Global \clef "bass" \Ped >>
  >>

  \layout {
  }
  % To create MIDI output, uncomment the following line:
  % \midi {}
}%}
\score {
  \new ChoirStaff <<
    \new Staff { << \Global \Layout \new Voice = "soprano" { \Soprano } \SopranTwo >> }
    
    \new Staff { << \Global \new Voice = "alto" { \Alto } \AltTwo >> }
    \new Staff { << \Global \clef "treble_8" \new Voice = "tenor" { \Tenor } \TenorTwo >> }
      \new Lyrics \lyricsto "tenor" { \TenorLyricsOne }
  >>
  }
