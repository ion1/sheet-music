Drums =
  \new DrumStaff {
    \tempo 4 = 160
    \time 4/4
    \drummode {
      \repeat volta 8 {
        <<
          \new DrumVoice { \voiceOne
            cymc4 hh hh hh | hh hh hh hh |
          }
          \new DrumVoice { \voiceTwo
            bd2 sn4. ss8 | bd8 ss4. sn4. ss8 |
          }
        >>
        <<
          \new DrumVoice { \voiceOne
            hh4 hh hh hh |
            hh4 hh hh hh |
          }
          \new DrumVoice { \voiceTwo
            \tuplet 5/4 {
              bd8 ss sn bd ss
              sn bd ss sn bd |
              ss sn bd ss sn
              bd ss sn bd ss |
            }
          }
        >>
      }
    }
}

\score {
  << \Drums >>
  \layout {}
}
\score {
  \unfoldRepeats << \Drums >>
  \midi {}
}
