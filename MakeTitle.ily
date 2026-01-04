\version "2.19.49"

title-size = 26
composer-size = 26
date-size = -5
opus-size = 12


\header {
  tagline = \markup {
    \pad-to-box #'(0 . 0) #'(0 . 3)
    {
      \with-url

      #"http://lilypond.org/"
      \line {

        %% 2014 = em dash.

        #(format #f "Engraved by E. Giovine using LilyPond ~a~awww.lilypond.org"
                 (lilypond-version)
                 (ly:wide-char->utf-8 #x2014)
                 )
      }
    }
  }
}

makeTitlePage = #(define-scheme-function (text) (list?)
                   #{

                     \markup \override #'(baseline-skip . 4) {
                       \center-column {
                         \combine \null \vspace #10
                         \line { \abs-fontsize #composer-size \smallCaps { #(car (cdr text)) }} %% composer
                         \fill-line { " " \postscript #"-60 0 moveto 120 0 rlineto stroke" " " }
                         \line { \fontsize #date-size #(car (cdr (cdr text))) } %% born - dead
                         \combine \null \vspace #14
                         \line { \abs-fontsize #title-size \smallCaps #(car text) } %% title
                         \combine \null \vspace #.5
                         \line { \abs-fontsize #opus-size #(car (cdr (cdr (cdr text)))) } %% opus
                         \combine \null \vspace #20
                         \line { \abs-fontsize #7 #(car (cdr (cdr (cdr (cdr text))))) } %% score
                         \line { \abs-fontsize #5 { Dauer ca. #(car (cdr (cdr (cdr (cdr (cdr text)))))) }} %% duration
                       }
                     }
                   #}
                   )
%% title = \makeTitlePage #'("Title"  "Composer" "Born-Dead" "Opus" "Score" "Duration")
%{
%% vertical space skip
#(define-markup-command (vspace layout props amount) (number?)
  "This produces a invisible object taking vertical space."
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))
%%
\bookpart {
\header {
	title=##f
	subtitle=##f
	composer =##f
	tagline = ##f
	} %header

\paper{
	oddFooterMarkup = \markup { \on-the-fly #first-page
		\fill-line { \fontsize #2 \override #'(baseline-skip . 3) {
						\column { "©2009 Martin Straeten"  "martin.straeten@gmx.de" \vspace #4 }
								{ "Creative Commons Attribution-ShareAlike 3.0" }}}}
	} %paper

%titling
\markup \override #'(baseline-skip . 4) \column {
  \fill-line { \column { \vspace #10
                         \fill-line { \abs-fontsize #26  \smallCaps "D i e t e r i c h   B u x t e h u d e" }
                         \fill-line { " " \postscript #"-60 0 moveto 120 0 rlineto stroke" " " }
                        }}
  \fill-line { \column { \vspace #8
                         \fill-line { \abs-fontsize #18  ""  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #26 \bold \smallCaps "Alles was ihr tut, das tut im Namen Jesu"  }
                         \vspace #1.5
                         \fill-line { \abs-fontsize #18 \italic "a9. C.A.T.B Con 5 Viole"  }
                         \vspace #2
                         \fill-line { \abs-fontsize #18 "BuxWV 4" }
                         \vspace #4
                         \fill-line { \abs-fontsize #14 \italic "based on the manuscript, Duben Collection" }
  						}}
}
}


%}

