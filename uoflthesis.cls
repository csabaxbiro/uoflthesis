%TODO: Landscape pages.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uoflthesis}[2022/06/10 University of Louisville Thesis Class]
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{amsbook}}
\ProcessOptions\relax
\LoadClass[oneside]{amsbook}

\RequirePackage{setspace,comment}

\setlength{\hoffset}{0in}
\setlength{\oddsidemargin}{0.5in}
\setlength{\textwidth}{6in}

\setlength{\voffset}{0in}
\setlength{\topmargin}{0in}
\setlength{\headheight}{0in}
\setlength{\headsep}{0in}
\setlength{\textheight}{9in}

\renewcommand{\author}[1]{\renewcommand{\@author}{#1}}
\newcommand{\type}[1]{\newcommand{\@type}{#1}}
\newcommand{\graddate}[1]{\newcommand{\@graddate}{#1}}
\newcommand{\unit}[1]{\newcommand{\@unit}{#1}}
\newcommand{\degree}[1]{\newcommand{\@degree}{#1}}
\newcommand{\major}[1]{\newcommand{\@major}{#1}}
\newcommand{\department}[1]{\newcommand{\@department}{#1}}

%\renewcommand{\fboxsep}{0pt}

\renewcommand{\maketitle}{%
\noindent\begin{minipage}{\textwidth}
\thispagestyle{empty}
\centering\large
\vspace*{1in}
\MakeUppercase{\@title}

\vspace{1in}
By

\bigskip
\@author

\vspace{1in}
A \expandafter\MakeUppercase\@type

Submitted to the Faculty of the

\@unit\ of the University of Louisville

in Partial Fulfillment of the Requirements

for the Degree of

\vspace{1in}
\@degree

in \@major

\vspace{0.6in}
\@department

University of Louisville

Louisville, Kentucky

\vspace*{0.5in}
\@graddate
\end{minipage}
}

