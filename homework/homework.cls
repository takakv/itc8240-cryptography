\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{homework}[2024/01/31 Homework tasks template]

\LoadClass[parskip=half]{scrartcl}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}

\RequirePackage{crysymb}

\RequirePackage[hidelinks]{hyperref}

\RequirePackage{tcolorbox}

\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\RequirePackage{microtype}

\setmainfont{Stix Two Text}
\setmathfont{Stix Two Math}
\setmonofont{Courier New}

\RequirePackage{bookmark}

\RequirePackage{datetime2}
\DTMsetdatestyle{ddmmyy}
\DTMsetup{datesep=.}

\RequirePackage{csquotes}
\setquotestyle{british}

\makeatletter
\def\@maketitle{%
  \newpage
  \begin{center}%
    {Homework~\@title{} --- Deadline:~\@date~23:59~EET\par}%
  \end{center}%
  \par}
\makeatother

\newcounter{task}[section]
\newenvironment*{task}[1]{%
  \refstepcounter{task}%
  \vspace*{1em}
  \textbf{Task~\thetask{} --- {#1}}\par}{}
