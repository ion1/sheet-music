Drums = <<
  \new DrumStaff {
    \tempo 4 = 80
    \time 7/8
    \repeat volta 4 {
      \drummode <<
        \new DrumVoice { \voiceOne
          \tuplet 5/4 {
            \repeat unfold 35 { agh8 agl } |
          }
        }
      >>
    }
  }
  \new DrumStaff {
    \repeat volta 4 {
      \drummode <<
        \new DrumVoice { \voiceOne
          \repeat unfold 8 { \repeat unfold 7 { hh8 } | }
        }
        \new DrumVoice { \voiceTwo
          \repeat unfold 7 { bd4 sn bd8 bd sn | }
        }
      >>
    }
  }
>>

\score {
  \Drums
  \layout {}
}
\score {
  \unfoldRepeats \Drums 
  \midi {}
}
