\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Thesis}[2016/03/02 v1.0 Thesis Class]
\LoadClass[11pt, twoside, a4paper]{report}

%text layout
%\RequirePackage[l2tabu, orthodox]{nag} %%%uncomment to see what you've been doing wrong
\RequirePackage[utf8x]{inputenc}
%%%%%disabled for debugging purposes
\RequirePackage[xindy,toc]{glossaries}
\RequirePackage{hyperref}
%hyperref options
\hypersetup{
  colorlinks   = true, %Colours links instead of ugly boxes
  urlcolor     = black, %Colour for external hyperlinks
  linkcolor    = black, %Colour of internal links
  citecolor   = SchoolColor %Colour of citations
}
%\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage{makecell}
\RequirePackage{wrapfig}
\RequirePackage{color}
\RequirePackage{pdfpages}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\doublespacing
\RequirePackage{parskip}
\RequirePackage{fancyvrb}
\RequirePackage{microtype}
\RequirePackage{listings}
\RequirePackage{blindtext}
\usepackage[margin=10pt,font=small,labelfont=bf]{caption}
\usepackage[square,sort,comma,numbers]{natbib}
\setlength{\bibsep}{5pt plus 2ex minus 2ex} %lines between references
%fonts
%avoid lone lines at the beginnig or bottom of page, increase if necessary
\widowpenalty=300
\clubpenalty=300
\raggedbottom %this is to avoid random spaces in the middle of the page, might create problems with floats.


%%%%%%%%%%packages from frontpage

%\usepackage[T1]{fontenc}
%\usepackage[latin1]{inputenc}
%\usepackage{graphicx} % For commande \includegraphics
%\usepackage[usenames,dvipsnames,svgnames,table]{xcolor} %% To color in violet the text
%\frenchspacing
\usepackage[absolute]{textpos} % to place elements in the page
\usepackage{multicol} % To write summary in two columns-mode
\usepackage{calc} % To calculate textwidth
\usepackage[pass]{geometry}% That nicely create a one-page template
\usepackage{tikz} %% Make the square.








%%%%%%% QUALITY OF LIFE COMMANDS %%%%%%%%%%
% ITALICS
\newcommand{\cer}{\textit{S.cerevisiae}}
\newcommand{\coli}{\textit{E.coli}} 
\newcommand{\cele}{\textit{C.elegans}} 
\newcommand{\invivo}{\textit{in vivo}}
\newcommand{\invitro}{\textit{in vitro}}
\newcommand{\Invivo}{\textit{In vivo}}
\newcommand{\Invitro}{\textit{In vitro}}
% CTD
\newcommand{\ctdlong}{\textsc{Tyr\textsubscript{1}-Ser\textsubscript{2}-Pro\textsubscript{3}-Thr\textsubscript{4}-Ser\textsubscript{5}-Pro\textsubscript{6}-Ser\textsubscript{7}}}
\newcommand{\ctdshort}{YSPTSPS}
\newcommand{\tyr}{\textsc{Tyr\textsubscript{1}}}
\newcommand{\sert}{\textsc{Ser\textsubscript{2}}}
\newcommand{\thr}{\textsc{Thr\textsubscript{4}}}
\newcommand{\serf}{\textsc{Ser\textsubscript{5}}}
\newcommand{\sers}{\textsc{Ser\textsubscript{7}}}
\newcommand{\FtoT}{5'$\rightarrow$3'}
\newcommand{\TtoF}{3'$\rightarrow$5'}

