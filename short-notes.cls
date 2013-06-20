%%
%% This is file `short-notes.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% classes.dtx  (with options: `short-notes,common,short-common')
%% Copyright (C) 2011 by Clemens Koppensteiner
%% -------------------------------------------
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at
%%  your option) any later version.
%% The latest version of this license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{short-notes}
   [2011/07/22 v0.2
     A class for short notes
   ]
\LoadClassWithOptions{scrartcl}
\RequirePackage{xstring}
\RequirePackage{iftex}
\newif\ifkindledxlandscape
\newif\ifkindledxportrait
\newif\ifkindledx
\newif\ifbw
\newif\iffinal
\newif\ifnumbertheorems
\numbertheoremstrue
\newif\ifnumberinsections
\newif\ifbiblatexalpha
\newif\ifcgs
\IfEndWith{\jobname}{\detokenize{-kindledxlandscape}}{\kindledxlandscapetrue}{}
\IfEndWith{\jobname}{\detokenize{-kindledxportrait}}{\kindledxportraittrue}{}
\IfEndWith{\jobname}{\detokenize{-bw}}{\bwtrue}{}
\IfEndWith{\jobname}{\detokenize{-cgs}}{\cgstrue}{}
\DeclareOption{kindledxlandscape}{
    \kindledxlandscapetrue
}
\DeclareOption{kindledxportrait}{
    \kindledxportraittrue
}
\DeclareOption{bw}{
    \bwtrue
}
\DeclareOption{final}{
    \finaltrue
}
\DeclareOption{no-theorem-numbers}{
    \numbertheoremsfalse
}
\DeclareOption{number-in-sections}{
    \numberinsectionstrue
}
\DeclareOption{biblatex-alpha}{
    \biblatexalphatrue
}
\DeclareOption{gcs}{
    \gcstrue
}

\ProcessOptions\relax

\ifkindledxportrait\kindledxtrue\fi
\ifkindledxlandscape\kindledxtrue\fi
\ifkindledx\bwtrue\fi
\KOMAoptions{
    fontsize=10pt,
    footinclude=false,
    headinclude=false,
    pagesize,
}
\recalctypearea
\ifkindledxlandscape
    \RequirePackage[papersize={19.5cm,12.5cm},lmargin=0.2cm,rmargin=5cm,marginparwidth=4.5cm,marginparsep=0.3cm,bottom=0.2cm,top=0.8cm, headsep=0.3cm,footskip=0cm,twoside=false]{geometry}
\fi

\ifkindledxportrait
    \RequirePackage[papersize={13.3cm,18.8cm},lmargin=0.2cm,rmargin=0.5cm,bottom=0.2cm,top=0.8cm,headsep=0.3cm,footskip=0cm,twoside=false]{geometry}
\fi
\RequirePackage{scrpage2}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm,thmtools}
\RequirePackage{mathtools,extpfeil,xfrac}
\RequirePackage{mparhack}  % correct placement of margin notes
\iffinal
    \RequirePackage[disable]{todonotes}
\else
    \RequirePackage{todonotes}
\fi
\RequirePackage{csquotes}
\ifXeTeX
    \RequirePackage{polyglossia}
    \setmainlanguage{english}
\else
    \RequirePackage{babel}
\fi
\RequirePackage{paralist}
\setdefaultenum{(i)}{(a)}{(A)}{1.}
\RequirePackage{engord}
\RequirePackage{needspace}
\RequirePackage{dtklogos}
\RequirePackage[backend=biber,
\ifbiblatexalpha
    style=alphabetic
\fi
    ]{biblatex}
\RequirePackage{etoolbox}
\ifluatex
    \RequirePackage{lualatex-math}
\fi
\ifbw
    \colorlet{sectioningcolor}{black}
\else
    \colorlet{sectioningcolor}{cyan!15!blue}
\fi
\KOMAoptions{numbers=enddot}

\ifbw
    \setkomafont{title}{\normalfont\normalcolor\sffamily\scshape\Large\color{sectioningcolor}}
    \setkomafont{part}{\normalfont\normalcolor\sffamily\bfseries\Large\color{sectioningcolor}}
    \setkomafont{partnumber}{\normalfont\normalcolor\sffamily\bfseries\Large\color{sectioningcolor}}
    \setkomafont{section}{\normalfont\normalcolor\sffamily\scshape\large\color{sectioningcolor}}
    \setkomafont{subsection}{\normalfont\normalcolor\sffamily\scshape\color{sectioningcolor}}
    \setkomafont{sectionentry}{\normalfont\normalcolor\sffamily\scshape}
    \setkomafont{subsubsection}{\normalfont\normalcolor\sffamily\scshape\color{sectioningcolor}}
