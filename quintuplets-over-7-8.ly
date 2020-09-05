Time = {
  \tempo 4 = 60
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
          \override Beam.breakable = ##t
          \repeat unfold 7 {
            \tuplet 5/4 { agh8[ agl agh agl agh] }
            \tuplet 5/4 { agl8[ agh agl agh agl] }
          }
          |
        }
      >>
    }
  }
  \new DrumStaff {
    \Time
    \repeat volta 4 {
      \drummode <<
        \new DrumVoice { \voiceOne
          \repeat unfold 14 { hho8 hh hh hh } |
          % \repeat unfold 8 { \repeat unfold 7 { hh8 } | }
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
