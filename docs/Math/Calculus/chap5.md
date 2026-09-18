# Chap5 定积分及其应用

## 定积分概念

## 定积分的性质和基本定理

### 微积分学基本定理

## 定积分的计算方法

!!! info "定积分换元积分法"
    若函数$f(x)$在$[a,b]$上连续，作变量代换$x=\psi(t)$，$\psi(t)$满足下列条件：

    （1）$\psi(\alpha)=a$，$\psi(\beta)=b$且$\psi(t)\in[a,b]$，$t\in[\alpha,\beta]$；

    （2）在$[\alpha,\beta]$上有连续的导数$\psi^\prime(t)$，

    则有定积分换元公式

    $$\boxed{\int_a^b f(x)\mathrm{d}x=\int_{\alpha}^\beta f(\psi(t))\psi^\prime(t)\mathrm{d}t}$$

    上式从左向右又称为定积分的<b>变量代换法</b>，从右向左又称为定积分的<b>凑微分法</b>

!!! info "定积分分部积分法"
    若$u=u(x)$，$v=v(x)$在$[a,b]$上具有连续的导函数，则

    $$\boxed{\int_a^b u\mathrm{d}v=uv|_a^b-\int_a^b v\mathrm{d}u}$$

如果$f(x)$为$[a,b]$上的连续函数，$\varphi_1(x)、\varphi_2(x)$为可导函数，则

$$(\int_{\varphi_1(x)}^{\varphi_2(x)}f(t)\mathrm{d}t)^\prime=f[\varphi_2(x)\mathrm]\cdot\varphi_2^\prime (x)-f[\varphi_1(x)]\cdot \varphi_1^\prime
(x)$$

### 简化的定积分计算方法

!!! formula "常用公式"

    $$\int_{0}^{\frac{\pi}{2}}\sin^n x\mathrm{d}x=\int_{0}^{\frac{\pi}{2}}\cos^n x\mathrm{d}x=\left\{\begin{aligned}\frac{n-1}{n}\cdot \frac{n-3}{n-2}\cdot...\frac{1}{2}\cdot\frac{\pi}{2}，n为正偶数 \\ \frac{n-1}{n}\cdot\frac{n-3}{n-2}\cdot...\cdot \frac{2}{3},n为大于1的奇数\end{aligned}\right.$$

    $$\int_{0}^\pi xf(\sin x)\mathrm{d}x=\frac{\pi}{2} f(\sin x)\mathrm{d}x$$

## 定积分的应用

### 平面图形的面积

### 立体及旋转体的体积

### 曲边扇形的面积

$$S=\frac{1}{2}\int_{\alpha}^\beta r^2(\theta)\mathrm{d}\theta$$

### 平面曲线的弧长

$$s=\int_{\alpha}^\beta \sqrt{\varphi^{\prime2}(t)+\psi^{\prime2}(t)}\mathrm{d}t$$

$$s=\int_a^b \sqrt{1+f^{\prime2}(x)}\mathrm{d}x$$

$$
s = \int_{\alpha}^{\beta} \sqrt{x'^2(\theta) + y'^2(\theta)} \, \mathrm{d}\theta = \int_{\alpha}^{\beta} \sqrt{r^2(\theta) + r'^2(\theta)} \, \mathrm{d}\theta
$$

## 反常积分

### 无穷区间上的反常积分

!!! definition "第一类反常积分"
    设函数 $f(x)$ 在区间 $[a, +\infty)$ 上连续，于是对于任意 $t > a$，积分 $\displaystyle \int_{a}^{t} f(x) \, \mathrm{d}x$ 存在，它是 $t$ 的函数，称记号

    $$
    \int_{a}^{+\infty} f(x) \, \mathrm{d}x \overset{\text{def}}{=} \lim_{t \to +\infty} \int_{a}^{t} f(x) \, \mathrm{d}x 
    $$

    为函数 $f(x)$ 在无穷区间 $[a, +\infty)$ 上的<b>反常积分</b>（或<b>第一类反常积分</b>）

    若式 (5.29) 右端的极限存在，就称反常积分 $\displaystyle \int_{a}^{+\infty} f(x) \, \mathrm{d}x$ 收敛，该极限值称为反常积分的值；反之，若此极限不存在，则称反常积分 $\displaystyle \int_{a}^{+\infty} f(x) \, \mathrm{d}x$ 发散

### 无界函数的反常积分

!!! definition "第二类反常积分"
    设函数 $f(x)$ 在区间 $(a, b]$ 上连续，$\lim\limits_{x \to a^+} f(x) = \infty$（称点 $a$ 为<b>瑕点</b>）

    于是，任给 $\varepsilon > 0$ 且 $\varepsilon < b - a$，$\displaystyle \int_{a+\varepsilon}^{b} f(x) \, \mathrm{d}x$ 均存在，它是 $\varepsilon$ 的函数，称记号

    $$
    \int_{a}^{b} f(x) \, \mathrm{d}x \overset{\text{def}}{=} \lim_{\varepsilon \to 0^+} \int_{a+\varepsilon}^{b} f(x) \, \mathrm{d}x 
    $$

    为无界函数 $f(x)$ 在 $[a, b]$ 上的<b>反常积分</b>（<b>第二类反常积分</b>）