%TODO: Landscape pages.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uoflthesis}[2022/06/10 University of Louisville Thesis Class]
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{book}}
\DeclareOption{draft}{\PassOptionsToClass{draft}{book}}
\ProcessOptions\relax
\LoadClass[oneside]{book}

\RequirePackage{setspace,comment,fancyhdr,titlesec}
\RequirePackage[nottoc]{tocbibind}

\setlength{\hoffset}{0in}
\setlength{\oddsidemargin}{0.5in}
\setlength{\textwidth}{6in}

\setlength{\voffset}{0in}
\setlength{\topmargin}{0in}
\setlength{\headheight}{0in}
\setlength{\headsep}{0in}
\setlength{\textheight}{9in}
\setlength{\footskip}{0.5in}

\pagestyle{fancy}\fancyhf{}\cfoot{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\doublespacing

\newcommand{\chapterbreak}{\clearpage\vspace*{0in}}
\titleformat{\chapter}[display]{\centering\Large}{\Large\MakeUppercase{\chaptertitlename} \thechapter}{0em}{\MakeUppercase}
\titlespacing{\chapter}{0pt}{0.75in}{*3} %The 0.75in is a hack to get rid of the extra 0.25in LaTeX inserts.

\newcommand{\sectionbreak}{\clearpage\vspace*{0in}}
\titleformat{\section}{\centering\large}{\thesection.}{0.5em}{\MakeUppercase}
\titlespacing{\section}{0pt}{0.75in}{*3} %The 0.75in is a hack to get rid of the extra 0.25in LaTeX inserts.

\renewcommand{\author}[1]{\renewcommand{\@author}{#1}}
\newcommand{\authortitles}[1]{\newcommand{\@authortitles}{#1}}
\newcommand{\type}[1]{\newcommand{\@type}{#1}}
\newcommand{\gradmonth}[1]{\newcommand{\@gradmonth}{#1}}
\newcommand{\gradyear}[1]{\newcommand{\@gradyear}{#1}}
\newcommand{\unit}[1]{\newcommand{\@unit}{#1}}
\newcommand{\degree}[1]{\newcommand{\@degree}{#1}}
\newcommand{\major}[1]{\newcommand{\@major}{#1}}
\newcommand{\department}[1]{\newcommand{\@department}{#1}}
\newcommand{\defensedate}[1]{\newcommand{\@defensedate}{#1}}

%\renewcommand{\fboxsep}{0pt}

\renewcommand{\maketitle}{%
\noindent\begin{minipage}{\textwidth}
\centering\large\singlespacing
\vspace*{1in}
\MakeUppercase{\@title}

\vspace{1in}
By

\bigskip
\@author

\@authortitles

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
\expandafter\MakeUppercase\@gradmonth\ \@gradyear
\end{minipage}\thispagestyle{empty}
\vfill
}

\newcommand{\copyrightpage}{
\newpage\noindent\begin{minipage}{\textwidth}
\centering
\vspace*{2in}
Copyright \@gradyear\ by \@author

\bigskip

All rights reserved
\end{minipage}\thispagestyle{empty}
}

\newcommand{\signaturepage}[5]{%
\newpage{\centering\ }\thispagestyle{empty}
\newpage\setcounter{page}{2}\noindent\begin{minipage}{\textwidth}
\singlespacing\centering\large
\vspace*{1in}
\MakeUppercase{\@title}

\bigskip

By

\bigskip

\@author

\@authortitles

\bigskip

A \expandafter\MakeUppercase\@type\ Approved on

\vspace{1in}
\@defensedate

\vspace{1in}
by the following \expandafter\MakeUppercase\@type\ Committee:

\vspace{0.6in}
\rule{3in}{1pt}\\#1

\vspace{0.25in}
\rule{3in}{1pt}\\#2

\vspace{0.25in}
\rule{3in}{1pt}\\#3

\vspace{0.25in}
\rule{3in}{1pt}\\#4

\vspace{0.25in}
\rule{3in}{1pt}\\#5

\end{minipage}
\vfill
}

\newenvironment{abstract}{%
\section*{Abstract}
\begin{centering}
\large
\MakeUppercase{\@title}\\
\@author\\
\@defensedate\\
\end{centering}

}{%
}

\renewcommand{\contentsname}{Table of Contents}
