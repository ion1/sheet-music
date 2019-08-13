Drums =
  \new DrumStaff {
    \tempo 4 = 160
    \time 10/8
    \set Timing.beamExceptions = #'()
    \set Timing.beatStructure = #'(5 5)
    \new DrumVoice {
      \drummode {
        bd8 hh hh bd hh sn hh hh bd hh |
        \repeat volta 8 {
          bd8 hh hh bd hh sn8. hh bd8. hh16~ |
          hh8 bd8. hh r8 sn hh hh bd hh |
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
