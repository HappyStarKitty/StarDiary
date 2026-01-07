# Chap7 拉普拉斯变换

## 拉氏变换的基本概念

### 拉氏变换的定义

设函数$f(t)$在$t\ge0$有定义，而且积分

$$F(s)=\int_0^{\infty}f(t)e^{-st}dt$$

存在，则称$F(s)$位$f(t)$的拉普拉斯变换，简称拉氏变换，记为

$$F(s)=L[f(t)]$$

$f(t)$称为$F(s)$的反变换，记为

$$f(t)=L^{-1}[F(s)]$$

## 拉氏变换的基本性质

### 线性性质

!!! info "线性性质"

    $$L[\alpha_1f_1(t)+\alpha_2f_2(t)]=\alpha_1F_1(s)+\alpha_2F_2(s)$$

    $$L^{-1}[\alpha_1F_1(s)+\alpha_2F_s(s)]=\alpha_1f_1(t)+\alpha_2f_2(t)$$

### 平移性质

!!! info "时移性质"

    $$L(f(t-t_0))=e^{-st_0}F(s)$$

    $$L^{-1}[e^{-st_0}F(s)]=f(t-t_0) \quad(t_0>0)$$

    $$L^{-1}[e^{-st_0}]F(s)=f(t-t_0)u(t-t_0) \quad(t_0<0)$$

!!! info "频移性质"

    $$L[e^{s_0 t f(t)}]=F(s-s_0)$$

### 微分性质

!!! info "象原函数的微分性质"

    若$L[f(t)]=F(s)$，且$f^{\prime}(t)$也是原函数，则

    $$L[f'(t)]=sF(s)-f(0^{+})$$

    可类推到原函数n阶导数拉氏变换

    $$L[f^{(n)}(t)]=s^nF(s)-s^{n-1}f(0)-s^{n-2}f^\prime(0)-...-f^{(n-1)}(0)$$

    若f(t)及其各阶导数的初始值都为零，则

    $$L[f^{(n)}(t)]=s^nF(s)$$

!!! info "象函数的微分性质"

    $$L[(-t)^n f(t)]=F^{(n)}(s), \quad n=0,1,2,...$$

### 积分性质

!!! note "象原函数的积分性质"
    若$L[f(t)]=F(s)$，则

    $$L[\int_0^t f(\tau)\mathrm{d}\tau]=\frac{1}{s}F(s)$$

    若原函数f(t)及其各重积分初始值都为零，则

    $$L[\int\int ... \int f(t)\mathrm{d}t^n]=\frac{1}{s^n}F(s)$$

!!! note "象函数的积分性质"
    若$L[f(t)]=F(s)$，积分$\int_s^\infty F(u)\mathrm{d}u$收敛，且$\frac{f(t)}{t}$的LT存在，且

    $$L[\frac{f(t)}{t}]=\int_s^\infty F(u)\mathrm{d}u$$

### 极限性质

!!! note "初值关系"
    若$L[f(t)]=F(s)$，则

    $$f(0^+)=\lim_{s\rightarrow \infty}sF(s)$$

!!! note "终值关系"
    若$L[f(t)]=F(s)$，且$f(+\infty)$存在，$sF(s)$的所有奇点在半平面$Re(s)<\sigma_0$，则

    $$f(+\infty)=\lim_{s\rightarrow 0}sF(s)$$

### 卷积性质

!!! note "卷积概念"
    如果

    $$\int_{-\infty}^{+\infty}f_1(\tau)f_2(t-\tau)\mathrm{d}\tau$$

    存在，则称为$f_1(t)$和$f_2(t)$的卷积，记为
    $f_1(t)*f_2(t)$

!!! info "卷积定理"
    设$L[f(t)]=F(s),L[g(t)]=G(s)$，则

    $$L[f(t)*g(t)]=F(s)\cdot G(s)$$

    $$L^{-1}[F(s)G(s)]=f(t)*g(t)$$

## 拉式逆变换

### 拉氏变换的反演公式

!!! info "定理"
    若复值函数$f(t)$满足LT存在定理条件，则在$f(t)$的任意连续点处

    $$f(t)=\frac{1}{2\pi i}\int_{\sigma-i\infty}^{\sigma+i\infty}F(s)e^{st}ds$$

### 利用留数理论计算象原函数

!!! info "定理"
    若$F(s)$的全部奇点$s_1,s_2,...s_n$都在$Re(s)<\sigma$内，且当$s$在$Re(s)\le \sigma$上趋于无穷时，$F(s)$趋于零，则

    $$f(t)=L^{-1}[F(s)]=\sum_{k=1}^n Res[F(s)e^{st};s_k], t>0$$

## 拉氏变换的应用

!!! note "拉氏变换求解微分方程"
    1. 对微分方程进行拉氏变换
    2. 根据得出的代数方程求出输出的拉氏变换表达式
    3. 将输出的拉氏变换表达式展开成部分分式，求出各项系数
    4. 查拉氏变换表，求得原函数

$$F(s)=\frac{M(s)}{D(s)}=\frac{b_0s^m+b_1s^{m-1}+...b_{m-1}s+b_m}{a_0s^n+a_1s^{n-1}+...a_{n-1}s+a_n}, (m<n)$$

1. $F(s)$有不同实数极点

$$F(s)=\frac{c_1}{s-p_1}+\frac{c_2}{s-p_2}+...+\frac{c_n}{s-p_n}$$

$$c_i=[F(s)(s-p_i)]_{s=p_i}$$

2. $F(s)$有共轭复数极点

!!! example 例题
    求拉氏反变换 $F(s)=\frac{s-3}{s^2+2s+2}$

    $$F(s)=\frac{s-3}{(s+1)^2+1}=\frac{s+1}{(s+1)^2+1}-\frac{4}{(s+1)^2+1}$$

    查表得 $f(t)=e^{-t}(\cos t-4\sin t)$

3. $F(s)$有重实数极点

假设$F(s)$有L重极点$p_1$，其余极点均不相同，则

$$F(s)=\frac{M(s)}{D(s)}=\frac{c_1}{(s-p_1)^l}+\frac{c_2}{(s-p_2)^{l-1}}+...+\frac{c_1}{s-p_1}+\frac{c_{l+1}}{s-p_{l+1}}+...+\frac{c_n}{s-p_n}$$

其中

$$c_l=[F(s)\cdot (s-p_1)^l]_{s=p_1}$$

$$c_{l-i}=\frac{1}{i!}\{\frac{\mathrm{d}^i}{\mathrm{d}s}[F(s)(s-p_1)^l]\}_{s=p_1}$$
## 重要的拉氏变换

|$f(t)$|$F(s)$|$f(t)$|$F(s)$|
|:-:|:-:|:-:|:-:|
|$\delta(t)$|1|$\sin \omega t$|$\frac{\omega}{s^2+\omega^2}$|
|$1(t)$|$\frac{1}{s}$|$\cos \omega t$|$\frac{s}{s^2+\omega^2}$
|$t$|$\frac{1}{s^2}$|$e^{-at}\sin\omega t$|$\frac{\omega}{(s+a)^2+\omega^2}$|
|$e^{-at}$|$\frac{1}{s+a}$|$e^{-at}\cos \omega t$|$\frac{s+a}{(s+a)^2+\omega^2}$|

