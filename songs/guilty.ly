

% from here everything needs to go into a loop

% include anything the user wants before the bookpart starts








% this sets the default key to middle C if not already defined
#(define transpose-key (if (defined? 'transpose-key) transpose-key (ly:make-pitch 0 0 0)))
%#(define transpose-key (ly:pitch-transpose transpose-key (ly:make-pitch -1 0 0)))

\bookpart {

% this causes the variables to be defined...














% THIS FILE WAS TRANSLATED FROM THE OPENBOOK PROJECT LOCATED AT https://github.com/veltzer/openbook
% dump all the metadata into comments on the file because why not
% METADATA
% title: Guilty
% style: Jazz
% composer: Gus Kahn, Harry Akst, Richard A. Whiting
% poet: Gus Kahn, Harry Akst, Richard A. Whiting
% piece: Slowly
% copyright: 1931 (Renewed 1958) Whiting Publishing and EMI Feist Catalog Inc.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 16154c88-da81-11e3-b38d-b75a4937af0f
% structure: AABA
% /METADATA

% now play with the variables that depend on language



% calculate the tag line


% calculate the typesetby






\header {
    title = \markup {
      \score {
	{
	  \override TextScript.extra-offset = #'(0 . -4.5)
	  s4
	  s^\markup {
	    \fill-line {
	      \fontsize #1 \lower #1 \rotate #7 "Slowly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Guilty"
	      \fontsize #1 \lower #1  "- Gus Kahn, Harry Akst, Richard A. Whiting"
	    }
	  }
	  s
	}
	\layout {
	  \once \override Staff.Clef.stencil = ##f
	  \once \override Staff.TimeSignature.stencil = ##f
	  \once \override Staff.KeySignature.stencil = ##f
	  ragged-right = ##f
	  \override TextScript.font-name = #"LilyJAZZText"
	}
      }
    }
  }
  \noPageBreak

  \tocItem \markup "Guilty / Gus Kahn, Harry Akst, Richard A. Whiting"


% include the preparatory stuff, if there is any

% calculate the vars



% score for printing
\score {
	<<

\new ChordNames="Chords"
	\with {
		\remove "Bar_engraver"
	}
% # transpose with 'inline' is true!
	\transpose c \transpose-key {


\chordmode {
	\startChords
	\startSong

	\myMark "A"
	\startPart
	\repeat volta 2 {
		bes4 f:m/aes g:7.5+ g:7 | c:m c:m/bes a:7.5+ a:7 | bes2:maj7 bes:7.5+ | ees:maj7 ees:m | \myEndLine
		bes/d des:dim7 | c:m7 f:7 |
	} \alternative {
		{
			c:m7 f:7.5+ | bes f:7 | \myEndLineVoltaNotLast
		}
		{
			c:m7 f:7 | bes a:7 | \myEndLineVoltaLast
		}
	}
	\myEndLine
	\endPart

	\myMark "B"
	\startPart
	d:m d4:m7+ d:m7 | e2:m7.5- a4:7.5+ a:7 | d2:m d:m7 | e:m7 a4:7.5+ a:7 | \myEndLine
	f1:6/c | g2:m7/c f4:6 fis:dim7 | g2:m7 c:9 | f:sus4.9 f:7.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	bes4 f:m/aes g:7.5+ g:7 | c:m c:m/bes a:7.5+ a:7 | bes2:maj7 bes:7.5+ | ees:maj7 ees:m | \myEndLine
	bes/d des:dim7 | c:m7 f:7 | c4:m f2:sus4.9 f4:7.9- | bes aes:6 bes:6 r | \myEndLine
	\endPart

	\endSong
	\endChords
}



}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Moderato" 4 = 100
	\time 4/4
	\key bes \major

%% part "A"
	\repeat volta 2 {
		f8 g f g~ g2 | g8 a g a~ a2 | a8 bes a bes~ bes a bes4 | d2 c |
		c8 bes a g~ g a bes4 | f4 f2. |
	} \alternative {
		{
			\tuplet 3/2 { f4 c f } cis a'8 g~ | g2. r4 |
		}
		{
			g8 ees g4 a8 bes c bes~ | bes2. r4 |
		}
	}

%% part "B"
	a8 f g a~ a2 | a8 c bes a~ a2 | d8 c bes a~ a f g4 | a1 |
	c8 a bes c~ c2 | bes8 c d c~ c4. a8 | c g a bes~ bes c d4 | c2. r4 |

%% part "A"
	f,8 g f g~ g2 | g8 a g a~ a2 | a8 bes a bes~ bes a bes4 | d2 c |
	c8 bes a g~ g a bes4 | f4 f2. | ees'8 d ees c~ c4 d | bes2. r4\fermata |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Is it a sin, __ is it a crime, __ lov -- ing you dar, __ like i do? __ _ If it's a crime __ then I'm
	Guilt -- y, Guilt -- y of lov -- ing you. __ Guit -- y of dream -- ing of you. __
	What can I do, __ what can I say, __ af -- ter I've tak -- en the blame? You say you're thu, __
	you'll go your way __ but I'll al -- ways feel __ just the same. May -- be I'm right, __ may -- by I'm wrong.
	lov -- ing you dear, __ like I do. __ _ If it's a crime __ then I'm Gilt -- y, Guilt -- y of love -- ing you.
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {
	May -- be I'm wrong __ dream -- ing of you, __ dream -- ing the lone -- ly night thru, __ _
}

}
	>>
	\layout {
%% make only the first clef visible
        \override Score.Clef #'break-visibility = #'#(#f #f #f)
%% make only the first time signature visible
	\override Score.KeySignature #'break-visibility = #'#(#f #f #f)
%% allow single-staff system bars
	\override Score.SystemStartBar #'collapse-height = #1
	}
}
\noPageBreak


\markup \column {
%% just a little space
	\null
	\fill-line {
		\smaller \smaller { "Copyright © 1931 (Renewed 1958) Whiting Publishing and EMI Feist Catalog Inc." }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Jordan Eldredge <JordanEldredge@gmail.com>" }
	}
	\fill-line {
		\smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
	}
	\fill-line {
		\smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
	}
}


}

