\ProvidesClass{ubu}[Clase para memoria final del profesor novel]

\def\true{true}
\def\false{false}
\DeclareOption{conrubrica}{\def\ubu@rubrica{true}}
\DeclareOption{sinrubrica}{\def\ubu@rubrica{false}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}

\ExecuteOptions{sinrubrica}
\ProcessOptions
\relax

\LoadClass[article, a4paper, final, twoside, openany, 12pt]{memoir}

\RequirePackage[utf8]{inputenc} % utf8 para tildes
\RequirePackage[spanish]{babel} % captions en español
\RequirePackage{fourier}        % fuente
\RequirePackage{xcolor}         % colores
\RequirePackage{graphicx}       % graficos
\graphicspath{{figs/}}

\addto\captionsspanish{% Replace "english" with the language you use
    \renewcommand{\contentsname}{Índice}%
    \renewcommand{\tablename}{Tabla}%
}

\setlrmarginsandblock{35mm}{35mm}{*} % margenes
\checkandfixthelayout

% Variables del documento
\def\eltitulo{Título de la Memoria}
\def\elperiodo{2018/2020}
\def\elnovel{Profesor Novel}
\def\elmentor{Profesor Mentor}
\def\eldepartamento{Dpto.}
\def\elarea{Área}
\newcommand{\titulo}[1]{\def\eltitulo{#1} \title{#1}}
\newcommand{\periodo}[1]{\def\elperiodo{#1}}
\newcommand{\novel}[1]{\def\elnovel{#1} \author{#1}}
\newcommand{\mentor}[1]{\def\elmentor{#1}}
\newcommand{\departamento}[1]{\def\eldepartamento{#1}}
\newcommand{\area}[1]{\def\elarea{#1}}

% estilo de página, footer con número centrado
\makepagestyle{ubu}
\makeoddhead{ubu}{}{}{}
\makeevenhead{ubu}{}{}{}
\makeoddfoot{ubu}{}{\thepage}{}
\makeevenfoot{ubu}{}{\thepage}{}
\pagestyle{ubu}

\def\portada
{
    \frontmatter
    \begin{titlingpage}

        \centering
        \includegraphics[width=0.4\textwidth]{ubu.png}
        
        \vspace*{4.5cm}
        
        {\Large
        \scshape
        Plan de Formación del Profesorado Novel}
        
        \vskip\onelineskip
        
        {\LARGE
        \bfseries
        \scshape
        \eltitulo}
        
        \vskip\onelineskip
        
        {\large
        \scshape
        (Período \elperiodo)}
        
        \vspace*{4.5cm}
        
        \raggedright
        {\large
        \textbf{Profesor Novel:} \elnovel
        
        \vskip0.3\onelineskip
        
        \textbf{Profesor Mentor:} \elmentor
        
        \vspace*{1cm}
        
        \large
        \bfseries
        Departamento de \eldepartamento
        
        \vskip0.3\onelineskip
        
        Área de \elarea}
        
        \null
        \clearpage
        \tableofcontents*

    \end{titlingpage}
    \mainmatter
}

\newcommand{\rubrica}[1]{%
    \ifx\true\ubu@rubrica
        {\color{red}%
        \noindent
        \fbox{%
        \parbox{0.983\textwidth}{%
        \large
        \if1#1
            \centerline{\textbf{15\%}}
            
            \vskip0.5\onelineskip
            
            \normalsize
            Presenta una contextualización ajustada y precisa del Proyecto Docente en el Espacio Europeo de Educación Superior (EEES), en la UBU y dentro de ella en la titulación de Grado/Master desde la inserción en el centro de referencia de la misma.
        \else
            \if2#1
                \centerline{\textbf{15\%}}
                
                \vskip0.5\onelineskip
                
                \normalsize
                Presenta una referencia explícita y concreta al desarrollo del proceso de enseñanza-aprendizaje y, asimismo, a su contextualización en el desarrollo de la asignatura elegida dentro del Grado/Master propuesto según los principios de enseñanza-aprendizaje y a las habilidades docentes básicas en el actual EESS. También incluye las líneas marcadas en la Memoria verificada de la titulación y la normativa de la UBU al respecto.
            \else
                \if3#1
                    \centerline{\textbf{25\%}}
                
                    \vskip0.5\onelineskip
                    
                    \normalsize
                    Hace una referencia explícita y concreta a la guía docente de la asignatura elegida reflexionando de forma precisa y adecuada sobre los elementos de la guía docente:
                    \begin{itemize}
                        \item Competencias
                        \item Programa (Objetivos y Unidades Docentes)
                        \item Sistema de evaluación realizando una reflexión sobre el proceso de evaluación continua
                        \item Metodología
                        \item Referencias Bibliográficas
                    \end{itemize}
                    Todo ello situado en la normativa actual de la UBU. Asimismo aplica la formación recibida tanto en el IFIE como por otras instituciones en las que el docente ha realizado cursos de formación en innovación docente universitaria.
                \else
                    \if4#1
                        \centerline{\textbf{25\%}}
                    
                        \vskip0.5\onelineskip
                        
                        \normalsize
                        Presenta un análisis sobre los cursos de formación realizados y su aplicación a la práctica docente concretando y evaluando explícitamente las acciones de mejora emprendidas así como las futuras líneas de intervención. La evaluación utiliza alguna herramienta explícita: diálogo con los alumnos.
                        
                        La evaluación se ha realizado explícitamente mediante herramientas cualitativas o cuantitativas.
                    \else
                        \if5#1
                            \centerline{\textbf{20\%}}
                    
                            \vskip0.5\onelineskip
                            
                            \normalsize
                            Presenta experiencias de innovación docente y un análisis documentado (artículos de innovación, contribuciones a Congresos, informes, documentos internos del grupo GID) tanto cuantitativo como cualitativo de las experiencias de innovación docente realizadas dentro del marco de los GID así como de las futuras líneas de intervención.
                        \else
                        \fi
                    \fi
                \fi
            \fi
        \fi}}}
        \vskip0.5\onelineskip
        
    \fi%
}%