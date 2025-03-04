# Chap3 分离变量法和特殊函数

## 齐次边界条件的定解问题

### 齐次方程齐次边界条件

!!! tip 解题步骤
    1. 设定解问题的解具有变量分离的形式，将偏微分方程转化为常微分方程

    2. 解本征值问题，得本征值和本征函数

    3. 叠加所有的特解，得到满足方程和边界条件的级数形式解

    4. 利用初值定出级数中的系数

    PS：需要用到二阶常微分方程和傅里叶变换的知识

!!! question 题目
    有界弦的自由振动

    $$
    \left\{
    \begin{aligned}
    \frac{\partial^2 u}{\partial t^2}=a^2\frac{\partial^2 u}{\partial x^2} \quad(0<x<l,t>0)\\
    u|_{x=0}=0,u|_{x=t}=0 \\
    u|_{t=0}=\varphi(x),\frac{\partial u}{\partial t}|_{t=0}=\phi(x)
    \end{aligned}
    \right.
    $$

!!! note 解答
    1. 分离变量

    $$
    u(x,t)=X(x)T(t)
    $$

    $$
    X(x)T^{\prime\prime}(t)=a^2T(t)X^{\prime\prime}(x)
    $$

    $$
    \frac{T^{\prime\prime}(t)}{a^2T(t)}=\frac{X^{\prime\prime}(x)}{X(x)}=-\lambda
    $$

    $$
    X^{\prime\prime}(x)+\lambda X(x)=0
    $$

    $$
    T^{\prime\prime}(t)+\lambda a^2 T(t)=0
    $$

    2. 解本征值问题

    $\lambda$<0

    $$X(x)=C_1e^{\sqrt{-\lambda} x}+C_2e^{-\sqrt{-\lambda} x}$$ 

    $\lambda$=0

    $$
    X(x)=C_1 x+C_2
    $$

    $\lambda$>0

    $$
    X(x)=C_1\cos \sqrt{\lambda}x+C_2 \sin\sqrt{\lambda}x
    $$

    3. $u_n(x,t)$的叠加

    4. 系数$A_n,B_n$的确定

### 非齐次方程齐次边界条件

## 非齐次边界条件的定解问题

### 边界条件齐次化

### 周期性条件和自然边界条件

!!! question 问题
    设有半径为1的圆形薄板，上、下侧面绝热，圆周上的温度分布已知，求圆内的温度分布，其定解问题为

    $$
    \left\{
    \begin{aligned}
    \Delta u=0,(x^+y^2<1>) \\
    u|_{\partial \Omega}=\phi(x,y),(x^2+y^2=1)
    \end{aligned}\right.$$

!!! note 解答
    1. 自变量变换

    $$\left\{
    \begin{aligned}
    x=r\cos\theta \\
    y=r\sin \theta
    \end{aligned}
    \right.$$

    将定解问题化为

    $$\left\{
    \begin{aligned}
    \frac{\partial^2 u}{\partial r^2}+\frac{1}{r}\frac{\partial u}{\partial r}+\frac{1}{r^2}\frac{\partial^2 u}{\partial \theta^2}=0
    \quad(0\le r<1,0\le \theta<2\pi) \\
    u(1,\theta)=\phi(\theta)
    \quad (0\le \theta <2\pi)
    \end{aligned}
    \right.$$

    2. 分离变量

    令$u(r,\theta)=R(r)\Phi(\theta)$

    $$\Phi^{\prime\prime}(\theta)+\lambda\Phi(\theta)=0$$

    $$r^2R^{\prime\prime}(r)+rR^{\prime}(r)-\lambda R(r)=0$$

    3. 自然的周期性条件，构成本征值问题

    $$\left\{
    \begin{aligned}
    \Phi^{\prime\prime}+\lambda \Phi=0 \\
    \Phi(\theta)=\Phi(\theta+2\pi)
    \end{aligned}\right.$$

    自然的边界条件

    $$\left\{\begin{aligned}
    r^2R^{\prime\prime}+rR^{\prime}-\lambda R=0 \\
    |R(0)|<\infty\end{aligned}\right.$$

    4. 解本征值问题

    本征值 $\lambda+n =n^2\quad (n=0,1,2)$

    本征函数 $\Phi_n =c_n\cos n\theta+d_n \sin n\theta$

    代入上式，Euler方程的通解为

    $$R_0(r)=a_0+b_0 ln r$$

    $$R_n(r)=a_nr^n+b_n r^{-n} (n=1,2,...)$$

## 柱域中的分离变量法和Bassel函数

### Bessel方程的引出

### Bessel函数及其性质

## 球域中的分离变量法及Legendre多项式

### Legendre方程的引出

### Legendre多项式

## 本征值理论

### Sturm-Liouville边值问题

### 本征函数的正交性

### 展开定理

### 奇异的本征值问题