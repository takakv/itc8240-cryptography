\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{practice}[2024/01/31 Practice tasks template]

\LoadClass[parskip=half]{scrartcl}

\RequirePackage{amsthm}
\RequirePackage{crysymb}

\RequirePackage{tikz}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.9}

\RequirePackage{tcolorbox}

\RequirePackage[hidelinks]{hyperref}

\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\RequirePackage{microtype}

\setmainfont{Stix Two Text}
%\setsansfont[BoldFont = *-Semibold]{Source Sans 3}
\setsansfont{TeX Gyre Heros}
\setmathfont{Stix Two Math}
\setmonofont{Courier New}

% Serif titles
\addtokomafont{disposition}{\rmfamily}
% Regular-sized headings
\addtokomafont{section}{\normalsize}
\addtokomafont{subsection}{\normalsize}
\addtokomafont{subsubsection}{\normalsize}

\RequirePackage{bookmark}

\RequirePackage{datetime2}
\DTMsetdatestyle{ddmmyy}
\DTMsetup{datesep=.}

\usepackage{csquotes}
\setquotestyle{british}

\makeatletter
\def\@maketitle{%
  \newpage
  \begin{center}%
    {Practice session \@title{} --- \@date}\\
    {\@subtitle{}\par}%
  \end{center}%
  \par}
\makeatother

\newcounter{task}[section]
\newenvironment*{task}[1]{%
  \refstepcounter{task}%
  \vspace*{1em}
  \textbf{Task~\thetask{} --- {#1}}\par}{}

%\makeatletter
%\newcommand\task{\@startsection {task}{1}{\z@}%
%                                {0pt}%
%                                {0pt}%
%                                {\normalfont\bfseries\par}}
%\newcommand{\taskmark}[1]{}
%\newcounter{task}
%\let\l@task\l@section

\RequirePackage{changepage}

\RequirePackage{fancyvrb}

% https://tex.stackexchange.com/a/12712
\RequirePackage{array}
\newcolumntype{C}[1]{>{\centering\arraybackslash}m{#1}} % fixed width centering in columns

\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\renewcommand*{\arraystretch}{1.2}
