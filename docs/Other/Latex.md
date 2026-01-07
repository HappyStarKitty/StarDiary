# Latex

## 前言

无论是读书报告还是毕业论文，都会要求格式规范。如果是平常的读书报告，Word 足以应付。但工科类的文章一般会出现大量公式代码、图片表格等，此时 Latex 就比较适合。

## 文章规范

格式规范是一篇文章的基本要求，一般可分为五部分：提要、引言、正文、结语、参考文献


### Latex 文件组成

一般由主文件 `main.tex`，图片库 `figures`，文献库 `reference.bib`，以及样式表 `style.sty` 组成

其中，我们重点关注的是 `main.tex`
`main.tex` 由文档类声明、导言区和正文组成

- 文档类声明 指定文档及其参数
- 导言区 调用宏包、声明作者等
- 正文 文章内容，注意与文章的主体区分


以 article 为例

```latex
%文档类声明
\documentclass{article} %中文可用ctexart，或者调用 ctex 宏包

%导言区
\title{your_title}
\author{author_name}
\date{today} today默认是今日，可修改成具体日期，缺省则不显示日期

%正文
\begin{document}
文章内容
\end{document}
```

### 文体

文档类声明指定文章的文体和参数
语法如下：

```latex
\documentclass[options]{class-name}
```

#### class-name

| 文档名称 |      应用场景      |     使用说明     |
| :------: | :----------------: | :---------------: |
| article | 读书报告、学术论文 | 中文使用 ctexart |
|   book   |      排版书籍      | 中文使用 ctexbook |
|  report  |                    | 中文使用 ctexrep |
|  beamer  |     幻灯片文档     |                  |

#### options

|   参数   |            说明            |
| :-------: | :-------------------------: |
|   10pt   |    文本字号，默认为10pt    |
|  a4paper  | 页面大小，默认为letterpaper |
| onecolumn |  排版栏数，默认为onecolumn  |

### 提要

分为摘要和关键词
基础的语法如下：

```latex
\begin{abstract}
摘要内容
\noindent\textbf{关键词：}关键词1；关键词2；关键词3
\end{abstract}
```

有时候摘要是不单独成标题的，所以需要修改提要格式

```latex
\renewcommand{\abstractname}{} %不显示摘要
\begin{abstract}
\noindent\textbf{摘要：}摘要内容
\noindent\textbf{关键词：}关键词1，关键词2，关键词3
\end{abstract}
```

### 引言、正文、结语

文章的主体内容

基础语法如下：

```latex
\section{引言}
\section{正文}
\section{结语}
```

如果需要双栏排版需要调用 multicol 宏包

```latex
\usepackage{multicol}
\begin{multicols}{2} %{2}表示 column 的数量，可相应修改
文章内容
\end{multicols}
```

### 参考文献

需要建立一个文献库 reference.bib
在 CNKI 等文献平台的引用上找到文献导出格式 BibTex，将文本 copy 到我们的 .bib 中

```latex
\usepackage{cite} %调用 cite 宏包，使用 
此处引用文献\cite{ref1} %ref1 为文献标签，可以在 .bib 中修改，使用 \cite 命令即自动列出参考文献
\bibliographystyle{plain} %插入文献参考样式
\bibliography{reference} %插入文献库
```

## 语法基础

### 格式调整

!!! note  "缩进空白"

    - \par 换行
    - \noindent 取消缩进
    - \hspace{} 水平空白
    - \vspace{} 垂直空白

!!! note "字体调整"
    - \textbf 加粗
    - \bm 粗体
    - mathbf 加粗
    - \mathscr 手写体
    - \mathcal 花体
    - \mathit 斜体
    - \mathrm 正体（罗马体）

### 注释说明

- % 注释
- \iffalse comment \fi 多行注释，可使用 verbatim 宏包

## 常用宏包

### 中文宏包

```latex
\usepackage{ctex}
```

