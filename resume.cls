\ProvidesClass{resume}
\LoadClass[9pt, letterpaper]{extarticle}

\usepackage[compact]{titlesec}
\usepackage{setspace, color, merriweather, enumitem, multicol, anyfontsize, marginnote}
\usepackage[defaultsans,oldstyle,scale=0.95]{opensans}
\usepackage[marginparwidth=2.0in, marginparsep=0.30in, top=0.8in, bottom=0.7in, left=0.7in, right=3in, papersize={8.5in, 11in}]{geometry}

\date{}
\pagestyle{empty}
\renewcommand\labelitemi{}
\setlist[itemize]{leftmargin=0pt, labelwidth=0pt, topsep=0pt}

\definecolor{text}{RGB}{102, 102, 102}
\definecolor{highlight}{RGB}{32, 121, 199}

\newcommand{\header}[1]{
	{\normalsize\textsf{\textcolor{highlight}{\uppercase{#1}}}}
	\vspace{0.1in}
}

\newenvironment{contact}[4]
	{
		\section*{
			\fontsize{36}{44}\selectfont #1
			\marginpar{
				\vspace{-0.27in}
				\large\raggedright{\textsf{\textbf{#2}}}
				\\
				\large\textsf{\textbf{#3}}
			}
		}
		\subsection*{\normalsize\textsf{\textmd{#4}}}
		\vspace{0.2in}
	}

\newenvironment{job}[4]
	{
		\subsection*{{\Large #1, \textmd{#2 -- \textit{#3}}}}
		\subsubsection*{\textsf{\textmd{\textcolor{text}{\uppercase{#4}}}}}
		\begin{itemize}[before=\color{text}]
		\let\bullet\item
	}
	{
		\end{itemize}
		\vspace{0.2in}
	}

\newenvironment{project}[3]
	{
		\subsection*{\Large #1 \textmd{-- \textit{#2}}}
		\ifx&#3&%
		\else
			\subsubsection*{\textsf{\textmd{\textcolor{text}{#3}}}}
		\fi
		\color{text}
	}
	{
		\vspace{0.2in}
	}

\newenvironment{skills}
	{
		\section*{\header{Skills}}
		\begin{itemize}[before=\color{text}, itemsep=0pt]
		\let\bullet\item
	}
	{
		\end{itemize}
		\vspace{0.2in}
	}

\newenvironment{languages}
	{
		\section*{\header{Languages}}
		\vspace{-0.15in}
		\begin{multicols}{2}
		\begin{itemize}[before=\color{text}, itemsep=0pt]
		\let\bullet\item
	}
	{
		\end{itemize}
		\end{multicols}
	}

\newenvironment{reference}[2]
	{
		\subsection*{\Large #1 \textmd{-- \textit{#2}}}
		\color{text}
	}
	{
		\vspace{0.1in}
	}
