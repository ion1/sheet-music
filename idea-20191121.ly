Drums = <<
  \new DrumStaff {
    \tempo 4 = 100
    \time 7/8
    \repeat volta 2 {
      \drummode <<
        \new DrumVoice { \repeat unfold 2 { r2.. | } }
      >>
    }
    \repeat volta 2 {
      \drummode <<
        \new DrumVoice {
          r8 cymr4 cymr cymr |
          cymr4 cymr cymr cymr8 |
        }
      >>
    }
  }
  \new DrumStaff {
    \tempo 4 = 100
    \time 7/8
    \repeat volta 2 {
      \drummode <<
        \new DrumVoice { \voiceOne
          \repeat unfold 2 { r16 hhho8. hh8 hh hh hh hh | }
        }
        \new DrumVoice { \voiceTwo
          \repeat unfold 2 { r16 bd8. sn ss8 ss16 bd8 sn8 | }
        }
      >>
    }
    \repeat volta 2 {
      \drummode <<
        \new DrumVoice { \voiceOne
          \repeat unfold 2 { r16 hhho8. hh8 hh hh hh hh | }
        }
        \new DrumVoice { \voiceTwo
          \repeat unfold 2 { r16 bd8. sn ss8 ss16 bd8 sn8 | }
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
  \unfoldRepeats \repeat unfold 2 { \Drums }
  \midi {}
}
