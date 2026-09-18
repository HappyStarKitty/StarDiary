# Chap3 多维随机变量及其分布

## 二元离散型随机变量

联合分布
边际分布
条件分布

## 二元随机变量的分布函数

!!! definition "联合分布函数"
    设二维随机变量$(X,Y)$，对于任意的实数$x$，$y$，称函数

    $$F(x,y) = P\{X \le x, Y \le y\}$$

    为$(X,Y)$的联合概率分布函数，简称联合分布函数

!!! definition "边际分布函数"
    二维随机变量的边际分布函数是联合分布函数当另一个变量趋于$+\infty$时的极限函数

    $$
    F_X(x) = F(x, + \infty)
    $$

    $$
    F_Y(y) = F(+\infty ,y)
    $$

!!! definition "条件分布函数"
    对于二维离散型随机变量，当$P(X=x_i)\ne 0$时，称函数

    $$
    F_{Y|X}(y|x_i)= P\{Y \le y|X =x_i\}
    $$

    为给定${X=x_i}$条件下$Y$的条件分布函数

## 二元连续型随机变量的联合分布

### 联合分布

!!! definition "联合密度函数"
    设二维随机变量$(X,Y)$的联合分布函数为$F(x,y)$，若存在二元非负函数$f(x,y)$，使对任意的实数$x$，$y$有

    $$
    F(x,y)= \int_{- \infty}^{x} \int_{- \infty}^{y} f(u,v)\mathrm{d}u\mathrm{d}v
    $$

    则称$(X,Y)$为二维连续型随机变量，称$f(x,y)$为$(X,Y)$的联合概率密度函数，简称联合密度函数

!!! note "联合密度函数的性质"
    - $f(x,y)\ge0$

    - $\int_{-\infty}^{+\infty}\int_{-\infty}^{+\infty}f(x,y)\mathrm{d}x\mathrm{d}y=F(+\infty,+\infty)=1$

    - 在$f(x,y)$的连续点上有

    $$
    \frac{\partial^2 F(x,y)}{\partial x \partial y}=f(x,y)
    $$

    - $(X,Y)$落入$xOy$平面任意区域$D$的概率为

    $$
    P\{ (X,Y) \in D\} = \iint_D f(x,y)\mathrm{d}x\mathrm{d}y
    $$

### 边际分布

!!! definition "边际分布"
    $$
    f_X(x)=\int_{- \infty}^{+\infty}f(x,y)\mathrm{d}y
    $$

    $$
    f_Y(y)=\int_{- \infty}^{+ \infty}f(x,y)\mathrm{d}x
    $$

### 条件分布

!!! definition "条件分布"
    给定${X=x}(f_X(x)\ne0)$的条件下$Y$的条件密度函数为

    $$
    f_{Y|X}(y|x)=\frac{f(x,y)}{f_X(x)}
    $$

### 二元均值分布和二元正态分布

