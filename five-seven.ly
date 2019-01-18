Drums = \repeat volta 4 <<
  \new DrumStaff {
    \tempo 4 = 120
    \time 5/4
    \new DrumVoice {
      \drummode {
        \repeat unfold 7 { hho4 hh hh hh hh | }
      }
    }
  }
  \new DrumStaff {
    \new DrumVoice {
      \drummode {
                 sn4.. sn4.. sn4.~|
        sn16     sn4.. sn4.. sn16~sn4~|
        sn8      sn4.. sn4.. sn4~|
        sn8.     sn4.. sn4.. sn8.~|
        sn4      sn4.. sn4.. sn8~|
        sn4~sn16 sn4.. sn4.. sn16~|
        sn4.     sn4.. sn4.. |
      }
    }
  }
  \new DrumStaff {
    \new DrumVoice {
      \drummode {
        \repeat unfold 7 { bd4~bd16 bd8.~bd8 bd8~bd8. bd16~bd4 | }
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