### 多行注释宏包

```latex
\usepackage{verbatim}
\begin{commet}
comment content
\end{commet}
```

## 插入


### 插入单图

建立一个存储图片的文件夹 figures

```latex
\usepackage{graphicx}
\begin{figure}[htbp]
    \centering
    \includegraphics[scale=0.8]{figures/example.eps} %scale 调整图片大小
    \caption{figure example} %图片标题
                            %标题过长换行使用 \protect\\
                            %caption* 可取消图片编号
\end{figure}
```

### 插入多图

### 插入代码

```latex
\usepackage{listings}[language=python]
\usepackage{color}

%代码高亮设置
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{frame=tb,
  language=Python,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=3
}

%插入python代码
\begin{lstlisting}[language=python]
code content
\end{lstlisting}
```

```latex
\usepackage{listings}
\usepackage{xcolor}
\usepackage{inconsolata} % 等宽字体

\definecolor{codebg}{RGB}{248,248,248}
\definecolor{keyword}{RGB}{0,0,255}
\definecolor{comment}{RGB}{34,139,34}
\definecolor{string}{RGB}{160,32,240}

\lstdefinestyle{modernmatlab}{
    backgroundcolor=\color{codebg},
    basicstyle=\ttfamily\small,
    keywordstyle=\color{keyword}\bfseries,
    commentstyle=\color{comment},
    stringstyle=\color{string},
    numbers=none, % 去掉行号
    frame=none,   % 去掉边框
    tabsize=4,
    showstringspaces=false,
    breaklines=true,
    language=Matlab
}
```

## 数学符号

