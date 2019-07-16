Drums = \repeat volta 4 <<
  \new DrumStaff {
    \tempo 4 = 95
    \time 4/4
    \new DrumVoice {
      \drummode {
        \tuplet 5/4 { <bd cymc>16 hh hh bd hh }
        \tuplet 3/2 { sn8. hh8 bd16 hh8 bd16 bd8 hh16 }
        \tuplet 5/4 { sn16 bd hh sn bd } |
        \tuplet 5/4 { hh16 bd hh bd hh }
        \tuplet 3/2 { sn8. hh8 bd16 hh8 bd16 bd8 hh16 }
        \tuplet 5/4 { sn16 bd hh sn bd } |
        \tuplet 5/4 { <bd cymc>16 hh hh bd hh }
        \tuplet 3/2 { sn8. hh8 bd16 hh8 bd16 bd8 hh16 }
        \tuplet 5/4 { sn16 hhho8 bd16 hh } |
        \tuplet 5/4 { hh16 bd hh bd hh }
        \tuplet 3/2 { sn8. hh8 bd16 }
        \tuplet 5/4 { sn16 bd hh sn bd hh sn bd hh sn } |
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
