# Latex
## 语法基础
### 注释
%comment 单行注释
\iffalse comment \fi 多行注释
## 常用宏包
### 中文宏包
```latex
\usepackage{ctex}
```
### 插入图片宏包
```latex
\usepackage{graphicx}
%插入单图
\begin{figure}[htbp]
    \centering
    \includegraphicx{example.eps}
    \caption{figure example}
\end{figure}
```
### 插入代码宏包
```latex
\usepackage{listings}
\begin{lstlisting}
\end{lstlisting}
```
### 多行注释宏包
```latex
\usepackage{verbatim}
\begin{commet}
注释内容
\end{commet}
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