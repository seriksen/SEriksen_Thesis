\RequirePackage[l2tabu]{nag}
\LoadClass[a4paper,11pt,leqno,openbib,oldfontcommands]{memoir} %add 'draft' to turn draft option on (see below)
%
%
% Adding metadata:
\let\ordinal\relax %to avoid warning with datetime and memoir
\usepackage{datetime}
\usepackage{ifpdf}
\ifpdf
\pdfinfo{
   /Author (Author's name)
   /Title (PhD Thesis)
   /Keywords (One; Two;Three)
   /CreationDate (D:\pdfdate)
}
\fi
% When draft option is on. 
\ifdraftdoc 
	\usepackage{draftwatermark}				%Sets watermarks up.
	\SetWatermarkScale{0.3}
	\SetWatermarkText{\bf Draft: \today}
\fi

\settrimmedsize{297mm}{210mm}{*}
\setlength{\trimtop}{0pt} 
\setlength{\trimedge}{\stockwidth} 
\addtolength{\trimedge}{-\paperwidth} 
\settypeblocksize{634pt}{448.13pt}{*} 
\setulmargins{4cm}{*}{*} 
\setlrmargins{*}{*}{1.5} 
\setmarginnotes{17pt}{51pt}{\onelineskip} 
\setheadfoot{\onelineskip}{2\onelineskip} 
\setheaderspaces{*}{2\onelineskip}{*} 
\checkandfixthelayout
%
\frenchspacing
%
% UoB guidelines:
%
% Text should be in double or 1.5 line spacing, and font size should be
% chosen to ensure clarity and legibility for the main text and for any
% quotations and footnotes. Margins should allow for eventual hard binding.
%
% Note: This is automatically set by memoir class. Nevertheless \OnehalfSpacing 
% enables double spacing but leaves single spaced for captions for instance. 
\OnehalfSpacing 
%
% Sets numbering division level
\setsecnumdepth{subsection} 
\maxsecnumdepth{subsubsection}
%
%
% UoB guidelines:
%
% The pages should be numbered consecutively at the bottom centre of the
% page.
\makepagestyle{myvf} 
\makeoddfoot{myvf}{}{\thepage}{} 
\makeevenfoot{myvf}{}{\thepage}{} 
\makeheadrule{myvf}{\textwidth}{\normalrulethickness} 
\makeevenhead{myvf}{\small\textsc{\leftmark}}{}{} 
\makeoddhead{myvf}{}{}{\small\textsc{\rightmark}}
\pagestyle{myvf}
%
%
\makeindex


\usepackage{import}

% Add other packages needed for chapters here. For example:
\usepackage{amsfonts} 					%Calls Amer. Math. Soc. (AMS) fonts
\usepackage{amsmath}			%Writes maths centred down
\usepackage{stmaryrd}					%New AMS symbols
\usepackage{amssymb}					%Calls AMS symbols
\usepackage{amsthm}					%Calls AMS theorem environment
\usepackage{newlfont}					%Helpful package for fonts and symbols
\usepackage{layouts}					%Layout diagrams
\usepackage{graphicx}					%Calls figure environment
\usepackage[utf8]{inputenc}			%Needed to encode non-english characters 
									%directly for mac
\usepackage{float}						%Helps to place figures, tables, etc. 
\usepackage[square,numbers,
		     sort&compress]{natbib}		%Calls bibliography commands 
\usepackage{url}						%Supports url commands
\usepackage[spanish,english]{babel}		%For languages characters and hyphenation

\usepackage[colorlinks=true,
		     allcolors=black]{hyperref}              %Creates hyperlinks in cross references
\usepackage{memhfixc}					%Must be used on memoir document 
									%class after hyperref
\usepackage{enumerate}					%For enumeration counter
\usepackage{footnote}					%For footnotes
\usepackage{microtype}					%Makes pdf look better.
%\usepackage[version=0.96]{pgf}			%PGF/TikZ is a tandem of languages for producing vector graphics from a 

%Reduce widows  (the last line of a paragraph at the start of a page) and orphans 
% (the first line of paragraph at the end of a page)
\widowpenalty=1000
\clubpenalty=1000
%
% New command definitions for my thesis
%
\newcommand{\keywords}[1]{\par\noindent{\small{\bf Keywords:} #1}} %Defines keywords small section
\newcommand{\clearemptydoublepage}{\newpage{\thispagestyle{empty}\cleardoublepage}}
%
%
\usepackage{subcaption}
%
\usepackage{xcolor}
%Creates coloured text and background
\definecolor{UniversityRed}{RGB}{171,31,45}
%Defines user-defined colour (Univeristy of Bristol Red here)
%
% Theorem styles used in my thesis
%
\theoremstyle{plain}
\newtheorem{theo}{Theorem}[chapter]
\theoremstyle{plain}
\newtheorem{prop}{Proposition}[chapter]
\theoremstyle{plain}
\theoremstyle{definition}
\newtheorem{dfn}{Definition}[chapter]
\theoremstyle{plain}
\newtheorem{lema}{Lemma}[chapter]
\theoremstyle{plain}
\newtheorem{cor}{Corollary}[chapter]
\theoremstyle{plain}
\newtheorem{resu}{Result}[chapter]


\DeclareMathOperator{\Lagrangian}{\mathcal{L}}
\DeclareMathOperator{\Operator}{\mathcal{O}}

\usepackage{mathtools}
\usepackage{tcolorbox}
\RequirePackage{tikz}
\usepackage{pgfplots} % for plotting
\usepgfplotslibrary{fillbetween}
\usepgfplotslibrary{groupplots}
%\usepgfplotslibrary{dateplot}
\usetikzlibrary{pgfplots.dateplot}
\usepackage{pgfplotstable}
\pgfplotsset{compat=1.18}
%\usepgfplotslibrary{external}
%\tikzexternalize
\usepackage{notoccite} % correct referencing order
\usepackage{multirow} % for tables

\pgfplotsset{
  /pgfplots/error bar legend/.style={
    legend image code/.code={
        \draw[sharp plot,mark=|,mark repeat=2,mark phase=1,color=black,##1]
        plot coordinates { (0.0cm, 0.0cm) (0.3cm,0.0cm) (0.6cm, 0.0cm) };
        
        \draw[sharp plot,mark=-,mark repeat=2,mark phase=1,color=black,##1]
        plot coordinates { (0.3cm, -0.2cm) (0.3cm,0.2cm) (0.3cm, 0.2cm) };
        
        \draw[mark repeat=2,mark phase=2,##1]
        plot coordinates {(0cm,0cm) (0.3cm,0cm) (0.6cm,0cm)};
    }
  }
}


\usepackage{listings}
\usepackage{mdframed}
\definecolor{lightgrey}{gray}{0.9}

\usetikzlibrary{shapes,positioning}
\usepackage{lscape}
\usepackage{anyfontsize}

\endinput