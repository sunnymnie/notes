\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}[2021/09/01 Notes]

% %% Article options
\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{article}
}

\DeclareOption{twocolumn}{
  \PassOptionsToClass{\CurrentOption}{article}
}

%% Fallback
\DeclareOption*{
  \ClassWarning{notes}{Unknown option '\CurrentOption'}
}

%% Execute default options
\ExecuteOptions{10pt}
\ExecuteOptions{twocolumn}

%% Process given options
\ProcessOptions\relax

%% Load base
\LoadClass[a4paper]{article}

%% Load additional packages and commands.
% \RequirePackage{custom}

\RequirePackage{geometry}
\RequirePackage{fontspec}
\RequirePackage{tocloft}
\RequirePackage{setspace}

%% Additional TeX/LaTeX code...

\setmainfont{Avenir Next}
\geometry{a4paper,
top=3em,
bottom=3em,
left=3em,
right=3em}
\pagenumbering{gobble}

\author{}
\date{} %To remove date
\setlength{\parindent}{0pt} %To remove indentation

% \renewcommand{\cfttoctitlefont}{\normalfont\Large}% Remove \bfseries from ToC title
\renewcommand{\cftsecfont}{}% Remove \bfseries from section titles in ToC
\renewcommand{\cftsecpagefont}{}% Remove \bfseries from section titles' page in ToC


\newcommand{\Advice}{
\vspace{1em}
\textbf{Advice }
}
\newcommand{\Fact}{
\par
\textbf{Fact }
}
\newcommand{\Quote}{
\par
\textbf{Quote }
}

\endinput
