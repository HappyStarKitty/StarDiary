# Chap3 分离变量法和特殊函数

## 齐次边界条件的定解问题

### 齐次方程齐次边界条件

!!! note 解题步骤
    1. 设定解问题的解具有变量分离的形式，将偏微分方程转化为常微分方程
    2. 解本征值问题，得本征值和本征函数
    3. 叠加所有的特解，得到满足方程和边界条件的级数形式解
    4. 利用初值定出级数中的系数
    PS：需要用到二阶常微分方程和傅里叶变换的知识

对于有界弦的自由振动

$$
\left\{
\begin{aligned}
\frac{\partial^2 u}{\partial t^2}=a^2\frac{\partial^2 u}{\partial x^2} \quad(0<x<l,t>0)\\
u|_{x=0}=0,u|_{x=t}=0 \\
u|_{t=0}=\varphi(x),\frac{\partial u}{\partial t}|_{t=0}=\phi(x)
\end{aligned}
\right.
$$

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