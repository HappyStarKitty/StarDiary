## Chap2 行波法

## 一维波动方程的初值问题

### 无界弦的自由振动

对于无界弦的自由振动，可归纳为

$$
\left\{
\begin{array}{rcl}
\frac{\partial^2 u}{\partial t^2}=a^2\frac{\partial^2 u}{\partial x^2},(-\infty<x<+\infty,t>0) \\
u|_{t=0}=\varphi(x),(-\infty<x<+\infty) \\
\frac{\partial u}{\partial t} |_{t=0}=\phi(x),(-\infty<x<+\infty)
\end{array}
\right.
$$

下式为该定解问题的解，称为D'Alembert公式

$$
u(x,t)=\frac{1}{2} (\varphi (x-at) \varphi (x+at)) + \frac{1}{2a} \int_{x-at}^{x+at} \varphi(\alpha) d\alpha
$$

### 半无界弦的自由振动

关于x作奇延拓

$$
u(x,t) = \left\{
\begin{aligned}
\frac{1}{2} \left[ \varphi(x + at) + \varphi(x - at) \right] + \frac{1}{2a} \int_{x - at}^{x + at} \phi(\alpha) \, d\alpha, & x-at \ge 0 \\
\frac{1}{2} \left[ \varphi(x+at)-\varphi(at-x)\right]+\frac{1}{2a}\int_{at-x}^{x+at} \varphi(\alpha)d\alpha ,x-at<0
\end{aligned}
\right.
$$

### 无界弦的强迫振动

**Duhamel原理（齐次化原理）**

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

**一维非齐次波动方程解的Kirchhoff公式**

$$
u(x,t)=\frac{1}{2}[\varphi(x+at) +\varphi(x-at)] +\frac{1}{2a}\int_{x-at}^{x+at}\varphi(\xi)d \xi + \frac{1}{2a}\iint_G f(\xi,\tau)d\xi d\tau
$$

## 二维与三维波动方程的初值问题

### 球对称情况

### 一般情况

### 降维法及二维波动方程

## 解的物理意义

### D'Alembert公式的物理意义

### 依赖区域、决定区域和影响区域