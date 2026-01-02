\version "2.24.4"
\language "deutsch"
\include "Noten/Commons.ily"
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

Global = \include "Noten/Global.ily"
Soprano = \include "Noten/Sopran.ily"
SopranTwo = \include "Noten/SopranTwo.ily"
Alto = \include "Noten/Alt.ily"
AltTwo = \include "Noten/AltTwo.ily"
Tenor = \include "Noten/Tenor.ily"
TenorTwo = \include "Noten/TenorTwo.ily"
Bass = \include "Noten/Bass.ily"
BassTwo = \include "Noten/BassTwo.ily"

SopranoLyricsOneAbove = \include "Noten/TextSopranOneAbove.ily"
SopranoLyricsOne = \include "Noten/TextSopranOne.ily"
SopranoTwoLyrics = \include "Noten/TextSopranTwo.ily"
AltoLyricsOne = \include "Noten/TextAlt.ily"
TenorLyricsOne = \include "Noten/TextTenor.ily"
BassLyricsOne = \include "Noten/TextBass.ily"
SopranIPA = \include "Noten/TextSopranIPA.ily"
AltoIPA = \include "Noten/TextAltIPA.ily"
TenorIPA = \include "Noten/TextTenorIPA.ily"
BassIPA = \include "Noten/TextBassIPA.ily"

RH = \include "Noten/RH.ily"
LH = \include "Noten/LH.ily"
\score {
  <<
    \new ChoirStaff <<
      \new Lyrics = "above" { c4 }

      \new Staff {
        <<
          \Global \new Voice = "soprano" { \Soprano }
          \new Voice = "sopranoTwo" { \SopranTwo }
        >>
      }
      \context Lyrics = "above" \lyricsto "soprano" { \SopranoLyricsOneAbove }
      \context Lyrics = "below" \lyricsto "soprano" { \SopranoLyricsOne }
      \context Lyrics = "below2" \lyricsto "soprano" { \SopranIPA }
      \context Lyrics = "below" \lyricsto "sopranoTwo" { \SopranoTwoLyrics }

      \new Staff { << \Global \new Voice = "alto" { \Alto } \AltTwo >> }
      \new Lyrics \lyricsto "alto" { \AltoLyricsOne }
      \new Lyrics \lyricsto "alto" { \AltoIPA }


      \new Staff { << \Global \clef "treble_8" \new Voice = "tenor" { \Tenor } \TenorTwo >> }
      \new Lyrics \lyricsto "tenor" { \TenorLyricsOne }
      \new Lyrics \lyricsto "tenor" { \TenorIPA }

      \new Staff { << \Global \clef "bass" \new Voice = "bass" { \Bass } \BassTwo >> }
      \new Lyrics \lyricsto "bass" { \BassLyricsOne }
      \new Lyrics \lyricsto "bass" { \BassIPA }
    >>

    \new PianoStaff <<
      \new Staff <<
        \Global
        \RH
      >>
      \new Staff <<
        \Global
        \clef "bass"
        \LH
      >>
    >>
    %  \new Staff << \Global \clef "bass" \Ped >>
  >>
}