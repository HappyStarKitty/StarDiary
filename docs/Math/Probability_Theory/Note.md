# 概率论与数理统计

## Chap1 概率论的基本概念

概率的加法公式

$$
P(A \cup B)=P(A)+P(B)-P(AB)
$$

$$
P(A \cup B \cup C)=P(A)+P(B)+P(C)-P(AB)-P(AC)-P(BC)+P(ABC)
$$

$$
P( \cup_{j=1}^{n} A_j)= \sum_{j=1}^{n} P(A_j) -\sum_{i<j}P(A_i A_j) + \sum_{i<j<k} P(A_i A_j A_k)-...+(-1)^{n-1}P(A_iA_2...A_n), \quad n \ge 1 
$$

全概率公式

$$
P(A)=\sum_{j=1}^{n}P(B_j)P(A|B_j)
$$

## Chap2 随机变量及其概率分布

### 离散型随机变量

**0-1(p)分布**

$$
P\{x=k\} = p^k(1-p)^k, \quad k=0,1
$$

记为$X \sim 0-1(p)$

**二项分布**

$$
P\{X=k \}=C_n^kp^k(1-p)^{n-k}
$$

记为$X \sim B(n,p)$

**泊松分布**

$$
P\{X=k\}= \frac{e^{-\lambda} \lambda^{k}}{k!}, \quad k=0,1,2...
$$

记为$X \sim P(\lambda)$

泊松定理

n充分大，p足够小时

$$
C _n^k p^k (1-p)^{n-k} \approx \frac{e^{-\lambda} \lambda^k}{k!}
$$

其中 $\lambda = np$

**超几何分布**

$$
P\{ X=k\} = \frac{C_a^k C_b^{n-k}}{C_N^n}, \quad k=l_1,l_1+1,...l_2
$$

其中$l_1 = \max(0,n-b), l_2=\min (a,n)$

记为 $H(n,a,N)$

**几何分布**

$$
P\{ X=k\}=p(1-p)^{k-1}
$$

### 随机变量的概率分布函数

**概率分布函数**

$$
F(x)=P\{X \le x\} = \sum_{x_i \le x} P\{X=x_i\}
$$

$F(x+0)=F(x)$, 即$F(x)$是右连续函数

$F(x)-F(x-0)=P\{X=x\}$

### 连续性随机变量

**概率密度函数**

$$
F(x)=\int_{- \infty}^x f(t)dt
$$

$P\{x_1 < X \le x_2\}= F(x_2) -F(x_1)=\int_{x_1}^{x_2} f(t)dt$

在连续点$x$处，$F^{\prime}(x)=f(x)$

**均匀分布**

