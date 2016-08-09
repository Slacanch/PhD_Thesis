\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Thesis}[2016/03/02 v1.0 Thesis Class]
\LoadClass[11pt, twoside, a4paper]{report}

%text layout
%\RequirePackage[l2tabu, orthodox]{nag} %%%uncomment to see what you've been doing wrong
\RequirePackage[utf8]{inputenc}
\RequirePackage{hyperref}
\RequirePackage{color}
\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage{graphicx}
%\RequirePackage{fixltx2e} %not required anymore
\RequirePackage{setspace}
\doublespacing
\RequirePackage{parskip}
\RequirePackage{fancyvrb}
\RequirePackage{microtype}
\RequirePackage{listings}
\RequirePackage{blindtext}
\usepackage[square,sort,comma,numbers]{natbib}
\setlength{\bibsep}{5pt plus 2ex minus 2ex} %lines between references
%fonts
%avoid lone lines at the beginnig or bottom of page, increase if necessary
\widowpenalty=300
\clubpenalty=300

%%%%%%% QUALITY OF LIFE COMMANDS %%%%%%%%%%
% ITALICS
\newcommand{\cer}{\emph{S.cerevisiae}}
\newcommand{\coli}{\emph{E.coli}} 
\newcommand{\invivo}{\emph{in vivo}}
\newcommand{\invitro}{\emph{in vitro}}
% CTD
\newcommand{\ctdlong}{\textsc{Tyr\textsubscript{1}-Ser\textsubscript{2}-Pro\textsubscript{3}-Thr\textsubscript{4}-Ser\textsubscript{5}-Pro\textsubscript{6}-Ser\textsubscript{7}}}
\newcommand{\ctdshort}{YSPTSPS}
\newcommand{\tyr}{\textsc{Tyr\textsubscript{1}}}
\newcommand{\sert}{\textsc{Ser\textsubscript{2}}}
\newcommand{\thr}{\textsc{Thr\textsubscript{4}}}
\newcommand{\serf}{\textsc{Ser\textsubscript{5}}}
\newcommand{\sers}{\textsc{Ser\textsubscript{7}}}

