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