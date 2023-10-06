%----------------------------------------------------------------------------------------------------------
%| DOCUMENT CLASS                                                                                        |
%----------------------------------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions\relax
\LoadClass[
    twoside,
    11pt,
    DIV=calc,
    BCOR=17mm,
    headsepline,
    footsepline=false,
    openright,
    fleqn,
    a4paper,
    abstract=true,
    listof=totoc,
    bibliography=totoc,
    titlepage,
    headinclude=true,  % changed to true to recognize the option
    footinclude=false,
    numbers=noenddot
]{scrreprt}

%----------------------------------------------------------------------------------------------------------
%| PACKAGE INCLUSION: Grouped by functionality                                                           |
%----------------------------------------------------------------------------------------------------------
% Typography and Encoding
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[english]{babel}
\usepackage{microtype}

% Graphics and Colors
\usepackage{graphicx}
\usepackage{xcolor}
\definecolor{RSColor}{RGB}{68, 153, 228}
\definecolor{HMColor}{RGB}{233, 97, 91}

% Tables and Floats
\usepackage{tabularx}
\usepackage{multirow}
\usepackage{float}
\usepackage{makecell}
\usepackage{colortbl}
\usepackage{booktabs}

% Math and Symbols
\usepackage[intlimits]{amsmath}
\usepackage{amssymb}
\usepackage{trfsigns}
\usepackage{siunitx}

% Bibliography
\usepackage[backend=biber, style=numeric, citestyle=numeric, sorting=none]{biblatex}
\addbibresource{Bibliography.bib}

% Miscellaneous
\usepackage{setspace}
\usepackage{wrapfig}
\usepackage{pdfpages}
\usepackage{verbatim}
\usepackage{epigraph}
\usepackage{lipsum}
\usepackage[newfloat, outputdir=output]{minted}
\usepackage{caption}
\usepackage{pdflscape}
\usepackage[plainpages=false,pdfpagelabels,hypertexnames=false]{hyperref}
\usepackage[printonlyused]{acronym}
\usepackage{media9}
\usepackage{xurl}
\usepackage{scrhack}
\usepackage[left=2.5cm,top=2cm,right=2cm,bottom=2.5cm,bindingoffset=0.5cm]{geometry}
\usepackage{csquotes}

% Headers and Footers
\usepackage[automark]{scrlayer-scrpage}
\clearpairofpagestyles  % Clear headers and footers
\ohead{\headmark}
\ihead{\documentType\ \authorName}
\ofoot[\pagemark]{\pagemark}  % Set outer footer to page number


%----------------------------------------------------------------------------------------------------------
%| DOCUMENT SETTINGS                                                                                     |
%----------------------------------------------------------------------------------------------------------
\renewcommand*{\chapterheadstartvskip}{\vspace*{0pt}}
\renewcommand{\arraystretch}{1.25}
\setcounter{tocdepth}{2}
\numberwithin{figure}{chapter}  % Reset figure counter at start of each chapter and prefix with chapter number
\numberwithin{table}{chapter}   % Reset table counter at start of each chapter and prefix with chapter number
\numberwithin{listing}{chapter} % Reset listing counter at start of each chapter and prefix with chapter number (if you have a listing environment)
\newcommand{\markup}[1]{\textbf{#1}}
\pagestyle{scrheadings}  % Set page style to scrheadings
\renewcommand{\titlepagestyle}{scrheadings}
\renewcommand{\partpagestyle}{scrheadings}
\renewcommand{\chapterpagestyle}{scrheadings}
\renewcommand{\indexpagestyle}{scrheadings}


\makeatletter
\@addtoreset{equation}{chapter}
\@addtoreset{figure}{chapter}
\@addtoreset{table}{chapter}
\renewcommand\theequation{\thechapter.\@arabic\c@equation}
\renewcommand\thefigure{\thechapter.\@arabic\c@figure}
\renewcommand\thetable{\thechapter.\@arabic\c@table}
\makeatother

\parindent 1pt
\parskip   3pt
\clubpenalty         = 10000
\widowpenalty        = 10000
\displaywidowpenalty = 10000

%----------------------------------------------------------------------------------------------------------
%| TEXT SUBSTITUTIONS                                                                                    |
%----------------------------------------------------------------------------------------------------------
% Commands for text substitutions
\newcommand{\company}[1]{\renewcommand{\company}{#1}}
\newcommand{\university}[1]{\renewcommand{\university}{#1}}
\newcommand{\universityGer}[1]{\renewcommand{\universityGer}{#1}}
\newcommand{\documentType}[1]{\renewcommand{\documentType}{#1}}
\newcommand{\authorName}[1]{\renewcommand{\authorName}{#1}}
\newcommand{\submissionDate}[1]{\renewcommand{\submissionDate}{#1}}
\newcommand{\projectDuration}[1]{\renewcommand{\projectDuration}{#1}}
\newcommand{\uniAdvisor}[1]{\renewcommand{\uniAdvisor}{#1}}
\newcommand{\compAdvisor}[1]{\renewcommand{\compAdvisor}{#1}}
\newcommand{\uniDepartment}[1]{\renewcommand{\uniDepartment}{#1}}
\newcommand{\uniDepartmentGer}[1]{\renewcommand{\uniDepartmentGer}{#1}}
\newcommand{\compDepartment}[1]{\renewcommand{\compDepartment}{#1}}
\newcommand{\thesisTitle}[1]{\renewcommand{\thesisTitle}{#1}}
\newcommand{\thesisTitleGer}[1]{\renewcommand{\thesisTitleGer}{#1}}
% ... (Other commands are the same)
\newcommand{\MakeFrontCover}{
    \input{appendices/A_Cover.tex}
}
%----------------------------------------------------------------------------------------------------------
%| SYMBOLS DIRECTORY (if required)                                                                      |
%----------------------------------------------------------------------------------------------------------
% ... (specify any symbols directory here)

%----------------------------------------------------------------------------------------------------------