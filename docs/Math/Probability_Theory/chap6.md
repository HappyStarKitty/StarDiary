# Chap6 统计量与抽样分布

## 随机抽样与统计量

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

## $\chi^2$分布，$t$分布，$F$分布

### $\chi^2$分布

!!! definition "$\chi^2$分布"
    设$X_1,X_2...X_n$为独立同分布的随机变量，且都服从标准正态$N(0,1)$，记：

    $$Y=X_1^2+X_2^2+...X_n^2 \sim\chi^2(n)
    $$

    称$Y$服从自由度为$n$的$\chi^2$分布，记作$Y\sim\chi^2(n)$

!!! note "$\chi^2$分布的性质"

    - 分布可加性：设$Y_1\sim\chi^2(m)$，$Y_2\sim\chi^2(n)$，且两者相互独立，则$Y_1+Y2\sim\chi^2(m+n)$

    - 数学期望和方差：设$Y\sim\chi^2(n)$，$E(Y)=n,Var(Y)=2n$

    - 分位数：对于给定的正数$\alpha,0<\alpha<1$，称满足条件$P(\chi^2>\chi_{\alpha}^2(n))=\int_{\chi^2_\alpha(n)}^$

### $t$分布

!!! definition "$t$分布"

    设$X\sim N(0,1)$，$Y\sim \chi^2(n)$，且$X,Y$相互独立，则称随机变量$t=\frac{X}{\sqrt{Y/n}}$服从自由度为$n$的$t$分布，记为$t\sim t(n)$

### $F$分布

!!! definition "$F$分布"
    设$U\sim \chi^2(n_1)$，$V\sim \chi^2(n_2)$，且$U$与$V$相互独立，则称随机变量$F=\frac{U/n_1}{V/n_2}$服从第一自由度为$n_1$，第二自由度为$n_2$的$F$分布，记为$F\sim F(n_1,n_2)$

## 正态总体下的抽样分布

### 单个正态总体

设$X_1$，$X_2$，...$X_n$为来自正态分布$N(\mu,\sigma^2)$的简单随机样本，$\bar{X}$是样本均值，$S^2$是样本方差，则有

- $\bar{X} \sim N(\mu, \frac{\sigma^2}{n})$

- $\bar{X}$与$S^2$相互独立


- $\frac{(n-1)S^2}{\sigma^2}\sim \chi^2(n-1)$

- $\frac{\bar{X}-\mu}{S/\sqrt{n}}\sim t(n-1)$

### 多个正态总体

设$X_1,X_2,...X_{n1}$和$Y_1,Y_2,...Y_{n2}$分别为来自正态总体$N(\mu_1,\sigma_1^2)$和$N(\mu_2,\sigma_2^2)$的两个相互独立的简单随机样本

- $\frac{S_1^2/\sigma_1^2}{S_2^2/\sigma_2^2}\sim F(n_1-1,n_2-1)$

- 当$\sigma_1^2=\sigma_2^2=\sigma^2$时，

$$
\frac{(\bar{X}-\bar{Y})-(\mu_1-\mu_2)}{S_w\sqrt{\frac{1}{n_1}+\frac{1}{n_2}}}\sim t(n_1+n_2-2)
$$

其中 $S_w^2=\frac{(n_1-1)S_1^2+(n_2-1)S_2^2}{n_1+n_2-2}$，$S_w=\sqrt{S_w^2}$