# Chap2 复变函数

## 复变函数的概念

!!! definition "复变函数"
    设$D$是复变数$z$的一个集合，对于$D$中的每一个$z$，有一个或多个复数$w$的值与之相应，则称$w$为定义在$D$上的复变函数，记作

    $$w=f(z)\quad(z\in D)$$

    若对于定义集$D$的每一个$z$，有且仅有一个$w\in G$与之对应，则称$w=f(z)(z \in{D})$为单值函数，否则成为多值函数

复变函数建立了两个平面区域定义域$D$与值域$G$间的对应关系，亦称为映射

??? definition "映射"
    设$f$是区域$D$到区域$G$的单值函数

    - 如果对于任意$z_1,z_2\in D$且$z_1\ne z_2$，有$f(z_1)\ne f(z_2)$，则称$f$是单射
    - 如果$f(D)=G$，则称$f$是满射
    - 如果$f$既是单射又是满射，则称$f$是双射

    可以得出

    - 如果$f$是单射，则对于每一个$w\in f(D)$，只有一个$z\in D$使得$f(z)=w$
    - 如果$f$是满射，则对于每一个$w\in G$，至少存在一个$z\in D$使得$f(z)=w$
    - 如果$f$是双射，则存在$f$的反函数$f^{-1}:G\rightarrow D$

### 极限与连续

## 解析函数

### 复变函数的导数



奇点：不解析的点
整函数：在整个复平面上解析的函数

## 解析函数的充分必要条件

!!! theorem "柯西-黎曼方程"
    设$D$是函数$f(z)=u(x,y)+\mathrm{i}v(x,y)$的定义域，$z=x+\mathrm{i}y$是$D$的内点，则$f(z)$在点$z$可导的充分必要条件是$u(x,y)$和$v(x,y)$在点$(x,y)$处可微，且满足<b>柯西-黎曼方程</b>（或简称<b>C-R条件</b>）

    $$\left\{\begin{aligned}\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}\\\frac{\partial v}{\partial x}=-\frac{\partial u}{\partial y}\end{aligned}\right.$$

    此时

    $$f'(z)=\frac{\partial u}{\partial x}+\mathrm{i}\frac{\partial v}{\partial x}\quad or \quad f'(z)=\frac{\partial v}{\partial y}-\mathrm{i}\frac{\partial u}{\partial y}$$

## 解析函数和调和函数的关系

拉普拉斯方程

$$
\frac{\partial^2 U}{\partial x^2}+\frac{\partial^2 U}{\partial y^2}=0$$

## 初等解析函数

### 指数函数

$$e^z=e^x(\cos y + \mathrm{i}\sin y)$$

### 对数函数

$$\ln z=\ln |z|+i(\arg z+2k\pi) \quad(k=0,\pm 1,...)$$

$$\text{Ln} z=\ln z+i2k\pi$$

### 幂函数

$$z^\mu=e^{\mu \text{Ln}z}$$

### 三角函数和双曲函数

正弦函数 $\sin z=\frac{e^{\mathrm{i}z}-e^{-\mathrm{i}z}}{2\mathrm{i}}$

余弦函数 $\cos z=\frac{e^{\mathrm{i}z}+e^{-\mathrm{i}z}}{2}$

双曲正弦函数 $\sh z=\frac{e^z-e^{-z}}{2}$

双曲余弦函数 $\ch z=\frac{e^z+e^{-z}}{2}$

满足以下重要性质：

$\cos(iz)=\ch z,\quad \sin(iz)=i \sh z$

$\ch (iz)=\cos z,\quad \sh(iz)=i \sin z$