!!! definition "二元均值分布"
    设二维随机变量$(X,Y)$在二维有界区域$D$上取值，且具有联合密度函数：

    $$f(x,y)=\left\{\begin{aligned}\frac{1}{\text{Area of D}}, (x,y)\in D \\ 0,\text{other}\end{aligned}\right.$$

    则称$(X,Y)$服从$D$上均匀分布

!!! definition "二元正态分布"
    设二维随机变量 $(X, Y)$ 具有联合密度函数：

    $$
    \begin{aligned}
    f(x, y) = \frac{1}{2\pi \sigma_1 \sigma_2 \sqrt{1 - \rho^2}} \exp\Big\{ -\frac{1}{2(1 - \rho^2)} \Big[ &\frac{(x - \mu_1)^2}{\sigma_1^2} - \\
    &2\rho \frac{(x - \mu_1)(y - \mu_2)}{\sigma_1 \sigma_2} + \frac{(y - \mu_2)^2}{\sigma_2^2} \Big] \Big\}
    \end{aligned}
    $$

    其中 $-\infty < \mu_1 < +\infty, -\infty < \mu_2 < +\infty, \sigma_1 > 0, \sigma_2 > 0, |\rho| < 1$，则称 $(X, Y)$ 服从参数为 $(\mu_1, \mu_2; \sigma_1, \sigma_2; \rho)$ 的<b>二元正态分布</b>，记为 $(X, Y) \sim N(\mu_1, \mu_2; \sigma_1^2, \sigma_2^2; \rho)$

## 随机变量的独立性

!!! definition "相互独立"
    当且仅当对任意实数$x$，$y$，有

    $$
    P\{X \le x, Y \le y\}=P\{X \le x\}\cdot P\{Y \le y\}
    $$

    成立，即$F(x,y)=F_X(x)\cdot F_Y(y)$时，$X$，$Y$相互独立

    $f(x,y)=f_X(x)\cdot f_Y(y)$几乎处处相等为连续型随机变量为$X$，$Y$相互独立的等价定义

## 多元随机变量函数的分布

### $Z=X+Y$的分布

若 $(X, Y)$ 为二维离散型随机变量，设 $P(X = x_i, Y = y_j) = p_{ij}, i, j = 1, 2, \cdots$，又设 $Z$ 的可能取值有 $z_1, z_2, \cdots, z_k, \cdots$，则有

$$
\begin{aligned}
P(Z = z_k) &= P(X + Y = z_k) \\
&= \sum_{i=1}^{+\infty} P(X = x_i, Y = z_k - x_i), k = 1, 2, \cdots
\end{aligned}
$$

或

$$
\begin{aligned}
P(Z = z_k) &= P(X + Y = z_k) \\
&= \sum_{j=1}^{+\infty} P(X = z_k - y_j, Y = y_j), k = 1, 2, \cdots
\end{aligned}
$$

特别地，当 $X, Y$ 相互独立时，上式可以写成：

$$
P(Z = z_k) = \sum_{i=1}^{+\infty} P(X = x_i) \cdot P(Y = z_k - x_i), k = 1, 2, \cdots
$$

或

$$
P(Z = z_k) = \sum_{j=1}^{+\infty} P(X = z_k - y_j) \cdot P(Y = y_j), k = 1, 2, \cdots
$$

若 $(X, Y)$ 为二维连续型随机变量，设联合密度函数为 $f(x, y)$，则 $Z$ 的分布函数为：

$$
\begin{aligned}
F_Z(z) &= P(Z \le z) = \iint_{x+y \le z} f(x, y) \, \mathrm{d}x \mathrm{d}y \\
&= \int_{-\infty}^{+\infty} \left[ \int_{-\infty}^{z-y} f(x, y) \, \mathrm{d}x \right] \mathrm{d}y \\
&= \int_{-\infty}^{+\infty} \left[ \int_{-\infty}^{z} f(u - y, y) \, \mathrm{d}u \right] \mathrm{d}y \\
&= \int_{-\infty}^{z} \left[ \int_{-\infty}^{+\infty} f(u - y, y) \, \mathrm{d}y \right] \mathrm{d}u = \int_{-\infty}^{z} f_Z(u) \, \mathrm{d}u
\end{aligned}
$$

故 $Z$ 的密度函数为：$\displaystyle f_Z(z) = \int_{-\infty}^{+\infty} f(z - y, y) \, \mathrm{d}y$

由对称性知：$\displaystyle f_Z(z) = \int_{-\infty}^{+\infty} f(x, z - x) \, \mathrm{d}x$

!!! formula "卷积公式"
    当 $X, Y$ 相互独立时，$\displaystyle f_Z(z) = \int_{-\infty}^{+\infty} f_X(z - y) f_Y(y) \, \mathrm{d}y = \int_{-\infty}^{+\infty} f_X(x) f_Y(z - x) \, \mathrm{d}x$

!!! note "结论"
    - $n$ 个相互独立的服从泊松分布的随机变量的和仍服从泊松分布，即：若 $X_1, X_2, \cdots, X_n$ 相互独立，且 $X_i \sim P(\lambda_i)$，则 $\displaystyle \sum_{i=1}^{n} X_i \sim P\left( \sum_{i=1}^{n} \lambda_i \right)$

    - $n$ 个正态变量的线性组合仍为正态变量（不要求相互独立）

    - 若 $X_1, X_2, \cdots, X_n$ 相互独立，且 $X_i \sim N(\mu_i, \sigma_i^2)$，则 $\displaystyle a_0 + \sum_{i=1}^{n} a_i X_i \sim N\left( a_0 + \sum_{i=1}^{n} a_i \mu_i, \sum_{i=1}^{n} a_i^2 \sigma_i^2 \right)$

### $M=\max(X,Y)$、$N=\min(X,Y)$的分布

记 $X, Y$ 的联合分布函数为 $F(x, y)$，$X, Y$ 的边际分布函数分别为 $F_X(t), F_Y(t)$

$M$ 的分布函数：$F_M(t) = P(\max\{X, Y\} \le t) = P(X \le t, Y \le t) = F(t, t)$

当 $X, Y$ 相互**独立**时，$F_M(t) = F_X(t) \cdot F_Y(t)$

$N$ 的分布函数：$F_N(t) = P(\min\{X, Y\} \le t) = P((X \le t) \cup (Y \le t)) = F_X(t) + F_Y(t) - F(t, t)$，或者 $F_N(t) = 1 - P(\min\{X, Y\} > t) = 1 - P(X > t, Y > t)$

记忆：因为要求 $X, Y$ 的最小值 $\le t$，那么只要确保 $X, Y$ 中至少有一个 $\le t$ 即可，因此取的是两个事件的**并集**

当 $X, Y$ 相互**独立**时，$F_N(t) = F_X(t) + F_Y(t) - F_X(t) \cdot F_Y(t) = 1 - [1 - F_X(t)] \cdot [1 - F_Y(t)]$

推广到 $n$ 个变量：设 $X_1, X_2, \cdots, X_n$ 为 $n$ 个相互独立的随机变量，分布函数分别为 $F_1(x), F_2(x), \cdots, F_n(x)$，记 $M = \max\{X_1, X_2, \cdots, X_n\}$，$N = \min\{X_1, X_2, \cdots, X_n\}$，则：

$$
F_M(t) = \prod_{i=1}^{n} F_i(t)
$$

$$
F_N(t) = 1 - \prod_{i=1}^{n} [1 - F_i(t)]
$$
