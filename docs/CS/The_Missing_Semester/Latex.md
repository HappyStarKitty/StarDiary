# Latex
无论是水课的读书报告还是专业的毕业论文，一篇符合学术规范的文章需要满足许多格式要求。Word排版体验比较难以评价，而Latex提供了一种优雅简洁的方案。
## 文章规范
格式规范是一篇文章的基本要求
一般可分为五部分：提要、引言、正文、结语、参考文献
以下格式均依据 2024-春学期-大学写作·人-读书报告格式规范，不同学院、期刊等格式要求有所不同，需要酌情修改
### 文体
latex 排版时需要指定文档及其参数
```latex
\documentclass[options]{class-name}
```
#### class-name
|文档名称|应用场景|使用说明
|:-:|:-:|:-:|
|article|读书报告、学术论文|中文使用 ctexart
|book|排版书籍|中文使用 ctexbook
|report||中文使用 ctexrep
|beamer|幻灯片文档
#### options
|参数|说明|
|:-:|:-:|
|10pt|文本字号，默认为10pt
|a4paper|页面大小，默认为letterpaper
|onecolumn|排版栏数，默认为onecolumn
### 语法
#### 总体
以 article 为例
```latex
\documentclass{article} %中文可用ctexart，或者调用 ctex 宏包
\title{your_title}
\author{author_name}
\date{today} today默认是今日，可修改成具体日期，缺省则不显示日期

\begin{document}
文章内容
\end{document}
```
#### 提要
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
\renewcommand{\abstractname}{} 
\begin{abstract}
\noindent\textbf{摘要：}摘要内容
\noindent\textbf{关键词：}关键词1，关键词2，关键词3
\end{abstract}
```
#### 引言、正文、结语
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

#### 参考文献
需要建立一个文献库 reference.bib

## 语法基础
### 格式调整
- \par 换行
- \noindent 取消缩进
- \textbf{} 字体加粗
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
### 插入图片
建立一个存储图片的文件夹 figures
#### 插入单图
```latex
\usepackage{graphicx}
\begin{figure}[htbp]
    \centering
    \includegraphicx{figures/example.eps}
    \caption{figure example}
\end{figure}
```
#### 插入多图
### 插入代码
```latex
\usepackage{listings}
\begin{lstlisting}
code content
\end{lstlisting}
```

## 数学符号
### 杂项
- 行内公式：\$ \$  
- 行间公式：\$\$   \$\$
- 下标：\_
- 上标：^
- 约等于：\approx
- 分数线：\frac
- 导数：\prime
- 求和：\sum
- 积分：\int
- 拉普拉斯算子：\Delta
- 哈密顿算子：\nabla
- 尖括号：\langle \rangle
### 希腊字母
| lower | tex | upper | tex | diff | tex |
|:-:|:-:|:-:|:-:|:-:|:-:|
$\phi$|\\phi|$\Phi$|\\Phi|$\varphi$|\\varphi
$\rho$|\rho|$\Rho$|\Rho|$\varrho$|\varrho
$\lambda$|\lambda|$\Lambda$|\Lambda
$\delta$|\delta|$\Delta$|\delta
$\xi$|\xi|$\Xi$|\Xi
$\mu$|\mu
### 二元关系
| txt | tex | txt | tex |
| :-: | :-: | :-:| :-:|
|$\in$ | \in|$\notin$|\notin|
|$\subset$|\subset|$\supset$|\supset
|$\subsetneqq$|\subsetneqq|$\supsetneqq$|\subsetneqq
|$\subseteq$|\subseteq|$\supseteq$|\supseteq
|$\leq$|\leq|$\geq$|\geq

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
**效果预览**
\[ 
\left|\begin{array}{cccc} 
    1 &    6    & 9 \\ 
    7 &    90   & f(x)\\ 
    9 & \psi(x) & g(x) 
\end{array}\right| 
\]
## 页面布局
### 常用
- 分段：\par
- 分页：\newpage
- 脚注：\footnote