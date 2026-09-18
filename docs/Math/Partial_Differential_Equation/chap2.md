# Chap2 行波法

## 一维波动方程的初值问题

### 无界弦的自由振动

对于无界弦的自由振动，可归纳为求解下列的定解问题

$$
\left\{
\begin{array}{rcl}
\frac{\partial^2 u}{\partial t^2}=a^2\frac{\partial^2 u}{\partial x^2},(-\infty<x<+\infty,t>0) \\
u|_{t=0}=\varphi(x),(-\infty<x<+\infty) \\
\frac{\partial u}{\partial t} |_{t=0}=\psi(x),(-\infty<x<+\infty)
\end{array}
\right.
$$

下式为该定解问题的解，称为D'Alembert公式

$$
u(x,t)=\frac{1}{2} (\varphi (x-at) +\varphi (x+at)) + \frac{1}{2a} \int_{x-at}^{x+at} \psi(\alpha) d\alpha
$$

??? proof "推导过程"
    作自变量变换

    $$\left\{\begin{aligned}\xi=x-at \\ \eta=x+at\end{aligned}\right.$$

    方程化为

    $$\frac{\partial^2 u}{\partial \xi \partial \eta}=0$$

    即有

    $$u(\xi,\eta)=F(\xi)+G(\eta)$$

    换回原变量，得到通解

    $$u(x,t)=F(x-at)+G(x+at)$$

    由初始条件不难得到

    $$F(x)+G(x)=\varphi(x)$$

    $$a[-F'(x)+G'(x)]=\psi(x)$$

    对上式两边关于x积分得

    $$-F(x)+G(x)=\frac{1}{a}\int_{x_0}^{x}\psi(\alpha)\mathrm{d}\alpha+C$$

    其中$C=G(x_0)-F(x_0)$

    联立解得

    $$F(x)=\frac{1}{2}\varphi(x)-\frac{1}{2a}\int_{x_0}^{x_1} \psi(\alpha)\mathrm{d}\alpha-\frac{C}{2}$$

    $$G(x)=\frac{1}{2}\varphi(x)+\frac{1}{2a}\int_{x_0}^{x_1}\psi(\alpha)\mathrm{d}\alpha+\frac{C}{2}$$

    代入即有D'Alembert公式

### 半无界弦的自由振动

一端固定的半无限长的弦自由振动，可归结为求解下列定解问题

$$
\left\{
\begin{array}{rcl}
\frac{\partial^2 u}{\partial t^2}=a^2\frac{\partial^2 u}{\partial x^2},(0<x<+\infty,t>0) \\
u|_{t=0}=\varphi(x),(0<x<+\infty) \\
\frac{\partial u}{\partial t} |_{t=0}=\psi(x),(0<x<+\infty)
\\
u|_{x=0}=0,(t\ge 0)
\end{array}
\right.
$$

??? proof "推导过程"
    我们希望能够通过D'Alembert公式求解，为此将$u(x,t),\varphi(x),\psi(x)$关于$x$作<b>奇延拓</b>，即有

    $$U(x,t)=\left\{\begin{aligned}u(x,t),(x\ge 0)\\ -u(-x,t),(x<0)\end{aligned}\right.$$

    $$\Phi(x)=\left\{\begin{aligned}\varphi(x),(x\ge 0)\\-\varphi(-x),(x<0)\end{aligned}\right.$$

    $$\Psi(x)=\left\{\begin{aligned}\psi(x),(x\ge 0)\\-\psi(-x),(x<0)\end{aligned}\right.$$

    不难验证U(x,t)是下列初值问题的解

    $$
    \left\{
    \begin{array}{rcl}
    \frac{\partial^2 U}{\partial t^2}=a^2\frac{\partial^2 U}{\partial x^2},(-\infty<x<+\infty,t>0) \\
    U|_{t=0}=\Phi(x),(-\infty<x<+\infty) \\
    \frac{\partial U}{\partial t} |_{t=0}=\Psi(x),(-\infty<x<+\infty)
    \end{array}
    \right.
    $$

    我们可利用D'Alembert公式，求得

    $$
    U(x,t)=\frac{1}{2} (\Phi (x-at)+ \Phi (x+at)) + \frac{1}{2a} \int_{x-at}^{x+at} \Psi(\alpha) d\alpha
    $$

    为了得到原定解问题的解，我们仅需考虑$x\ge 0$的情况

我们给出下列分片定义的函数u(x,t)，其为上述定解问题的解

$$
u(x,t) = \left\{
\begin{aligned}
\frac{1}{2} \left[ \varphi(x + at) + \varphi(x - at) \right] + \frac{1}{2a} \int_{x - at}^{x + at} \phi(\alpha) \, d\alpha, & x-at \ge 0 \\
\frac{1}{2} \left[ \varphi(x+at)-\varphi(at-x)\right]+\frac{1}{2a}\int_{at-x}^{x+at} \varphi(\alpha)d\alpha ,x-at<0
\end{aligned}
\right.
$$

如果x=0的一端是自由的，只需将第四式用

$$\frac{\partial u}{\partial x}|_{x=0}=0$$

代替，通过将$\varphi$、$\psi$、$u(x,t)$关于x作<b>偶延拓</b>，可用上述类似方法求解

### 无界弦的强迫振动

无界弦的强迫振动，可归结为求下列定解问题

$$
\left\{
\begin{array}{rcl}
\frac{\partial^2 u}{\partial t^2}=a^2\frac{\partial^2 u}{\partial x^2}+f(x,t),(-\infty<x<+\infty,t>0) \\
u|_{t=0}=\varphi(x),(-\infty<x<+\infty) \\
\frac{\partial u}{\partial t} |_{t=0}=\psi(x),(-\infty<x<+\infty)
\end{array}
\right.
$$

??? proof "推导过程0"
    我们利用线性方程的叠加原理，将$u(x,t)$分解为

    $$u=u_1+u_2$$

    其中$u_1$、$u_2$分别为下列定解问题的解

    $$
    \left\{
    \begin{array}{rcl}
    \frac{\partial^2 u}{\partial t^2}=a^2\frac{\partial^2 u}{\partial x^2}\\
    u|_{t=0}=\varphi(x) \\
    \frac{\partial u}{\partial t} |_{t=0}=\psi(x)
    \end{array}
    \right.
    $$

    $$
    \left\{
    \begin{array}{rcl}
    \frac{\partial^2 u}{\partial t^2}=a^2\frac{\partial^2 u}{\partial x^2}+f(x,t) \\
    u|_{t=0}=0 \\
    \frac{\partial u}{\partial t} |_{t=0}=0
    \end{array}
    \right.
    $$

    对于$u_1$我们可以直接利用D'Alembert公式求解，因此，我们只需讨论$u_2$的求解问题

??? proof "推导过程1：引理"
    如果函数$f(x,u)$及偏导数$f_u(x,u)$在矩形域$(a\le x\le b,\alpha \le u \le \beta)$上连续，则

    $$\varphi(u)=\int_a^u f(x,u)\mathrm{d}x$$

    在$[\alpha,\beta]$上可微，并且对于$x\in [\alpha,\beta]$都有

    $$\frac{\mathrm{d}\varphi}{\mathrm{d}u}=\int_\alpha^u \frac{\partial f}{\partial u}(x,u)\mathrm{d}x+f(x,u)$$

??? proof "推导过程2：Duhamel原理"
    Duhamel原理又称齐次化原理

    设$\omega=\omega(x,t,\tau)$是初值问题

    $$
    \left\{
    \begin{aligned}
    \frac{\partial^2 \omega}{\partial t^2}=a^2 \frac{\partial \omega}{\partial x^2} \quad (-\infty<x<+\infty,t>\tau) \\
    \omega|_{t=\tau}=0 \quad(-\infty<x<+\infty) \\
    \frac{\partial \omega}{\partial t}|_{t=\tau} =f(x,\tau) (-\infty<x<+\infty)
    \end{aligned}
    \right.
    $$

    的解，则

    $$
    u(x,t)=\int_{0}^{t} \omega(x,t,\tau)d\tau
    $$

    是初值问题

    $$
    \left\{
    \begin{aligned}
    \frac{\partial^2 u}{\partial t^2}=a^2\frac{\partial^2 u}{\partial x^2}+f(x,t) \quad (-\infty<x<+\infty,t>0) \\
    u|_{t=0}=0 \quad (-\infty<x<+\infty) \\
    \frac{\partial u}{\partial t}|_{t=0}=0 \quad (-\infty<x<+\infty)
    \end{aligned}
    \right.
    $$

    的解

??? proof "推导过程3"
    由Duhaml原理，知

    $$u_2(x,t)=\int_0^t \omega(x,t,\tau)\mathrm{d}\tau$$

    令$t'=t-\tau$，则前式可化为

    $$
    \left\{
    \begin{aligned}
    \frac{\partial^2 \omega}{\partial t^{'2}}=a^2 \frac{\partial \omega}{\partial x^2} \quad (-\infty<x<+\infty,t'>0) \\
    \omega|_{t'=0}=0 \quad(-\infty<x<+\infty) \\
    \frac{\partial \omega}{\partial t'}|_{t'=0} =f(x,\tau) (-\infty<x<+\infty)
    \end{aligned}
    \right.
    $$

    利用D'Alembert公式，即可得

    $$\omega(x,t,\tau)=\frac{1}{2a}\int_{x-a(t-\tau)}^{x+a(t-\tau)}f(\xi,\tau)\mathrm{d}\tau$$

    $$u_2(x,t)=\frac{1}{2a}\int_0^t \int_{x-a(t-\tau)}^{x+a(t-\tau)}f(\xi,\tau)\mathrm{d}\tau=\frac{1}{2a}\iint_G f(\xi,\tau)\mathrm{d}\xi\mathrm{d}\tau$$

    其中区域G为$(\xi,\tau)$平面上过点$(x,t)$的两条特征线与$\xi$轴所围成的三角形区域

下式为上述定解问题的解，称为<b>一维非齐次波动方程解的Kirchhoff公式</b>

$$
u(x,t)=\frac{1}{2}[\varphi(x+at) +\varphi(x-at)] +\frac{1}{2a}\int_{x-at}^{x+at}\varphi(\xi)d \xi + \frac{1}{2a}\iint_G f(\xi,\tau)d\xi d\tau
$$

其中区域G为$(\xi,\tau)$平面上过点$(x,t)$的两条特征线与$\xi$轴所围成的三角形区域

## 二维与三维波动方程的初值问题

### 球对称情况

### 一般情况

### 降维法及二维波动方程

## 解的物理意义

### D'Alembert公式的物理意义

考察一维波动方程的通解表达式

$$u(x,t)=F(x-at)+G(x-at)$$

此式表明，波动方程的解由两个波组成

$F(x-at)$代表沿x轴向右传播的波，当t=0时，波形为$f(x)$而后以恒定速率a向右传播，保持波形不变

$G(x+at)$代表沿x轴向左传播的波，当t=0时，波形为$g(x)$而后以恒定速率a想做传播，保持波形不变

我们称D'Alembert公式给出的解为行波解，在求解过程中所用的方法为<b>行波法</b>

### 依赖区域、决定区域和影响区域

在物理上，波的传播过程由清晰的前阵面和波后阵面的现象，称为<b>惠更斯原理</b>或<b>无后效现象</b>