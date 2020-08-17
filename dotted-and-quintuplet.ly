Drums =
  \new DrumStaff {
    \tempo 4 = 120
    \time 4/4
    \repeat volta 4 {
      \drummode <<
        \new DrumVoice { \voiceOne
          hh8. hh hh hh hh hh16~ |
          hh8 hh8. hh hh hh hh8~ |
          hh16 hh8. hh hh hh hh |
          \tuplet 5/4 { hh4 hh hh hh hh } |
        }
        \new DrumVoice { \voiceTwo
          \repeat unfold 4 { bd4 bd bd bd | }
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
