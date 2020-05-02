Time = {
  \tempo 4 = 180
  \time 4/4
}

GuitarOne = \new Staff {
  \clef treble
  \Time
  \repeat volta 8 {
    \set Staff.midiInstrument = #"electric guitar (muted)"
    \key a \minor
    \repeat unfold 8 {
      \tuplet 3/2 { e'8 d' c' } b4 c'8 b a
    } |
  }
}

Bass = \new Staff {
  \set Staff.midiInstrument = #"electric bass (pick)"
  \clef bass
  \Time
  \repeat volta 8 {
    \transpose c c,, {
      \key a \minor
      \repeat unfold 7 { a2 a | }
    }
  }
}

Drums = <<
  \new DrumStaff {
    \Time
    \drummode {
      \repeat volta 8 {
        \repeat unfold 7 { hh4 hh hh hh | }
      }
    }
  }
  \new DrumStaff {
    \Time
    \drummode {
      \repeat volta 8 {
        \repeat unfold 7 { bd2 sn | }
      }
    }
  }
>>

\score {
  << \GuitarOne \Bass \Drums >>
  \layout {}
}
\score {
  \unfoldRepeats << \GuitarOne \Bass \Drums >>
  \midi {}
}
