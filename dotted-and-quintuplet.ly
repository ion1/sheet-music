Drums =
  \new DrumStaff {
    \tempo 4 = 120
    \time 4/4
    \repeat volta 4 {
      \drummode <<
        \new DrumVoice { \voiceOne
          \tuplet 4/3 {
            \repeat unfold 8 { hhho4 hh8 hh } |
          }
          \tuplet 5/4 {
            hhho4 hh8 hh hhho4 hh8 hh hhho4 |
            hh8 hh hhho4 hh8 hh hhho4 hh8 hh |
          }
        }
        \new DrumVoice { \voiceTwo
          \repeat unfold 5 { <bd ss>4 ss ss ss | }
        }
      >>
    }
  }

\score {
  \Drums
  \layout {}
}
\score {
  \unfoldRepeats \Drums 
  \midi {}
}
