Time = {
  \tempo 4 = 90
  \time 8/8
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(4 4)
}

Drums = <<
  \new DrumStaff {
    \Time
    \drummode {
      \repeat volta 8 {
        \repeat unfold 6 {
          \repeat unfold 2 { hh8 hh hh hh } |
        }
      }
    }
  }
  \new DrumStaff {
    \Time
    \drummode {
      \repeat volta 8 {
        \tuplet 5/4 {
          bd8 <bd toml> bd <bd sn> bd r  bd <bd toml> bd <bd sn> |
          bd8 r  bd <bd toml> bd <bd sn> bd r  bd <bd toml> |
          bd8 <bd sn> bd r  bd <bd toml> bd <bd sn> bd r  |

          bd16 bd <bd toml> bd bd bd <bd sn> bd bd bd r8  bd16 bd <bd toml> bd bd bd <bd sn> bd |
          bd16 bd r8  bd16 bd <bd toml> bd bd bd <bd sn> bd bd bd r8  bd16 bd <bd toml> bd |
          bd16 bd <bd sn> bd bd bd r8  bd16 bd <bd toml> bd bd bd <bd sn> bd bd bd r8  |
        }
      }
    }
  }
>>

\score {
  << \Drums >>
  \layout {}
}
\score {
  \unfoldRepeats << \Drums >>
  \midi {}
}
