\version "2.20.0"

% `$ lilypond -fpng -dcrop 001.ly`

\paper{
  indent=0\mm
  line-width=120\mm
  oddFooterMarkup=##f
  oddHeaderMarkup=##f
  bookTitleMarkup = ##f
  scoreTitleMarkup = ##f
}

signatures = {
  \key a \major
  \time 3/4
}

soprano = \relative c'' { 
  \voiceOne
  cis4 b a gis a b cis2 d4 b2.
  a4 b cis d b a b2 gis4 a2.
}

alto = \relative c'' {
  \voiceTwo
  a4 gis fis e fis gis a2 a4 gis2.
  fis4 gis a a gis fis fis2 e4 e2.
}

tenor = \relative c' { 
  \voiceOne
  e4 e4 cis cis cis e e2 fis4 e2.
  cis4 e e fis e cis d2 b4 cis2.
}
bass = \relative c' {
  \voiceTwo 
  a4 e fis cis fis e a2 d,4 e2.
  fis4 e a d, e fis b,2 e4 a,2.
}

\score {
  \new PianoStaff
  <<
    \new Staff = "upper" <<
      \signatures
      \hide TimeSignature
      \new Voice = "soprano" \soprano
      \new Voice = "alto" \alto
    >>
    \new Staff = "lower" <<
      \signatures
      \clef bass
      \hide TimeSignature
      \new Voice = "tenor" \tenor
      \new Voice = "bass" \bass
    >>
  >>
}
