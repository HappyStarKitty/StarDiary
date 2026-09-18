# Chap4 随机变量的数字特征

!!! note "常见概率分布的期望与方差"
    | 概率分布 | 分布函数 | 期望 $E(X)$ | 方差 $Var(X)$ |
    | :---: | :---: | :---: | :-: |
    | 0-1 分布 | $p^k(1-p)^k$  | $p$ | $p(1-p)$ |
    | 二项分布 $B(n, p)$ |  $C_n^kp^k(1-p)^k$ |  $np$ | $np(1-p)$ |
    | 泊松分布 $P(\lambda)$ | $\frac{e^{-\lambda}\lambda^k}{k!}$ | $\lambda$ | $\lambda$ |
    | 均匀分布 $U(a, b)$ | $\frac{1}{b-a}$ |$\dfrac{a+b}{2}$ | $\dfrac{(b-a)^2}{12}$ |
    | 指数分布 $E(\lambda)$ | $\lambda e^{-\lambda x}$|$\dfrac{1}{\lambda}$ | $\dfrac{1}{\lambda^2}$ |
    | 正态分布 $N(\mu, \sigma^2)$ | $\frac{1}{\sqrt{2\pi\sigma}} e^{-(x-\mu^2)/(2\sigma^2)}$ |$\mu$ | $\sigma^2$ |

## 数学期望

!!! definition "数学期望"
    离散型随机变量的数学期望为：

    $$
    E(X)=\sum_{i=1}^{+\infty}x_ip_i
    $$

    连续性随机变量的数学期望为：

    $$E(X)=\int_{-\infty}^{+\infty}xf(x)\mathrm{d}x$$

!!! note "常见概率分布的数学期望"

    二项分布：$E(x)=np$

    泊松分布：$E(X)=\lambda$

    指数分布：$E(X)=\frac{1}{\lambda}$

    标准正态分布：$E(X)=0$

    正态分布：$E(X)=\mu$

## 方差、变异系数

!!! definition "方差与标准差"
    定义随机变量的方差为：

    $$
    Var(X)=\sum_{i=1}^{+\infty}(X_i-E(X))^2p_i=\int_{-\infty}^{+\infty}(x-E(X))^2f(x)dx
    $$

    称方差的平方根$\sqrt{Var(X)}$为标准差

!!! formula "方差计算公式"
    $$
    Var(X)=E(X^2)-(E(X))^2
    $$

!!! note "常见概率分布的方差"
    泊松分布：$Var(X)=\lambda$

    指数分布：$Var(X)=\frac{1}{\lambda^2}$

    标准正态分布：$Var(X)=1$

    二项分布：$Var(X)=np(1-p)$

    正态分布：$Var(X)=\sigma^2$

    均匀分布：$Var(X)=\frac{(b-a)^2}{12}$

## 协方差与相关系数

### 协方差

!!! definition "协方差"

    $$
    \begin{aligned}
    &Cov(X,Y)=E[(X-E(X))(Y-E(Y))] \\
    &=E(XY)-E(X)E(Y)
    \end{aligned}
    $$

!!! theorem "定理"
    对任意整数$n(n\ge2)$，设$X_1,X_2,...,X_n$为方差存在的随机变量，则$X_1+X_2+...+X_n$的方差也存在，且：

    $$Var(\sum_{i=1}^{n}X_i)=\sum_{i=1}^{n} Var(X_i)+2\sum_{1\le i< j \le n}Cov(X_i,X_j)$$

    上式不要求这些随机变量相互独立

    若随机变量相互独立，则$Var({\sum_{i=1}^n} X_i)=\sum_{i=1}^n Var(X_i)$

!!! note "协方差的性质"
    $Cov(X,Y)=Cov(Y,X)$

    $Cov(X,X)=Var(X)$

    $Cov(aX,bY)=abCov(X,Y)$

    $Cov(X_1+X_2,Y)=Cov(X_1,Y)+Cov(X_2,Y)$

### 相关系数

!!! definition "相关系数"
    对于随机变量$X$和$Y$，当$E(X^2)$与$E(Y^2)$均存在且$Var(X),Var(Y)$均为非零实数时，称

    $$
    \rho_{XY} =\frac{Cov(X,Y)}{\sqrt{Var(X)}\sqrt{Var(Y)}}
    $$

    为$X$与$Y$的<b>相关系数</b>

!!! note "相关系数的性质"
    - 若$X$和$Y$相互独立，则$\rho_{XY}=0$，但反之不然

    - 当$\rho_{XY}>0$时，称$X$和$Y$正相关；当$\rho_{XY}<0$时，称$X$和$Y$负相关
  
!!! note "不相关的等价定义"

    $\rho_{XY}=0$

    $Cov(X,Y)=0$

    $E(XY)=E(X)E(Y)$

    $Var(X+Y)=Var(X)+Var(Y)$

独立可以推出不相关，不相关无法推出独立，因为相关是“线性相关性”

## 其他数字特征

### 矩

!!! definition "矩"
    设$X$和$Y$为随机变量，$k$和$l$为正整数

    k阶（原点）矩

    $$
    \mu_k=E(X^k)
    $$

    k阶中心矩

    $$
    v_k=E[(X-E(X))^k]
    $$

    k+l阶混合（原点）矩

    $$
    E(X^kY^l)
    $$

    k+l阶混合中心矩

    $$
    E[(X-E(X))^k(Y-E(Y))^l]
    $$

### 分位数

!!! definition "分位数"
    设连续性随机变量$X$的分布函数和密度函数分别为$F(x)$和$f(x)$，对任意$0<\alpha<1$，称满足条件$P(X>x_{\alpha})=1-F(x_\alpha)=\alpha$的实数$x_\alpha$为随机变量$X$的<b>上$\alpha$分位数</b>

## 多维随机变量的数字特征