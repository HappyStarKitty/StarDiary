# Chap5 大数定律及中心极限定理

## 大数定律

!!! formula "马尔可夫不等式"
    若随机变量$Y$的$k$阶（原点）矩存在（$k\ge1$），则对任意$\varepsilon$，有：

    $$P\{|Y| \ge \varepsilon\} \le \frac{E(|Y|^k)}{\varepsilon^k}
    $$

!!! formula "切比雪夫不等式"

    $$
    P\{ |X-\mu| \ge \varepsilon\}\le \frac{\sigma^2}{\varepsilon^2}
    $$

    $$
    P\{|X-E(X)| \ge \varepsilon \} \le \frac{Var(X)}{\varepsilon^2}
    $$

设 $\{X_i, i \geqslant 1\}$ 为一随机变量序列，若存在常数序列 $\{c_n, n \geqslant 0\}$，使得对任意 $\varepsilon > 0$，有：

$$
\lim_{n \to +\infty} P\left( \left| \frac{1}{n}\sum_{i=1}^{n} X_i - c_n \right| \geqslant \varepsilon \right) = 0 \quad \left( \text{or} \quad \lim_{n \to +\infty} P\left( \left| \frac{1}{n}\sum_{i=1}^{n} X_i - c_n \right| < \varepsilon \right) = 1 \right)
$$

成立，即当 $n \to +\infty$ 时，有 $\displaystyle \frac{1}{n}\sum_{i=1}^{n} X_i - c_n \xrightarrow{P} 0$，则称随机变量序列 $\{X_i, i \geqslant 1\}$ 服从**弱大数定律**，简称服从**大数定律**。特别地，当 $c_n = c\ (n = 1, 2, \dots)$ 时，可写为：$\displaystyle \frac{1}{n}\sum_{i=1}^{n} X_i \xrightarrow{P} c,\ n \to +\infty$

!!! theorem "伯努利大数定律"
    设$n_A$为$n$重伯努利试验中事件$A$发生的次数，$p$为事件$A$在每次试验中发生的概率，则对任意$\varepsilon>0$，有：

    $$
    \lim_{n \rightarrow +\infty}P\{ |\frac{n_A}{n}-p|\ge \varepsilon\} =0
    $$

!!! theorem "辛钦大数定律"
    设$\{X_i,i\ge1\}$为独立同分布的随机变量序列，且数学期望存在，记为$\mu$，则对任意$\varepsilon>0$，有：

    $$
    \lim_{n\rightarrow +\infty}P\{|\frac{1}{n}\sum_{i=1}^{n}X_i-\mu|\ge \varepsilon\}=0
    $$

    即 $\displaystyle \frac{1}{n}\sum_{i=1}^{n} X_i \xrightarrow{P} \mu\ (n \to +\infty)$，并认为此时随机变量序列 $\{X_i, i \geqslant 1\}$ 服从大数定律

    推论：

    - 设 $\{X_i, i \geqslant 1\}$ 为独立同分布的随机变量序列，若 $h(x)$ 为一连续函数，且 $E(|h(X_1)|) < +\infty$，则对任意 $\varepsilon > 0$，有：

    $$
    \lim_{n \to +\infty} P\left( \left| \frac{1}{n}\sum_{i=1}^{n} h(X_i) - a \right| \geqslant \varepsilon \right) = 0
    $$

    其中 $a = E(h(X_1))$，即 $\displaystyle \frac{1}{n}\sum_{i=1}^{n} h(X_i) \xrightarrow{P} a,\ n \to +\infty$

    - $f(\overline{X}) \xrightarrow{P} f(E(X))$

## 中心极限定理

### 独立同分布情形

