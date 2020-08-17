Drums =
  \new DrumStaff {
    \tempo 4 = 120
    \time 4/4
    \repeat volta 4 {
      \drummode <<
        \new DrumVoice { \voiceOne
          hhho8. hh16. hh hhho8. hh16. hh hhho8. hh16~ |
          hh32 hh16. hhho8. hh16. hh hhho8. hh16. hh hhho8~ |
          hh16 hh16. hh hhho8. hh16. hh16. hhho8. hh16. hh |
          \tuplet 5/4 {
            hhho4 hh8 hh hhho4 hh8 hh hhho4 |
            hh8 hh hhho4 hh8 hh hhho4 hh8 hh |
          }
        }
        \new DrumVoice { \voiceTwo
          \repeat unfold 5 { bd4 bd bd bd | }
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
