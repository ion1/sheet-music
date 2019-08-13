Drums =
  \new DrumStaff {
    \tempo 4 = 80
    \time 10/16
    \set Timing.beamExceptions = #'()
    \set Timing.beatStructure = #'(5 5)
    \new DrumVoice {
      \drummode {
        bd16 hh hh bd hh sn hh hh bd hh |
        \repeat volta 8 {
          bd16 hh hh bd hh sn16. hh bd16. hh32~ |
          hh16 bd16. hh r16 sn hh hh bd hh |
        }
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