\else
    \setkomafont{title}{\normalfont\normalcolor\scshape\LARGE\color{sectioningcolor}}
    \setkomafont{part}{\normalfont\normalcolor\bfseries\large\color{sectioningcolor}\centering}
    \setkomafont{partnumber}{\normalfont\normalcolor\bfseries\large\color{sectioningcolor}\centering}
    \setkomafont{section}{\normalfont\normalcolor\scshape\large\color{sectioningcolor}\centering}
    \setkomafont{subsection}{\normalfont\normalcolor\scshape\color{sectioningcolor}}
    \setkomafont{sectionentry}{\normalfont\normalcolor\scshape}
    \setkomafont{subsubsection}{\normalfont\normalcolor\color{sectioningcolor}}
\fi
\newcommand*{\appendixmore}{%
    \renewcommand*{\othersectionlevelsformat}[3]{%
        \ifstr{##1}{section}{\appendixname~}{}%
        ##3\autodot\enskip}
    \renewcommand*{\sectionmarkformat}{%
        \appendixname~\thesection\autodot\enskip}}
\setkomafont{paragraph}{\normalfont\normalcolor\sffamily\bfseries}
\setkomafont{subparagraph}{\normalfont\normalcolor\sffamily\itshape}
\pagestyle{scrheadings}
\AtBeginDocument{
    \clearscrheadfoot
    \let\@@title\@title
    \ihead{\normalfont\scshape\color{gray}\@@title}
    \chead{}
    \ohead{\pagemark}
    \cfoot[\pagemark]{}
    \setheadsepline{0.5pt}
}
\RequirePackage{tikz}
\usetikzlibrary{
    positioning,
    calc,
    arrows,
    decorations.markings,
    decorations.pathmorphing,
    decorations.pathreplacing,
    matrix,
    intersections}
\tikzstyle{every picture}+=[>=latex]
\tikzset{commutative diagram/.style={
    matrix of math nodes,
    column sep=2.5em,
    row sep=2.5em,
    text height=1.5ex,
    text depth=0.25ex}}
\tikzset{spaced commutative diagram/.style={
    commutative diagram,
    column sep=3.5em,
    row sep=3.5em}}
\tikzset{commutative diagram arrows/.style={
    ->,
    font=\small}}
\tikzset{descr/.style={fill=white,inner sep=1pt}}
\ifkindledxportrait
    \newcommand\remark{\footnote}
\else
    \newcommand\remark[1]{\leavevmode\marginpar{\footnotesize\itshape #1}}
\fi

\newcommand\sidepicture[2][]{\marginpar{#2\\[0.5em]{\footnotesize\itshape #1}}}
\newcommand\reference[1]{\remark{\textit{Reference:} \normalfont #1}}
\usepackage{comment}
\newcommand\cgsformat{\small\color{black!60!green}}
\ifcgs
    \newcommand\textcgs[1]{{\cgsformat#1}}
    \specialcomment{cgs}{\begingroup\cgsformat}{\endgroup}
    \newcommand\cgsIntro{}
\else
    \newcommand\textcgs[1]{}
    \excludecomment{cgs}
    \newcommand\cgsIntro{}
\fi
\def\ck@todooptions{}
\def\todooptions#1{\def\ck@todooptions{#1}}
\let\oldtodo\todo
\def\todo{\@ifnextchar[{\ck@todo}{\ck@todo[]}}
\def\ck@todo[{\expandafter\oldtodo\expandafter[\ck@todooptions,}
\RequirePackage{newunicodechar}
\newunicodechar{ }{ } % no-break space
\newunicodechar{ }{ } % narrow no-break space
\RequirePackage{hyperref}
\RequirePackage{bookmark}
\let\ck@oldtableofcontents\tableofcontents
\def\tableofcontents{%
    \pdfbookmark{\contentsname}{Contents}%
    \ck@oldtableofcontents%
}
\theoremstyle{plain}
\ifnumbertheorems
    \ifnumberinsections
        \newtheorem{Thm}{Theorem}[section]
    \else
\newtheorem{Thm}{Theorem}
    \fi
\else
    \newtheorem*{Thm}{Theorem}
\fi
\ifnumbertheorems
    \newtheorem{Fact}[Thm]{Fact}
    \newtheorem{Claim}[Thm]{Claim}
    \newtheorem{Prop}[Thm]{Proposition}
    \newtheorem{Cor}[Thm]{Corollary}
    \newtheorem{CorAd}[Thm]{Corollary*}
    \newtheorem{Lem}[Thm]{Lemma}
    \newtheorem{LemAd}[Thm]{Lemma*}
    \newtheorem{Alg}[Thm]{Algorithm}
    \newtheorem{DefProp}[Thm]{Definition and Proposition}
    \newtheorem{Conjecture}[Thm]{Conjecture}
\else
    \newtheorem*{Fact}{Fact}
    \newtheorem*{Claim}{Claim}
    \newtheorem*{Prop}{Proposition}
    \newtheorem*{Cor}{Corollary}
    \newtheorem*{CorAd}{Corollary*}
    \newtheorem*{Lem}{Lemma}
    \newtheorem*{LemAd}{Lemma*}
    \newtheorem*{Alg}{Algorithm}
    \newtheorem*{DefProp}{Definition and Proposition}
    \newtheorem*{Conjecture}{Conjecture}
\fi

\theoremstyle{definition}
\ifnumbertheorems
    \newtheorem{Def}[Thm]{Definition}
\else
    \newtheorem*{Def}{Definition}
\fi
\newtheorem*{Notation}{Notation}

\theoremstyle{remark}
\ifnumbertheorems
    \newtheorem{Rem}[Thm]{Remark}
    \newtheorem{RemAd}[Thm]{Remark*}
    \newtheorem{Rems}[Thm]{Remarks}
    \newtheorem{Exercise}[Thm]{Exercise}
    \newtheorem{Q}[Thm]{Question}
    \newtheorem{Warning}[Thm]{Warning}
\else
    \newtheorem*{Rem}{Remark}
    \newtheorem*{RemAd}{Remark*}
    \newtheorem*{Rems}{Remarks}
    \newtheorem*{Exercise}{Exercise}
    \newtheorem*{Q}{Question}
    \newtheorem*{Warning}{Warning}
\fi

\ifnumbertheorems
    \declaretheorem[name=Example,sibling=Thm]{Ex}
    \declaretheorem[name=Examples,sibling=Ex]{Exs}
\else
    \declaretheorem[name=Example,numbered=no]{Ex}
    \declaretheorem[name=Examples,numbered=no]{Exs}
\fi
\let\@version\@empty%
\newcommand{\version}[1]{\gdef\@version{#1}}%
\AtBeginDocument{%
\hypersetup{
pdfinfo={
Title={\@title},
Author={\@author}
}
}%
}

\renewcommand*{\@maketitle}{%
  \clearpage
  \let\footnote\thanks
  \ifx\@extratitle\@empty \else
    \noindent\@extratitle \next@tpage \if@twoside \null\next@tpage \fi
  \fi
  \setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative
  \ifx\@titlehead\@empty \else
    \begin{minipage}[t]{\textwidth}
      \@titlehead
    \end{minipage}\par
  \fi
  \null
  \vskip 2em%
  \begin{center}%
    \ifx\@subject\@empty \else
      {\subject@font \@subject \par}
      \vskip 1.5em
    \fi
    {\titlefont \@title \par}%
    \vskip .5em
    {\ifx\@subtitle\@empty\else\usekomafont{subtitle}\@subtitle\par\fi}%
    \vskip 1em
    {\scshape
      \lineskip .5em%
      \begin{tabular}[t]{c}
        \@author
      \end{tabular}\par
    }%
    {\scshape \@date%
      \ifx\@version\@empty\else{} --- v\@version\fi%
      \par
    }%
    \vskip \z@ \@plus 1em
    {\Large \@publishers \par}
    \ifx\@dedication\@empty \else
      \vskip 2em
      {\Large \@dedication \par}
    \fi
  \end{center}%
  \par
  \vskip 1em
}%
\endinput
%%
%% End of file `short-notes.cls'.
