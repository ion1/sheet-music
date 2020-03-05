Time = {
  \tempo 4 = 130
  \time 4/4
}

GuitarOne = \new Staff {
  \set Staff.midiInstrument = #"overdriven guitar"
  \clef treble
  \Time
  \repeat volta 8 {
    \tuplet 5/4 { <e a>8 <fis b> <g c'> <a d'> <b dis'> } <c' e'>2 |
    r1 |
    \tuplet 5/4 { <f a>8 <g b> <a c'> <b d'> <c' e'> } <d' f'>2 |
    r1 |
  }
}

GuitarTwo = \new Staff {
  \set Staff.midiInstrument = #"electric guitar (muted)"
  \clef bass
  \Time
  \repeat volta 8 {
    \repeat unfold 2 {
      \tuplet 5/4 { a,8 a, a, a, a, a, a, a, a, a, } |
      \tuplet 3/2 { a,8 a, a, c c c b,8 b, b, bes, bes, bes, } |
    }
  }
}

Bass = \new Staff {
  \set Staff.midiInstrument = #"electric bass (pick)"
  \clef bass
  \Time
  \repeat volta 8 {
    \repeat unfold 2 {
      \transpose c c, {
        \tuplet 5/4 { a,8 a, a, a, a, a, a, a, a, a, } |
        \tuplet 3/2 { a,8 a, a, c c c b,8 b, b, bes, bes, bes, } |
      }
    }
  }
}

Drums = <<
  \new DrumStaff {
    \Time
    \drummode {
      \repeat volta 8 {
        \repeat unfold 2 {
          hho4 hho hho hho | hho4 hho hho hho |
        }
      }
    }
  }
  \new DrumStaff {
    \Time
    \drummode {
      \repeat volta 8 {
        \repeat unfold 2 {
          \tuplet 5/4 { bd8 bd bd bd bd <bd sn>8 bd bd bd bd } |
          \tuplet 3/2 { bd8 bd bd bd bd bd <bd sn>8 bd bd bd bd bd } |
        }
      }
    }
  }
>>

\score {
  << \GuitarOne \GuitarTwo \Drums >>
  \layout {}
}
\score {
  \unfoldRepeats << \GuitarOne \GuitarTwo \Bass \Drums >>
  \midi {}
}
