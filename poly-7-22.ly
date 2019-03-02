Drums = \repeat volta 8 <<
  \new DrumStaff {
    \tempo 4 = 120
    \time 77/32
    \new DrumVoice {
      \drummode {
        cymc16.. hh \repeat unfold 10 { hh16.. hh } |
      }
    }
  }
  \new DrumStaff {
    \new DrumVoice {
      \drummode {
        \repeat unfold 2 { bd8..~ bd8 sn8..~ sn8 }
        \repeat unfold 2 { bd8..~ bd8 } sn8..~ sn8 |
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
