%----------------------------------------------------------------------------------------------------------
%| DOCUMENT CLASS                                                                                        |
%----------------------------------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}
\RequirePackage{xkeyval}  % <-- Place it here
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
    headinclude,
    footinclude=false,
    numbers=noenddot
]{scrreprt}

%----------------------------------------------------------------------------------------------------------
%| PACKAGE INCLUSION                                                                                     |
%----------------------------------------------------------------------------------------------------------
\usepackage{setspace}
\usepackage{wrapfig}
\usepackage{graphicx}
\usepackage[english]{babel}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{xurl}
\usepackage[automark]{scrlayer-scrpage}
\usepackage[plainpages=false,pdfpagelabels,hypertexnames=false]{hyperref}
\usepackage{pdfpages}
\usepackage{xcolor}
\usepackage{multirow}
\usepackage{scrhack}
\usepackage[intlimits]{amsmath}
\usepackage[printonlyused]{acronym}
\usepackage{media9}
\usepackage{nameref}
\usepackage{booktabs}
\usepackage{amssymb}
\usepackage{caption}
\usepackage{colortbl}
\usepackage{trfsigns}
\usepackage{pdflscape}
\usepackage{tabularx}
\usepackage[numbers]{natbib}
\usepackage{epigraph}
\usepackage{lipsum}
\usepackage{microtype}
\usepackage[newfloat, outputdir=output]{minted}
\usepackage{verbatim}
\usepackage{float}
\usepackage{siunitx}
\usepackage{makecell}
\usepackage[left=2.5cm,top=2cm,right=2cm,bottom=2.5cm,bindingoffset=0.5cm]{geometry}

%----------------------------------------------------------------------------------------------------------
%| DOCUMENT SETTINGS                                                                                     |
%----------------------------------------------------------------------------------------------------------
\renewcommand*{\chapterheadstartvskip}{\vspace*{0pt}}
\renewcommand{\arraystretch}{1.25}
\setcounter{tocdepth}{2}
\counterwithout{table}{chapter}

\newcommand{\markup}[1]{\textbf{#1}}

\pagestyle{scrplain}
\ihead[]{\headmark}
\ohead[]{\documentType\ \authorName}
\cfoot[]{}
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

\definecolor{white}{rgb}{1,1,1}
\definecolor{commentgreen}{rgb}{0,0.5,0}
\definecolor{tabHead}{rgb}{0,0.6157,0.9255}

\fboxrule0.4mm

\colorlet{chapter}{commentgreen}
\addtokomafont{chapter}{\color{chapter}}
\colorlet{section}{commentgreen}
\addtokomafont{section}{\color{section}}

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
% Default values
\providecommand{\company}{Your Company Name}
\providecommand{\university}{Your Uni}
\providecommand{\universityGer}{Deine Uni}
\providecommand{\Software}{Software Name}
\providecommand{\documentType}{Document Type}
\providecommand{\authorName}{Author Name}
\providecommand{\submissionDate}{Date}
\providecommand{\uniAdvisor}{University Advisor}
\providecommand{\compAdvisor}{Company Advisor}
\providecommand{\uniDepartment}{University Department}
\providecommand{\compDepartment}{Company Department}
\providecommand{\thesisTitle}{Title of the Bachelor Thesis}


\newcommand{\MakeFrontCover}{
    \input{appendices/A_Cover.tex}
}
%----------------------------------------------------------------------------------------------------------
%| SYMBOLS DIRECTORY (if required)                                                                      |
%----------------------------------------------------------------------------------------------------------
% ... (specify any symbols directory here)
\definecolor{RSColor}{RGB}{68, 153, 228}
\definecolor{HMColor}{RGB}{233, 97, 91}