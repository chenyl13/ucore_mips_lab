\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{noithesis}
\LoadClass[12pt, a4paper]{article}
\RequirePackage{enumerate}
%\RequirePackage{graphicx,subfigure}
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
\RequirePackage{txfonts}
\RequirePackage{CJK,ctex}
\RequirePackage{longtable,multirow}
\RequirePackage{color,xcolor}
\RequirePackage{courier}
\RequirePackage{ifthen}
\RequirePackage{calc}
\RequirePackage{ifpdf}
\RequirePackage{titling}
\RequirePackage{listings}
\RequirePackage{fancyhdr}
\RequirePackage{algorithm,algorithmic}
\RequirePackage{booktabs}
\RequirePackage{ulem}
\RequirePackage{setspace}

% In case you need to adjust margins:
\topmargin=-0.45in      %
\evensidemargin=0in     %
\oddsidemargin=0in      %
\textwidth=6.5in        %
\textheight=9.0in       %
\headsep=0.25in         %

\pagestyle{fancy}
\renewcommand{\headheight}{20pt}
\renewcommand{\headrulewidth}{0.2pt}
\renewcommand{\footrulewidth}{0pt}
\lhead{\parbox{\textwidth}{\textsf{\footnotesize 32λMIPS������ʵ�������ĵ�}}}
\chead{}
\rhead{\parbox{\textwidth}{\raggedleft\textsf{\footnotesize}}}
\lfoot{\parbox{\textwidth}{\textsf{\footnotesize}}}
\cfoot{}
\rfoot{\parbox{\textwidth}{\raggedleft\footnotesize \thepage{}}}

%% ����
\newcommand{\song}{\CJKfamily{song}}    % ����
\def\songti{\song}
\newcommand{\fs}{\CJKfamily{fs}}        % ������
\def\fangsong{\fs}
\newcommand{\kai}{\CJKfamily{kai}}      % ����
\def\kaishu{\kai}
\newcommand{\hei}{\CJKfamily{hei}}      % ����
\def\heiti{\hei}
\newcommand{\li}{\CJKfamily{li}}        % ����
\def\lishu{\li}
\newcommand{\you}{\CJKfamily{you}}      % ��Բ
\def\youyuan{\you}

%% �ֺ�
\newlength\noilinespace
\newcommand{\noiChooseFont}[2]{
   \setlength{\noilinespace}{#2*\real{#1}}
   \fontsize{#2}{\noilinespace}\selectfont}
\def\noiDefineFontsize#1#2{
  \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{
    \noiChooseFont{##1}{#2}}}
\noiDefineFontsize{chuhao}{42bp}
\noiDefineFontsize{xiaochu}{36bp}
\noiDefineFontsize{yihao}{26bp}
\noiDefineFontsize{xiaoyi}{24bp}
\noiDefineFontsize{erhao}{22bp}
\noiDefineFontsize{xiaoer}{18bp}
\noiDefineFontsize{sanhao}{16bp}
\noiDefineFontsize{xiaosan}{15bp}
\noiDefineFontsize{sihao}{14bp}
\noiDefineFontsize{banxiaosi}{13bp}
\noiDefineFontsize{xiaosi}{12bp}
\noiDefineFontsize{dawu}{11bp}
\noiDefineFontsize{wuhao}{10.5bp}
\noiDefineFontsize{xiaowu}{9bp}
\noiDefineFontsize{liuhao}{7.5bp}
\noiDefineFontsize{xiaoliu}{6.5bp}
\noiDefineFontsize{qihao}{5.5bp}
\noiDefineFontsize{bahao}{5bp}

\renewcommand{\maketitle} {
 \null
 \vskip 2em
\begin{center}
{\xiaoer \bf \@title \par} \vskip 1em {\@author\par}
\end{center}
 \vskip 1em
}

\renewenvironment{abstract}{
\noindent
\footnotesize
\textbf{ժ~~~Ҫ}:
\song
}{}
\newenvironment{keywords}{
\noindent
\footnotesize
\textbf{�ؼ���}:
\song
}{}
\renewcommand\refname{�ο�����}
\renewcommand\proofname{\textbf{֤��}}
\renewcommand\figurename{ͼ}
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
  #1\@addpunct{:}]\ignorespaces
}{\popQED\endtrivlist\@endpefalse}

\newenvironment{solve}[1][��]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
  #1\@addpunct{:}]\ignorespaces
}{\popQED\endtrivlist\@endpefalse}


\renewcommand\tableofcontents{%
  \section*{Ŀ~~¼}
  \@starttoc{toc}\normalsize}

\theoremstyle{definition}
\newtheorem{definition}{����}
\newtheorem{example}{��}

\theoremstyle{plain}
\newtheorem{theorem}{����}
\newtheorem{lemma}{����}
\newtheorem{corollary}{����}

\renewcommand\section{\@startsection{section}{1}{\z@}%
                     {-24bp \@plus -1ex \@minus -.2ex}%
                     {6bp \@plus .2ex}%
                     {\hei \sihao[1.429]}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                        {-16bp \@plus -1ex \@minus -.2ex}%
                        {6bp \@plus .2ex}%
                        {\hei\banxiaosi[1.538]}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                           {-16bp \@plus -1ex \@minus -.2ex}%
                           {6bp \@plus .2ex}%
                           {\hei \xiaosi[1.667]}}

\if 0

\fi