[数学公式和符号表](https://zhuanlan.zhihu.com/p/450465546)

以下是整理出的常用数学符号

### 杂项

- 行内公式：\$ \$
- 行间公式：\$\$   \$\$
- 分数线：\frac
- 导数：\prime
- 无穷：\infty
- 空心圆：\circ

### 上标下标

- 下标：\_
- 上标：^
- 上划线：\overline
- 下划线：\underline
- 横线上标：\bar
- 尖角上标：\hat
- 向量上标：\vec

### 数学符号

|symbol|txt|tex|symbol|tex|tex|
| :--:|:-:|:-|:-:|:-:|:-:
|积分|\int|$\int$|环路积分|\oint|$\oint$|
|点乘|\cdot|$\cdot$|叉乘|\times|$\times$|
|正负|\pm|$\pm$|负正|\mp|$\mp$|
|求和|\sum|$\sum$|连乘|\prod|$\prod$
|拉普拉斯算子|\Delta|$\Delta$|哈密顿算子|\nabla|$\nabla$|
|约等于|\approx|$\approx$|恒等于|\equiv|$\equiv$|
波浪号|\sim|$\sim$|不等于|\ne|$\ne$|
|正比于|\varpropto|$\varpropto$|空集|\emptyset|$\emptyset$|
|角度|\angle|$\angle$|度数|\degree|$\degree$|
|定义为|\triangleq|$\triangleq$|


### 括号等

|     txt     |   tex   |     txt     |   tex   |
| :---------: | :-----: | :----------: | :-----: |
| $\langle$ | \langle | $ \rangle$ | \rangle |
| $\lfloor$ | \lfloor | $\rfloor$ | \rfloor |
| $\lceil$ | \lceil |  $\rceil$  | \rceil |


### 希腊字母

|    lower    |   tex   |    upper    |   tex   |     diff     |    tex    |
| :---------: | :-----: | :---------: | :-----: | :-----------: | :-------: |
|  $\phi$  |  \\phi  |  $\Phi$  |  \\Phi  |  $\varphi$  | \\varphi |
|  $\rho$  |  \rho  |  $\Rho$  |  \Rho  |  $\varrho$  |  \varrho  |
| $\lambda$ | \lambda | $\Lambda$ | \Lambda |              |          |
| $\delta$ | \delta | $\Delta$ | \delta |              |          |
|   $\xi$   |   \xi   |   $\Xi$   |   \Xi   |              |          |
|   $\mu$   |   \mu   |            |        |              |          |
| $\kappa$ | \kappa |            |        | $\varkappa$ | \varkappa |
|  $\chi$  |   \chi     |            |        |              |          |
|$\epsilon$|\epsilon|||$\varepsilon$|\varepsilon|
|$\alpha$|\alpha||
|$\beta$|\beta|
|$\gamma$|\gamma|$\Gamma$|\Gamma
|$\psi$|\psi|$\Psi$|\Psi
|$\tau$|\tau|
|$\eta$|\eta|
|$\theta$|\theta|$\Theta$|\Theta|$\vartheta$|\vartheta
|$\upsilon$|\upsilon||
|$\pi$|\pi|$\Pi$|\Pi

### 二元关系

|         txt         |       tex       |       txt       |     tex     |
| :-----------------: | :-------------: | :-------------: | :---------: |
|       $\in$       |       \in       |   $\notin$   |   \notin   |
|     $\subset$     |     \subset     |   $\supset$   |   \supset   |
|   $\subsetneqq$   |   \subsetneqq   | $\supsetneqq$ | \subsetneqq |
|    $\subseteq$    |    \subseteq    |  $\supseteq$  |  \supseteq  |
|      $\leq$      |      \leq      |    $\geq$    |    \geq    |
|      $\cap$      |      \cap      |    $\cup$    |    \cup    |
|     $\forall$     |     \forall     |   $\exists$   |   \exists   |
|      $\vee$      |      \vee      |   $\wedge$   |   \wedge   |
|   $\rightarrow$   |   \rightarrow   | $\Rightarrow$ | \Rightarrow |
|$\leftarrow$|\leftarrow|$\Leftarrow$|\Leftarrow
| $\leftrightarrow$ | \leftrightarrow|$\Leftrightarrow$|\Leftrightarrow|
 |    $\neg$    |    \neg    |$\approx$|\approx|
|      $\prec$      |      \prec      |    $\succ$    |    \succ    |
|     $\preceq$     |     \preceq     |   $\succeq$   |   \succeq   |
|$\gg$|\gg|$\ll$|\ll

### 矩阵和行列式

**代码样例**

```latex
\[ 
\left|\begin{array}{cccc} 
    1 &    6    & 9 \\ 
    7 &    90   & f(x)\\ 
    9 & \psi(x) & g(x) 
\end{array}\right| 
\]
```
$$
\begin{align}
F(x) = & \int_a^b \frac{\sin(x^2) \cdot \cos(y^3)}{\sqrt{1 + x^4}} \, dx \nonumber \\
       & + \int_c^d \frac{\tan(z^2) \cdot \ln(1 + w^2)}{1 + e^{-t}} \, dz \, dw
\end{align}$$

换成matrix、pmatrix、bmatrix

公式对齐与换行

使用aligned，&进行左对齐

效果预览

\[
\left|\begin{array}{cccc}
    1 &    6    & 9 \\
    7 &    90   & f(x)\\
    9 & \psi(x) & g(x)
\end{array}\right|
\]

### 公式进阶

```latex
\mathbf{F} = \underbrace{q}_{\text{电荷量}} \cdot 
\underbrace{(\mathbf{E} + \mathbf{v} \times \mathbf{B})}_{\text{电磁场}}
```

效果预览

\[
\mathbf{F} = \underbrace{q}_{\text{电荷量}} \cdot 
\underbrace{(\mathbf{E} + \mathbf{v} \times \mathbf{B})}_{\text{电磁场}}
\]

```latex
\[
\boxed{E = mc^2}
\]
```

效果预览

\[
\boxed{E = mc^2}
\]

## 页面布局

- 分段：\par
- 分页：\newpage
- 脚注：\footnote
