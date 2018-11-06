\version "2.18.2"

Time = {
  \tempo 4 = 160
  \compoundMeter #'((9 8 8))
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(3 3 3 4 4)
}

Drums = \new DrumStaff {
  \Time
  \repeat volta 4 {
    \drummode <<
      \new DrumVoice { \voiceOne
        cymc4. hho hho hho hho hho4 |
        hho4. hho hho hho2 hho |
      }
      \new DrumVoice { \voiceTwo
        bd4 bd8 sn4 bd bd bd4 bd8 sn4 bd bd8 |
        bd4 bd8 sn4 bd bd bd4 bd8 sn4 bd bd8 |
      }
    >>
  }
}

Bass = \new Staff {
  \set Staff.midiInstrument = #"acoustic bass"
  \Time
  \transposition c,
  \repeat volta 4 {
    \clef "bass" {
      \repeat unfold 2 { a4 a8 a4 a a a4 a8 a4 a a8 | }
    }
  }
}

\score {
  << \Bass \Drums >>
  \layout {}
}
\score {
  \unfoldRepeats << \Bass \Drums >>
  \midi {}
}
