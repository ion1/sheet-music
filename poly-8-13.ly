Drums = \repeat volta 8 <<
  \new DrumStaff {
    \tempo 4 = 120
    \time 8/4
    \new DrumVoice {
      \drummode {
        \tuplet 13/8 { cymc4 \repeat unfold 12 { hh4 } } |
      }
    }
  }
  \new DrumStaff {
    \new DrumVoice {
      \drummode {
        \repeat unfold 4 { bd4 sn } |
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
