Drums =
  \new DrumStaff {
    \tempo 4 = 120
    \time 10/8
    \repeat volta 4 {
      \drummode <<
        \new DrumVoice { \voiceOne
          cymc8 hh4 hh hh hh hh8 |
          r8 hh4 hh hh hh hh8 |
          r8 hh4 hh hh hh hh8 |
          r8 hh4 hh hh hh hh8 |
        }
        \new DrumVoice { \voiceTwo
          bd8 sn4 bd sn bd8 sn4 |
          bd8 sn4 bd sn bd8 sn4 |
          bd8 sn4 bd sn bd8 sn4 |
          bd8 sn4 bd sn bd8 sn4 |
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
