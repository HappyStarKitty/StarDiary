# 量子物理学篇

## Chap20 电磁辐射的量子性

### 热辐射

**单色辐出度**

$$
M_\lambda (T)=\frac{d M_\lambda}{d\lambda}
$$

**辐射出射度**

$$
M(\lambda)=\int_0^\infty M_\lambda (T)d\lambda
$$

**基尔霍夫定律**

$$
\frac{M_\lambda(T)}{\alpha(\lambda,T)}=M_{B\lambda}(T)
$$

**斯忒藩-玻尔兹曼定律**

$$
M_B(T)=\int_0^\infty M_{B\lambda}(T) d\lambda=\sigma T^4
$$

**维恩位移定律**

$$
T\lambda_m=b
$$

### 普朗克能量子假设

**普朗克公式**

$$
M_{B\lambda}(T)=\frac{2\pi hc^2}{\lambda^5 (e^{\frac{hc}{\lambda kT}}-1)}
$$

### 光电效应

$$
E_{km}=e|U_a|
$$

$$
U_a=k\upsilon-U_0
$$

**爱因斯坦光电效应方程式**

$$
h\upsilon =E_{km}+A=\frac{1}{2}mv_m^2+A
$$

$$
m=\frac{E}{c^2}=\frac{h\upsilon}{c^2}
$$

**光动量**

$$
p=mc=\frac{h\upsilon}{c}=\frac{h}{\lambda}
$$

### 康普顿效应

**波长改变量**

$$
\Delta \lambda=\lambda -\lambda_0=\frac{c}{\upsilon}-\frac{c}{\upsilon_0}=\frac{h}{m_0c}(1-\cos\varphi)
$$

或

$$
\Delta \lambda=\lambda-\lambda_0=\frac{2h}{m_0c}\sin^2\frac{\varphi}{2}
$$

### 光的波粒二象性

## Chap21 量子力学简介

### 实物粒子的波动性

$$
E=mc^2=h\upsilon
$$

$$
\upsilon=\frac{E}{h}=\frac{mc^2}{h}=\frac{m_0c^2}{h\sqrt{1-v^2/c^2}}
$$

$$
p=mv=\frac{h}{\lambda}
$$

$$
\lambda=\frac{h}{p}=\frac{h}{mv}=\frac{h}{m_0c}\sqrt{1-v^2/c^2}
$$

$$
\lambda=\frac{h}{m_0v}
$$

### 不确定性关系

**海森伯不确定性关系**

$$
\Delta x\Delta p_x\ge \frac{\hbar}{2}
$$

**能量和时间的不确定性关系**

$$
\Delta E \Delta t\ge\frac{\hbar}{2}
$$

### 波函数及其统计解释

**一维自由粒子的物质波的波函数**

$$
\Psi(x,t)=\Psi_0 e^{-i2\pi (\upsilon t-\frac{x}{\lambda})}=\Psi_0 e^{-i2\pi (Et-px)/h}
$$

### 薛定谔方程

**薛定谔方程**

$$
i \hbar \frac{\partial}{\partial t} \Psi(\bm{r},t)=[-\frac{\hbar^2}{2m}(\frac{\partial^2}{\partial x^2}+\frac{\partial^2}{\partial y^2}+\frac{\partial^2}{\partial z^2})+E_p]\Psi(\bm{r},t)
$$

**一维定态薛定谔方程**

$$
\frac{d^2 \phi(x)}{d x^2}+\frac{2m}{\hbar^2}[E-E_p]\phi(x)=0
$$

**一般的定态薛定谔方程**

$$
\frac{\partial^2 \phi}{\partial x^2}+\frac{\partial^2 \phi}{\partial y^2}+\frac{\partial^2 \phi}{\partial z^2}+\frac{2m}{\hbar^2}[W-W_p]\phi=0
$$

### 一维无限深势阱中的粒子

**一维无限深方势阱**

$$
E_p=\left\{
\begin{aligned}
0, \quad 0<x<a \\
\infty, \quad x\ge0,x\le a \\
\end{aligned}
\right.
$$

### 势垒 隧道效应

$$
T=\frac{|C|^2}{|A_1|^2}\varpropto e^{-\frac{2}{\hbar}\sqrt{2m(E_{p0}-E)}a}=e^{-2ka}
$$

## Chap22 氢原子及原子结构初步

### 玻尔氢原子理论

**推广的巴尔末公式**

$$\frac{1}{\lambda}=R(\frac{1}{k^2}-\frac{1}{n^2})$$

$R=1.097\times10^7l/m$称为里德伯常数

**玻尔氢原子理论**

1. 稳定态假设

2. 频率假设

$$
h\upsilon_{ij}=E_i-E_j
$$

3. 轨道角动量量子化假设

$$
L=mvr=n\frac{h}{2\pi}=n\hbar \quad n=1,2,3...
$$

n为量子数，上式称为轨道角动量量子化条件

**电子轨道和定态能级**

第n个稳定轨道的半径为

$$
r_n=n^2\frac{\varepsilon_0 h^2}{\pi m e^2} \quad n=1,2,3....
$$

玻尔半径，即电子的最小轨道半径为

$$
r_1=\frac{\varepsilon_0 h^2}{\pi m e^2}=0.529\times 10^{-10}m
$$

原子的总能量为

$$
E_n=-\frac{1}{n^2}(\frac{m e^4}{8\varepsilon_0^2 h^2}) \quad n=1,2,3,...
$$

激发态与基态能量的关系为

$$
E_n=\frac{E_1}{n^2}
$$
### 弗兰克-赫兹实验

### 量子力学对氢原子的描述

**电子绕核旋转的角动量为**

$$
L=\sqrt{l(l+1)}\hbar \quad l=0,1,2,...,(n-1)
$$

$l$称为角量子数

**角动量矢量在指定的Z轴上的分量**

$$
L_Z=m_l\hbar \quad m_l=0,\pm 1,\pm 2,...,\pm l
$$

$m_l$称为磁量子数

### 电子的自旋

$$
S=\sqrt{s(s+1)}\hbar
$$

s为自旋量子数

### 原子的电子壳层结构

**泡利不相容原理**

主量子数为n的电子壳层最多可容纳电子数量

$$
Z_n=\sum_{i=0}^{(n-1)} 2(2l+1)=2n^2
$$

## Chap23 激光和固体能带基本知识

### 激光产生的原理

### 激光器

按工作物质的不同，可分为气体激光器、固体激光器、半导体激光器、液体激光器

按工作方式的不同，可分为连续激光器、脉冲激光器

### 激光的特性及应用

### 固体的能带

### n型半导体和p型半导体

**n型半导体**

施主能级：位于禁带中，而且靠近导带的边缘

**p型半导体**

受主能级：位于禁带中，而且靠近满带的顶部

### p-n结

## Chap24 原子核和基本粒子

### 原子核的一般性质

### 放射性衰变

### 裂变

### 聚变

### 粒子的分类和守恒量

### 强子的结构和夸克模型