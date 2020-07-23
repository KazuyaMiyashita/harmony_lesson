\version "2.20.0"

% ` lilypond -dbackend=svg -dcrop 002.ly`

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
    \new Staff = "upper" \relative c {
      \signatures
      \clef treble
      \hide Stem
      s16 s s c' e g bes c d e fis g a bes b c
    }
    \new Staff = "lower" \relative c {
      \signatures
      \clef bass
      \hide Stem
      c,16 c' g' s s s s s s s s s s s s s
    }
  >>
}
