Drums = \repeat volta 8 <<
  \new DrumStaff {
    \tempo 4 = 120
    \time 8/4
    \new DrumVoice {
      \drummode {
        \repeat unfold 8 { wbh } |
      }
    }
  }
  \new DrumStaff {
    \new DrumVoice {
      \drummode {
        \tuplet 13/8 { <bd cymc>4 hh <sn hh> hh <bd hh> hh <sn hh> hh <bd hh> hh <bd hh> <sn hh> <bd hh> } |
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
