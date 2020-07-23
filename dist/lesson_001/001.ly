\version "2.20.0"

% `$ lilypond -dbackend=svg -dcrop 001.ly`

\paper{
  indent=0\mm
  line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bookTitleMarkup = ##f
  scoreTitleMarkup = ##f
}

signatures = {
  \key c \major
  \time 4/4
}

\score {
  \new PianoStaff
  <<
    \new Staff = "upper" {
      \signatures
      \clef treble
      s1
    }
    \new Staff = "lower" {
      \signatures
      \clef bass
      c,1
    }
  >>
}