$$
f(x)=\left\{
\begin{aligned}
\frac{1}{b-a}, x \in (a,b) \\ 
0, 其他
\end{aligned}
\right.
$$

**正态分布**

$$
f(x)= \frac{1}{\sqrt{2\pi \sigma}} e^{-(x-\mu)^2/ (2 \sigma^2)}, \quad |x|< + \infty
$$

记为$X \sim N(\mu, \sigma^2)$
称$\mu$为位置参数，$\sigma$为尺度参数

称$Z \sim N(0,1)$ 为标准正态分布

$$
\phi (x)=\frac{1}{\sqrt{2 \pi}} e^{-x^2/2}, \quad |x|< + \infty
$$

$$
\Phi(x) = \int_{- \infty}^{x} \frac{1}{\sqrt{2\pi}} e^{-t^2/2}ddt
$$

$$
P\{ a<x<b\} = \Phi(\frac{b-\mu}{\sigma}) - \Phi (\frac{a-\mu}{\sigma})
$$

**指数分布**

$$
f(x)=\left\{
\begin{aligned}
\lambda e^{-\lambda x}, x>0 \\
0, x<0
\end{aligned}
\right.
$$

记为$X \sim E(\lambda)$

$$
F(x)=\left\{
\begin{aligned}
1-e^{-\lambda x}, x>0 \\
0, x\le 0
\end{aligned}
\right.
$$

$P\{X > t_0 +t\}=P\{X>t_0\}\cdot P\{X > t\}$

### 随机变量函数的分布

!!! note
    已知$Y=g(X)$和$X$的密度函数，求$F_Y(y)$和$f_Y(y)$
    1. 求$\{Y \le y\}$的等价事件
    2. 求$F_Y(y)$
    3. 求导得$f_y(y)$

**定理**

$$
f_Y(y) = \left\{
\begin{aligned}
f_X(h(y)) \cdot |h^{\prime}(y)|, y\in D \\
0, y \notin D
\end{aligned}
\right.
$$

## Chap3 多维随机变量及其分布

### 二元离散型随机变量

联合分布
边际分布
条件分布

### 二元随机变量的分布函数

**联合分布函数**

$$
F(x,y) = P\{X \le x, Y \le y\}
$$

**边际分布函数**

$$
F_X(x) = F(x, + \infty)
$$
$$
F_Y(y) = F(+\infty ,y)
$$

**条件分布函数**

$$
F_{Y|X}(y|x_i)= P\{Y \le y|X =x_i\}
$$

### 二元连续型随机变量的联合分布

**联合密度函数**

$$
F(x,y)= \int_{- \infty}^{x} \int_{- \infty}^{y} f(u,v)dudv
$$

在$f(x,y)$的连续点上有

$$
\frac{\partial^2 F(x,y)}{\partial x \partial y}=f(x,y)
$$

$(X,Y)$落入$xOy$平面任意区域$D$的概率为

$$
P\{ (X,Y) \in D\} = \iint_D f(x,y)dxdy
$$

**边际分布**

$$
f_X(x)=\int_{- \infty}^{+\infty}f(x,y)dy
$$
$$
f_Y(y)=\int_{- \infty}^{+ \infty}f(x,y)dx
$$

**条件分布**

$$
f_{Y|X}(y|x)=\frac{f(x,y)}{f_X(x)}
$$

### 随机变量的独立性

**相互独立**

$$
P\{X \le x, Y \le y\}=P\{X \le x\}\cdot P\{Y \le y\}
$$

即$F(x,y)=F_X(x)\cdot F_Y(y)$时，$X$，$Y$相互独立

$f(x,y)=f_X(x)\cdot f_Y(y)$几乎处处相等为连续型随机变量X，Y相互独立的等价定义

### 二元随机变量函数的分布

**$Z=X+Y$的分布**

**$M=\max(X,Y)$的分布**

$$
F_M(t)=\prod_{i=1}^{n} F_i(t)
$$

**$N=\min(X,Y)$的分布**

$$
F_N(t)=1-\prod_{i=1}^{n}[1-F_i(t)]
$$


## Chap4 随机变量的数字特征

### 数学期望

$$
E(X)=\sum_{i=1}^{+\infty}x_ip_i=\int_{-\infty}^{+\infty}xf(x)dx
$$

泊松分布：$E(X)=\lambda$
指数分布：$E(X)=\frac{1}{\lambda}$
标准正态分布：$E(x)=0$

## 方差、变异系数

$$
Var(X)=\sum_{i=1}^{+\infty}(X_i-E(X))^2p_i=\int_{-\infty}^{+\infty}(x-E(X))^2f(x)dx
$$

$$
Var(X)=E(X^2)-(E(X))^2
$$

泊松分布：$Var(X)=\lambda$
指数分布：$Var(X)=\frac{1}{\lambda^2}$
标准正态分布：$Var(X)=1$
二项分布：$Var(X)=np(1-p)$
正态分布：$Var(X)=\sigma^2$

### 协方差与相关系数

**协方差**

$$
Cov(X,Y)=E[(X-E(X))(Y-E(Y))]=E(XY)-E(X)E(Y)
$$

**相关系数**

$$
\rho_{XY} =\frac{Cov(X,Y)}{\sqrt{Var(X)}\sqrt{Var(Y)}}
$$

**不相关**

$\rho_{XY}=0$
$Cov(X,Y)=0$
$E(XY)=E(X)E(Y)$
$Var(X+Y)=Var(X)+Var(Y)$

## Chap5 大数定律及中心极限定理

### 大数定律

**马尔可夫不等式**

$$P\{|Y| \ge \varepsilon\} \le \frac{E(|Y|^k)}{\varepsilon^k}
$$

**切比雪夫不等式**

$$
P\{ |X-\mu| \ge \varepsilon\}\le \frac{\sigma^2}{\varepsilon^2}
$$

**伯努利大数定律**

$$
\lim_{n \rightarrow +\infty}P\{ |\frac{n_A}{n}-p|\ge \varepsilon\} =0
$$

**辛钦大数定律**

$$
\lim_{n\rightarrow +\infty}P\{|\frac{1}{n}\sum_{i=1}^{n}h(X_i)-a|\ge \varepsilon\}=0
$$

### 中心极限定理

**林德伯格-莱维中心极限定理**

$$
\lim_{n \rightarrow +\infty}P\{{\frac{\sum_{i=1}^n X_i - E(\sum_{i=1}^n X_i)}{\sqrt{Var(\sum_{i=1}^n X_i)}}\le x}\}=\lim_{n \rightarrow +\infty}P\{\frac{\sum_{i=1}^{n} X_i-n\mu}{\sigma\sqrt{n}}\le x\}=\frac{1}{\sqrt{2\pi}}\int_{-\infty}^{x}e^{-\frac{t^2}{2}}dt=\Phi(x)
$$

**棣莫弗-拉普拉斯中心极限定理**

$$
\lim_{n \rightarrow +\infty}P\{\frac{n_A-np}{\sqrt{np(1-p)}} \le x\}=\frac{1}{\sqrt{2\pi}}\int_{-\infty}^x e^{-\frac{t^2}{2}}dt=\Phi(x)
$$

**李雅普诺夫中心极限定理**

$$
\lim_{n\rightarrow +\infty}P\{\frac{1}{B_n}\sum_{i=1}^{n}(X_i-\mu_i)\le x\}=\frac{1}{\sqrt{2\pi}}\int_{-\infty}^{x}e^{-\frac{t^2}{2}}dt=\Phi(x)
$$

## Chap6 统计量与抽样分布

### 随机抽样与统计量

**样本方差**

$$
S^2 = \frac{1}{n-1} \sum_{i=1}^{n}(X_i-\bar{X})^2=\frac{1}{n-1}(\sum_{i=1}^{n} X_i^2 - n\bar{X}^2)
$$

**样本标准差**

$$
S=\sqrt{S^2}
$$

**样本k阶（原点）矩**

$$
A_k=\frac{1}{n}\sum_{i=1}^{n}X_i^k, \quad k=1,2...
$$

**样本k阶中心矩**

$$
B_k=\frac{1}{n} \sum_{i=1}^n (X_i-\bar{X})^k, \quad k=2,3...
$$

### $\chi^2$分布，$t$分布，$F$分布

**$\chi^2$分布**

记为$Y \sim\chi^2(n)$

**$t$分布**

$$
t=\frac{X}{\sqrt{Y/n}}
$$

记为$t\sim t(n)$

其中$X\sim N(0,1)$，$Y\sim \chi^2(n)$

**$F$分布**

$$
F=\frac{U/n_1}{V/n_2}
$$

记为$F\sim F(n_1,n_2)$

其中$U\sim \chi^2(n_1)$，$V\sim \chi^2(n_2)$

### 正态总体下的抽样分布

$$
\bar{X} \sim N(\mu, \frac{\sigma^2}{n})
$$

$$
\frac{(n-1)S^2}{\sigma^2}\sim \chi^2(n-1)
$$

$$
\frac{S_1^2/\sigma_1^2}{S_2^2/\sigma_2^2}\sim F(n_1-1,n_2-1)
$$

## Chap7 参数估计

## Chap8 假设检验