!!! theorem "林德伯格-莱维中心极限定理"
    设$\{X_i,i\ge1\}$为独立同分布的随机变量序列，且期望$E(X_i)=\mu$和方差$Var(X_i)=\sigma^2$均存在（$\sigma>0$），则对任意$x\in R$，有：

    $$
    \lim_{n \rightarrow +\infty}P\{{\frac{\sum_{i=1}^n X_i - E(\sum_{i=1}^n X_i)}{\sqrt{Var(\sum_{i=1}^n X_i)}}\le x}\}=\lim_{n \rightarrow +\infty}P\{\frac{\sum_{i=1}^{n} X_i-n\mu}{\sigma\sqrt{n}}\le x\}=\frac{1}{\sqrt{2\pi}}\int_{-\infty}^{x}e^{-\frac{t^2}{2}}dt=\Phi(x)
    $$

    也称为独立同分布的中心极限定理

    该定理表明：期望为 $\mu$，方差为 $\sigma^2$ 的独立同分布的随机变量的部分和 $\displaystyle \sum_{i=1}^{n} X_i$ 的标准化变量 $\dfrac{\displaystyle \sum_{i=1}^{n} X_i - n\mu}{\sigma\sqrt{n}}$，当 $n$ 充分大时，近似地服从**标准正态分布** $N(0, 1)$，即：

    $$
    \frac{\displaystyle \sum_{i=1}^{n} X_i - n\mu}{\sigma\sqrt{n}} \overset{\text{approximately}}{\sim} N(0, 1), \text{ when } n \text{ is sufficiently large}
    $$

    或者记作 $\displaystyle \frac{1}{n}\sum_{i=1}^{n} X_i \overset{\text{approximately}}{\sim} N\left(\mu, \frac{\sigma^2}{n}\right)$（当 $n$ 充分大时）

!!! question "例题"
    利用中心极限定理，$\lim_{n\rightarrow +\infty}\frac{n^k}{k!}e^{-n}=$____

    引随机变量列：$X_k$服从参数为1的泊松分布，且相互独立，则知$\sum_{i=1}^n X_k$服从参数为$n$的泊松分布，$E(\sum X_k)=D(\sum X_k)=n$，有

    $$P{\sum X_k \le n}=\sum \frac{n^k}{k!}e^{-n}$$

    又

    $$P(\sum X_k \le n)=P\{\frac{\sum X_k-n}{\sqrt{n}}\ge \frac{n-n}{\sqrt{n}}\}$$

    由中心极限定理，即得

    $$\lim \sum \frac{n^k}{k!}e^{-n}=\Phi(0)=\frac{1}{2}$$

!!! theorem "棣莫弗-拉普拉斯中心极限定理"
    设$n_A$为$n$重伯努利试验中事件$A$发生的次数，$p$为事件$A$在每次试验中发生的概率，则对任意$x\in R$，有：

    $$
    \lim_{n \rightarrow +\infty}P\{\frac{n_A-np}{\sqrt{np(1-p)}} \le x\}=\frac{1}{\sqrt{2\pi}}\int_{-\infty}^x e^{-\frac{t^2}{2}}dt=\Phi(x)
    $$

    该定理表明，当$n$充分大时，二项分布$B(n,p)$可用正态分布$N(np,np(1-p))$来逼近

### 独立不同分布情形

!!! theorem "李雅普诺夫中心极限定理"
    设$\{X_i,i\ge1\}$为相互独立的随机变量序列，且数学期望$E(X_i)=\mu_i$，方差$Var(X_i)=\sigma_i^2$（$\sigma_i>0$），如果存在$\varepsilon>0$，使

    $$\lim_{n\rightarrow +\infty}\frac{1}{B_n^{2+\varepsilon}}\sum_{i=1}^{n} E|X_i-\mu_i|^{2+\varepsilon}=0$$

    其中$B_n^2=\sum_{i=1}^n \sigma_i^2$，那么对任意的$x\in R$，有

    $$
    \lim_{n\rightarrow +\infty}P\{\frac{1}{B_n}\sum_{i=1}^{n}(X_i-\mu_i)\le x\}=\frac{1}{\sqrt{2\pi}}\int_{-\infty}^{x}e^{-\frac{t^2}{2}}dt=\Phi(x)
    $$