# 偏微分方程

## Chap1 方程的导出和定解问题

### 方程的导出

**波动方程**

$$
u_{tt}=a^2 \Delta u 
$$

$$
u_{tt} = a^2 \Delta u +f(x,t)
$$

**热传导方程**

$$
u_t=a^2\Delta u
$$

$$
u_t=a^2 \Delta u + f(x,y,z,t)
$$

**调和方程**

Laplace方程

$$
\Delta u=0
$$

Poission方程

$$
\Delta u =f(x,y,z)
$$

### 定解条件和定解问题

**边界条件**

第Ⅰ类边界条件

$$
u|_{x=0} \equiv u(0,t)=f_1(t)
$$

$$
u|_{x=l} \equiv u(l,t)=f_2(t)
$$

第Ⅱ类边界条件

$$
\frac{\partial u}{\partial n}|_{x=l} = g(t)
$$

第Ⅲ类边界条件

$$
(\frac{\partial u}{\partial n}+ \mu u)|_{x=t}=f(t)
$$

**初始条件**

### 二阶线性方程的分类和叠加原理

**二阶线性方程**

$$
au_{xx}+2bu_{xy}+cu_{yy}+du_{x}+eu_{y}+fu=g
$$

**特征方程**

$$
a(\frac{dy}{dx})^2 -2b\frac{dy}{dx}+c=0
$$

相应的积分曲线称为特征线

**双曲型方程的标准型**

$$
u_{ss}-u_{tt}=H_2(s,t,u,u_s,u_t)
$$

**抛物型方程的标准型**

$$
u_{\eta\eta}=H_3(\xi,\eta,u,u_\xi,u_\eta)
$$

**椭圆型方程的标准型**

$$
u_{ss}+u_{tt}=H_4(s,r,u,u_s,u_r)
$$

!!! note 二阶线性偏微分方程的化简
    1. 求特征方程
    2. 求特征线
    3. 作替换化简

**线性方程的叠加原理**

## Chap2 行波法

### 一维波动方程的初值问题

**无界弦的自由振动**

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

**半无界弦的自由振动**

关于x作奇延拓

$$
u(x,t) = \left\{
\begin{aligned}
\frac{1}{2} \left[ \varphi(x + at) + \varphi(x - at) \right] + \frac{1}{2a} \int_{x - at}^{x + at} \phi(\alpha) \, d\alpha, & x-at \ge 0 \\
\frac{1}{2} \left[ \varphi(x+at)-\varphi(at-x)\right]+\frac{1}{2a}\int_{at-x}^{x+at} \varphi(\alpha)d\alpha ,x-at<0 \\
\end{aligned}
\right.
$$

**无界弦的强迫振动**

一维非齐次波动方程解的Kirchhoff公式

$$
u(x,t)=\frac{1}{2}[\varphi(x+at) +\varphi(x-at)] +\frac{1}{2a}\int_{x-at}^{x+at}\varphi(\xi)d \xi + \frac{1}{2a}\iint_G f(\xi,\tau)d\xi d\tau
$$

### 二维与三维波动方程的初值问题

### 解的物理意义

## Chap3 分离变量法

### 齐次边界条件的定解问题

### 非齐次边界条件的定解问题

### 柱域中的分离变量法和Bassel函数

### 球域中的分离变量法及Legendre多项式

### 本征值理论