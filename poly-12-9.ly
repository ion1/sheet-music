DrumsOne = \new DrumStaff {
  \tempo 4 = 90
  \time 12/8
  \repeat volta 8 {
    \drummode <<
      \new DrumVoice { \voiceOne
        hh8 hh hh hh hh hh hh hh hh hh hh hh |
      }
      \new DrumVoice { \voiceTwo
        bd4. sn4 bd8 bd4. sn |
      }
    >>
  }
}

DrumsTwo = \new DrumStaff {
  \time 12/8
  \repeat volta 8 {
    \drummode {
      \tuplet 3/2 {
        wbh4 wbl wbl wbl wbl wbl wbl wbl wbl |
      }
    }
  }
}

Drums = <<
  \DrumsOne
  \DrumsTwo
>>

\score {
  << \Drums >>
  \layout {}
}
\score {
  \unfoldRepeats << \Drums >>
  \midi {}
}