%%%%%%% TODOLIST COMMANDS %%%%%%%
\newcommand{\todominor}[2][]
{\todo[color=green, #1]{#2}}
\newcommand{\todomajor}[2][]
{\todo[color=orange, #1]{#2}}
\newcommand{\todocritical}[2][]
{\todo[color=red, #1]{#2}}





%hyperref options
\hypersetup{
  colorlinks   = true, %Colours links instead of ugly boxes
  urlcolor     = black, %Colour for external hyperlinks
  linkcolor    = black, %Colour of internal links
  citecolor   = SchoolColor %Colour of citations
}

%glossaries
\RequirePackage[xindy,toc]{glossaries}
\loadglsentries{acronym_definition}
\setacronymstyle{long-short}  
\makeglossary


%headers
\RequirePackage{fancyhdr}
%\RequirePackage[tiny, md, sc]{titlesec} %don't really know what it does %%%%%%%%%%%%%
\setlength{\headheight}{15pt}
\pagestyle{plain}


%forntmatter
\RequirePackage{titling}
\setcounter{tocdepth}{3} %default is 2, using 3 shows unnumbered subsubsections
\usepackage[titles]{tocloft} %not sure
\usepackage[titletoc]{appendix}
%dunno but maybe useful?
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
%\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}%%%%%%%%%%%%%%%%%%%
%\renewcommand{\cftchapfont}{\normalsize \scshape}%%%%%%%%%%%%%%%%%%
%change name of list of figures and list of tables
\renewcommand\listfigurename{Listing of figures}
\renewcommand\listtablename{Listing of tables}


%quotchap
\RequirePackage[palatino]{quotchap}
\renewcommand*{\chapterheadstartvskip}{\vspace*{-0.5\baselineskip}}
\renewcommand*{\chapterheadendvskip}{\vspace{1.3\baselineskip}}
\definecolor{chaptergrey}{rgb}{0.6471, 0.1098, 0.1882} % for chapter numbers

%%%definitions
% Some definitions.
\def\advisor#1{\gdef\@advisor{#1}}
\def\coadvisorOne#1{\gdef\@coadvisorOne{#1}}
\def\coadvisorTwo#1{\gdef\@coadvisorTwo{#1}}
\def\committeeInternal#1{\gdef\@committeeInternal{#1}}
\def\committeeInternalOne#1{\gdef\@committeeInternalOne{#1}}
\def\committeeInternalTwo#1{\gdef\@committeeInternalTwo{#1}}
\def\committeeExternal#1{\gdef\@committeeExternal{#1}}
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degreeterm#1{\gdef\@degreeterm{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}
% School name and location
\university{Harvard University}
\universitycity{Cambridge}
\universitystate{Massachusetts}
\definecolor{SchoolColor}{rgb}{0.6471, 0.1098, 0.1882} % Crimson






%enable command \frontmatter and make it do a bunch of stuff
\newcommand{\frontmatter}{
	\input{frontmatter/personalize}
	\maketitle
	\copyrightpage
	\abstractpage
	\addcontentsline{toc}{chapter}{Table of Contents}
	\tableofcontents
	\clearpage
	\addcontentsline{toc}{chapter}{List of Figures}
	\listoffigures 
	\clearpage
	\addcontentsline{toc}{chapter}{List of Tables}
	\listoftables
	\clearpage
	\printglossaries
	\clearpage
	\addcontentsline{toc}{chapter}{Acknowledgments}
	\acknowledgments
	\clearpage
	\dedicationpage

	\setcounter{page}{1}
	\pagenumbering{arabic}
	

	
}





%has to be redone
\renewcommand{\maketitle}{
	\thispagestyle{empty}
	\vspace*{\fill}
	\vspace{100pt}
	\begin{center}
	\Huge \textcolor{SchoolColor}{\thetitle} \normalsize \\
	\vspace{100pt}
	\textsc{a dissertation presented \\ by\\
	\theauthor\\ to\\ The Department of \@department\\
	\vspace{12pt}
	in partial fulfillment of the requirements\\
	for the degree of\\ \@degree\\
	in the subject of\\ \@field\\
	\vspace{12pt}
	\@university\\ \@universitycity, \@universitystate\\
	\@degreemonth\ \@degreeyear}
	\end{center} \vspace*{\fill}
}

\newcommand{\copyrightpage}{
	\newpage
	\thispagestyle{empty}
	\vspace*{\fill}
	\scshape \noindent \small \copyright \small 2016\hspace{3pt}-- \theauthor \\
	\noindent all rights reserved.
	\vspace*{\fill}
	\newpage
	\rm
}

\newcommand{\abstractpage}{
	\singlespace
	\newpage
	\pagenumbering{roman}
	\setcounter{page}{3}
	\pagestyle{fancy}
	%\lhead{Thesis advisor: Professor \@advisor} \rhead{\@author}
	\renewcommand{\headrulewidth}{0.0pt}
	\vspace*{35pt}%\vspace*{35pt}
	\begin{center}
	\huge \textcolor{SchoolColor}{\@title} \normalsize \\
	\vspace*{35pt}
	\scshape Abstract \\ \rm
	\end{center}
	\input{frontmatter/abstract}
	%
	\vspace{15pt}	
	\begin{center}
	%\Large \textcolor{SchoolColor}{\@title} \normalsize \\
	\vspace*{20pt}
	\scshape R\'{e}sum\'{e} \\ \rm
	\end{center}
	\input{frontmatter/abstract}
	%
	\vspace*{\fill}
	\newpage \lhead{} \rhead{}
	\cfoot{\thepage}
	\doublespacing
}

\newcommand{\dedicationpage}{
	\newpage \thispagestyle{fancy} \vspace*{\fill}
	\scshape \noindent \input{frontmatter/dedication}
	\vspace*{\fill} \newpage \rm
	\clearpage
}

\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}
	\noindent
	\input{frontmatter/thanks}
	\vspace*{\fill} %\newpage
	\clearpage
}



