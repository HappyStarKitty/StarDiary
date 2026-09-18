# Chap2 随机变量及其概率分布

## 离散型随机变量

!!! definition "0-1(p)分布"
    若概率分布律为：

    $$
    P\{x=k\} = p^k(1-p)^k, \quad k=0,1
    $$

    其中$0<p<1$，称$X$服从参数$p$的0-1分布，也称为两点分布，记为$X \sim 0-1(p)$

    0-1分布就是$n=1$的二项分布

!!! definition "二项分布"
    若概率分布律为：

    $$
    P\{X=k \}=C_n^kp^k(1-p)^{n-k}, k=0,1,2...n
    $$

    其中$0<p<1,n\geq1$，称$X$服从参数$(n,p)$的二项分布，记为$X \sim B(n,p)$

!!! definition "泊松分布"
    若概率分布律为：

    $$
    P\{X=k\}= \frac{e^{-\lambda} \lambda^{k}}{k!}, \quad k=0,1,2...
    $$

    其中$\lambda>0$，称$X$服从参数$\lambda$的泊松分布，记为$X \sim P(\lambda)$

!!! theorem "泊松定理"
    当$n$充分大，$p$足够小时，参数为$(n,p)$的二项分布也可以用泊松分布近似描述，即：

    $$
    C _n^k p^k (1-p)^{n-k} \approx \frac{e^{-\lambda} \lambda^k}{k!}
    $$

    其中 $\lambda = np$

!!! definition "超几何分布"
    $$
    P\{ X=k\} = \frac{C_a^k C_b^{n-k}}{C_N^n}, \quad k=l_1,l_1+1,...l_2
    $$

    其中$l_1 = \max(0,n-b), l_2=\min (a,n)$

    记为 $H(n,a,N)$

!!! definition "几何分布"
    $$
    P\{ X=k\}=p(1-p)^{k-1}
    $$

## 随机变量的概率分布函数

!!! definition "概率分布函数"
    设$X$为一随机变量，$x$为任意实数，函数

    $$
    F(x)=P\{X \le x\}
    $$
    
    称为随机变量$X$的<b>概率分布函数</b>，简称分布函数

!!! note "分布函数的性质"
    - $F(x)$单调不减

    - $0\le F(x) \le 1$，且有$\lim_{a\rightarrow -\infty}F(a)=0,\lim_{b\rightarrow +\infty}F(b)=1$，简记为$F(-\infty)=0,F(+\infty)=1$

    - $F(x+0)=F(x)$, 即$F(x)$是右连续函数

## 连续性随机变量

!!! definition "概率密度函数"
    对于随机变量$X$，其分布函数为$F(x)$，若存在一个非负的实值函数$f(x)$，使得对任意实数$x$，有：

    $$
    F(x)=\int_{- \infty}^x f(t)\mathrm{d}t
    $$

    则称$X$为连续性随机变量，称$f(x)$为$X$的<b>概率密度函数</b>，简称密度函数

!!! note "密度函数的性质"
    - $f(x)\ge 0$，$\int_{-\infty}^{+\infty}f(x)\mathrm{d}x=1$

    - $P\{x_1 < X \le x_2\}= F(x_2) -F(x_1)=\int_{x_1}^{x_2} f(t)\mathrm{d}t$

    - 在连续点$x$处，$F^{\prime}(x)=f(x)$

!!! definition "均匀分布"
    设随机变量$X$具有如下密度函数：
    
    $$
    f(x)=\left\{
    \begin{aligned}
    \frac{1}{b-a}, x \in (a,b) \\ 
    0, \text{other cases}
    \end{aligned}
    \right.
    $$

    称$X$服从区间$(a,b)$上的<b>均匀分布</b>，记为$X \sim U(a,b)$

!!! definition "正态分布"
    设随机变量具有密度函数：

    $$
    f(x)= \frac{1}{\sqrt{2\pi}\sigma} e^{-(x-\mu)^2/ (2 \sigma^2)}, \quad |x|< + \infty
    $$

    其中$-\infty<\mu<+\infty,\sigma>0$，称$X$服从参数为$(\sigma,\mu)$的<b>正态分布</b>，记为$X \sim N(\mu, \sigma^2)$

    称$\mu$为位置参数，$\sigma$为尺度参数

    特别地，当$\mu=0,\sigma=1$时，记正态变量为$Z$，那么$Z \sim N(0,1)$，称$Z$服从<b>标准正态分布</b>

    $$
    \varphi (x)=\frac{1}{\sqrt{2 \pi}} e^{-x^2/2}, \quad |x|< + \infty
    $$

    $$
    \Phi(x) = \int_{- \infty}^{x} \frac{1}{\sqrt{2\pi}} e^{-t^2/2}\mathrm{d}t
    $$

    $$
    P\{ a<x<b\} = \Phi(\frac{b-\mu}{\sigma}) - \Phi (\frac{a-\mu}{\sigma})
    $$

!!! definition "指数分布"
    设随机变量具有密度函数：

    $$
    f(x)=\left\{
    \begin{aligned}
    \lambda e^{-\lambda x}, x>0 \\
    0, x<0
    \end{aligned}
    \right.
    $$

    其中$\lambda>0$，称$X$服从参数$\lambda$的指数分布，记为$X \sim E(\lambda)$

    $$
    F(x)=\left\{
    \begin{aligned}
    1-e^{-\lambda x}, x>0 \\
    0, x\le 0
    \end{aligned}
    \right.
    $$

    $P\{X > t_0 +t\}=P\{X>t_0\}\cdot P\{X > t\}$

## 随机变量函数的分布

已知$Y=g(X)$和$X$的密度函数，求$F_Y(y)$和$f_Y(y)$

1. 求$\{Y \le y\}$的等价事件
    
2. 求$F_Y(y)$

3. 求导得$f_y(y)$

特别地，当$y=g(x)$具有严格单调性时，记$X$的密度函数为$f_X(x)$，$y=g(x)$的反函数为$x=h(y)$，则$Y$的密度函数为：

$$
f_Y(y) = \left\{
\begin{aligned}
f_X(h(y)) \cdot |h^{\prime}(y)|, y\in D \\
0, y \notin D
\end{aligned}
\right.
$$

其中$D$为函数$y=g(x)$的值域