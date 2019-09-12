Drums = <<
  \new DrumStaff {
    \drummode {
      \tempo 4 = 90
      \repeat volta 8 {
        \repeat unfold 3 {
          \repeat unfold 2 { wbl8 trim wbh trim } |
        }
      }
    }
  }
  \new DrumStaff {
    \drummode {
      \repeat volta 8 {
        \tuplet 5/4 {
          bd8 hh bd sn hh bd bd hh bd sn |
          hh8 bd bd hh bd sn hh bd bd hh |
          bd8 sn hh bd bd hh bd sn hh bd |
        }
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
