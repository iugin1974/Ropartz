{
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
  s1*8
  \tempo "allargando"
  s1
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