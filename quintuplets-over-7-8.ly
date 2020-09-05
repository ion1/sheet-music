Time = {
  \tempo 4 = 80
  \time 7/8
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(4 3)
}

Drums = <<
  \new DrumStaff {
    \Time
    \repeat volta 4 {
      \drummode <<
        \new DrumVoice { \voiceOne
          \tuplet 5/4 {
            \override Beam.breakable = ##t
            agh8[ agl
            \repeat unfold 16 { agh8 agl }
            agh] |
            agl8[ agh
            \repeat unfold 16 { agl8 agh }
            agl] |
          }
        }
      >>
    }
  }
  \new DrumStaff {
    \Time
    \repeat volta 4 {
      \drummode <<
        \new DrumVoice { \voiceOne
          \repeat unfold 8 { \repeat unfold 7 { hh8 } | }
        }
        \new DrumVoice { \voiceTwo
          \repeat unfold 8 { bd4 sn bd8 bd sn | }
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