%%%%%%% TODOLIST COMMANDS %%%%%%%
\newcommand{\TODO}[2][]
{\todo[color=orange, #1]{#2}}







%glossaries

%\RequirePackage{glossary-mcols} this and the following are required to put the glossary in two columns.
%\setglossarystyle{mcolindex} 
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
\renewcommand\listfigurename{Figures}
\renewcommand\listtablename{Tables}


%quotchap
\RequirePackage[palatino]{quotchap}
\renewcommand*{\chapterheadstartvskip}{\vspace*{-0.5\baselineskip}}
\renewcommand*{\chapterheadendvskip}{\vspace{1.3\baselineskip}}
\definecolor{chaptergrey}{rgb}{0.6471, 0.1098, 0.1882} % for chapter numbers



%%%%%%%%%%%%%%%%%%%%%%VARIABLE DEFINITION%%%%%%%%%%%%%%%%%%%
%                                                          %
%                     VARIABLE DEFINITION                  %
%                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




\newcommand{\PhDTitleFR}{Analyse de la voie de terminaison ``road-block" } %% Titre en Français
\newcommand{\PhDkeywordsFR}{Roadblock, terminaison, transcription} %% 3 à 6 mots clefs
\newcommand{\PhDsumFR}{\input{frontmatter/abstractFR}} %% Résumé


\newcommand{\PhDTitleEN}{Genomewide analysis of road-block termination} %% Title
\newcommand{\PhDkeywordsEN}{road-block, transcription, termination} %% 3-6 Keywords
\newcommand{\PhDsumEN}{\input{frontmatter/abstractEN}} %% Summary

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 
 \label{Personnal}
\newcommand{\PhDname}{M. Tito Candelli} % Civility, first name and name 
\newcommand{\NNT}{201XX} %% Your NNT numer (the Library will attribute one...)
\newcommand{\ecodocnum}{577} % Accrediation number
\newcommand{\ecodoctitle}{Structure et dynamique des syst\`{e}me vivants} % Full name of the doctorale school
\newcommand{\PhDspeciality}{Bioinformatique} % Speciality 
\newcommand{\PhDworkingplace}{Universit\'{e} Paris-Sud} %PhD working place (must be one of these : 
\newcommand{\defenseplace}{"Institut Jacques Monod"} %Place of defense
\newcommand{\defensedate}{12 December 2016} % Date of defense
\newcommand{\logoED}{\includegraphics[scale=1.2]{logo/SDSV.png}} % Logo of doctoral school. Check the name of the correct file in the /logo folder.
\newcommand{\logoEt}{\includegraphics[scale=1.2]{logo/UPS.png}} % Must be the logo corresponding to %PhD working place. Check the name of the correct file in the /logo folder.
\newcommand{\vpos}{1} %% You can modify vertical position (leave cm as unit) in order to align horizontally both images




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%JURY%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Choice of the jury's president is made during the defense. Thus, it must be specified only for the second file deposition in ADUM.
% All the jury members listed here must have been present during the defense.
\label{Jury}
%%% Jury member n1 (Président) %%%
\newcommand{\jurynameA}{Domenico Libri}
\newcommand{\jurygenderA}{M.} % M. or Mme. / Mrs.
\newcommand{\juryadressA}{Institut Jacques Monod}
\newcommand{\jurygradeA}{Directeur de recherche}
\newcommand{\juryroleA}{Directeur de th\'{e}se} % 
%%% Jury member n2 (Rapporteur) %%%
\newcommand{\jurynameB}{Alain Jaquier}
\newcommand{\jurygenderB}{M.} % M. or Mme. / Mrs.
\newcommand{\juryadressB}{Institut Pasteur}
\newcommand{\jurygradeB}{Derecteur de recherche}
\newcommand{\juryroleB}{Rapporteur}
%%% Jury member n3 (Rapporteur) %%%
\newcommand{\jurynameC}{Vincent Geli}
\newcommand{\jurygenderC}{M.} % M. or Mme. / Mrs.
\newcommand{\juryadressC}{CRCM}
\newcommand{\jurygradeC}{Directeur de recherche}
\newcommand{\juryroleC}{Rapporteur}
%%% Jury member n6 (Examinateur) %%%
\newcommand{\jurynameF}{Daniel Gautheret}
\newcommand{\jurygenderF}{M.} % M. or Mme. / Mrs.
\newcommand{\juryadressF}{Univ Paris-sud}
\newcommand{\jurygradeF}{Professeur}
\newcommand{\juryroleF}{examinateur}

\definecolor{SchoolColor}{rgb}{0.6471, 0.1098, 0.1882} % Crimson






%%%%%%%%%%%%%%%%%%%%%%FRONTMATTER%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                          %
%                     FRONTMATTER                          %
%                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\frontmatter}{
	\maketitle
	\copyrightpage
	\abstractpage
	\addcontentsline{toc}{chapter}{Table of Contents}
	\tableofcontents
	\clearpage
	\addcontentsline{toc}{chapter}{List of Figures}
	\listoffigures 
	\clearpage
	%\addcontentsline{toc}{chapter}{List of Tables}
	%\listoftables
	%\clearpage
	\addcontentsline{toc}{chapter}{Preface}
	\preface
	\clearpage
	\addcontentsline{toc}{chapter}{Acknowledgments}
	\acknowledgments
	\clearpage
	\dedicationpage

	\setcounter{page}{1}
	\pagenumbering{arabic}
	

	
}





%%%%%%%%%%%%%%%%%%%%%%%%%TITLEPAGE%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                          %
%                        TITLEPAGE                         %
%                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{
%% Positionner le cadre dans la page.
	%% Modifier yshift modifie la position des bords haut et bas du cadre. Modifier xshift modifie la position des bords gauche et droit du cadre. Il faut toujours les modifier deux par deux (ceux qui ont la même valeur ensemble).

\begin{large}
\newgeometry{textheight=150ex,textwidth=40em,top=30pt,headheight=30pt,headsep=30pt,inner=80pt}
\thispagestyle{empty}
\singlespacing
\begin{tikzpicture}[remember picture,overlay,color=blue!20!red!45!black!75!]
	\draw[very thick]
		([yshift=-160pt,xshift=45pt]current page.north west)--   %160  
		([yshift=-160pt,xshift=-45pt]current page.north east)--    
		([yshift=35pt,xshift=-45pt]current page.south east)--      
		([yshift=35pt,xshift=45pt]current page.south west)--cycle; 
\end{tikzpicture}


%% Position du NNT
\begin{textblock}{13}(1.65,3.3)
  NNT : \NNT
\end{textblock}


%% Logos en haut de la page
\begin{textblock}{1}(1.15,1)
\includegraphics[height=2.4cm]{logo/UPSac.png} %% Logo de Paris Saclay
\end{textblock}

\begin{textblock}{1}(12,\vpos)
\logoEt %% Logo de votre établissement
\end{textblock}

\vspace{6cm}
%% Texte
\color{blue!20!red!45!black} %% Couleur violette du premier paragraphe
  \begin{center}    
    \LARGE\textsc{Th\`{e}se de doctorat\\ de l'Universit\'{e} Paris-Saclay} \\
    \LARGE{\textsc{pr\`{e}par\`{e} \PhDworkingplace}} \\ \bigskip
  	\color{black} %% Couleur noir du reste du texte
	\vfill
    \Large{Ecole doctorale n$^{\circ}\ecodocnum$}\\ %% Numéro ED
    \Large{\ecodoctitle}  \\

    \Large{Sp\`{e}cialit\`{e} de doctorat: \PhDspeciality} %% Spécialité
    \vfill  
    \Large{par}
    \vfill
    \LARGE{\textbf{\textsc{\PhDname}}} %% Nom du docteur
    \vfill
    \Large{\PhDTitleEN} %% Titre de la thèse
    \vfill
    \bigskip
\end{center}
\color{black}
%% Jury
\begin{flushleft}
Th\`{e}se pr\`{e}sent\`{e}e et soutenue \`{a} \defenseplace, le \defensedate. \\
\bigskip
Composition du Jury :
\end{flushleft}
%% Members of the jury
%% If needed, one can add jurymemberG or remove one jury member.

\begin{center}
\begin{tabular}{llll}

    \jurygenderA & \textsc{\jurynameA}  & \jurygradeA & (\juryroleA) \\
    \null & \null & \juryadressA &\\   
   
    \jurygenderB & \textsc{\jurynameB}  & \jurygradeB & (\juryroleB) \\
    \null & \null & \juryadressB &\\ 
    
    \jurygenderC & \textsc{\jurynameC}  & \jurygradeC & (\juryroleC) \\
    \null & \null & \juryadressC &\\ 
    
    \jurygenderF & \textsc{\jurynameF}  & \jurygradeF & (\juryroleF) \\
    \null & \null & \juryadressF &\\ 
   
  \end{tabular}    
\end{center}
\restoregeometry
\doublespacing
\end{large}
\newpage
\thispagestyle{empty}
\mbox{}
}






%%%%%%%%%%%%%%%%%%%%%%%%%COPYRIGHT%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                          %
%                        COPYRIGHT                         %
%                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\copyrightpage}{
	\newpage
	\thispagestyle{empty}
	\vspace*{\fill}
	\scshape \noindent \small \copyright \small 2016\hspace{3pt}-- Tito Candelli \\
	\noindent all rights reserved.
	\vspace*{\fill}
	\newpage
	\rm
}


%%%%%%%%%%%%%%%%%%%%%%%%%%ABSTRACT%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                          %
%                         ABSTRACT                         %
%                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\abstractpage}{
	\singlespace
	\newpage
	\pagenumbering{roman}
	\setcounter{page}{4}
	\pagestyle{fancy}
	\renewcommand{\headrulewidth}{0.0pt}
	\vspace*{35pt}
	\begin{center}
	\huge \textcolor{SchoolColor}{\PhDTitleEN} \normalsize \\
	\vspace*{35pt}
	\scshape Abstract \\ \rm
	\end{center}
	\input{frontmatter/abstractEN}
	%
	\vspace{15pt}	
	\begin{center}
	%\Large \textcolor{SchoolColor}{\@title} \normalsize \\
	\vspace*{20pt}
	\scshape R\'{e}sum\'{e} \\ \rm
	\end{center}
	\input{frontmatter/abstractFR}
	%
	\vspace*{\fill}
	\newpage \lhead{} \rhead{}
	\cfoot{\thepage}
	\doublespacing
}

%%%%%%%%%%%%%%%%%%%%%%%%%DEDICATION%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                          %
%                        DEDICATION                        %
%                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\dedicationpage}{
	\newpage \thispagestyle{fancy} \vspace*{\fill}
	\scshape \noindent \input{frontmatter/dedication}
	\vspace*{\fill} \newpage \rm
	\clearpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%Preface%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                          %
%                        Preface                           %
%                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\preface}{
	\chapter*{Preface}
	\noindent
	\input{frontmatter/preface}
	\vspace*{\fill} %\newpage
	\clearpage
}

%%%%%%%%%%%%%%%%%%%%%%ACKNOWLEDGEMENTS%%%%%%%%%%%%%%%%%%%%%%
%                                                          %
%                        ACKNOWLEDGEMENTS                  %
%                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}
	\noindent
	\input{frontmatter/thanks}
	\vspace*{\fill} %\newpage
	\clearpage
}

%%%%%%%%%%%%%%%%%%%%%%endmatter%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                          %
%                        endmatter                         %
%                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\backpage}{
\clearpage
\thispagestyle{empty}
\begin{textblock}{10}(2,.3)
\logoED
\end{textblock}
\begin{textblock}{11}(2.3,1.6) %{13.9}(1.7,1.6)
\vfill
\setlength{\fboxsep}{5mm}
\noindent\fbox{\parbox{\linewidth-2\fboxrule-2\fboxsep}{
\large{\textbf{Title :~}\PhDTitleEN}\\

\small{\textbf{Keywords :~} \PhDkeywordsEN 
\begin{multicols}{2}
\textbf{Abstract :~}\PhDsumEN
\end{multicols}}
}}

\vfill
\vspace{1cm}
\bigskip


\vfill
\setlength{\fboxsep}{5mm}
\noindent\fbox{\parbox{\linewidth-2\fboxrule-2\fboxsep}{
\large{\textbf{Titre :~}\PhDTitleFR}\\

\small{\textbf{Mots clefs :~} \PhDkeywordsFR 
\begin{multicols}{2}
\textbf{R\'esum\'e :~}\PhDsumFR
\end{multicols}}
}}

\vfill
\end{textblock}

\begin{textblock}{13}(13,14.6)
\includegraphics[height=2cm]{logo/logoEgrey.png}
\end{textblock}

\parindent=0pt 
\begin{textblock}{10}(2.2,14.8)\color{blue!20!red!45!black}{\footnotesize{\textbf{Universit\'e Paris-Saclay}\\Espace Technologique / Immeuble Discovery \\
Route de l'Orme aux Merisiers RD 128 / 91190 Saint-Aubin, France}}
\end{textblock}
}


\newcommand{\backmatter}{
\printglossaries
\singlespacing
\addcontentsline{toc}{chapter}{Bibliography}
\bibliographystyle{acm}
\bibliography{references,fixed_references}
\backpage
}
