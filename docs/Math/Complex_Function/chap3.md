# Chap3 复变函数的积分

**定理**

$$\int_C f(z)dz=\int_C udx-vdy + i \int_C vdx+udy$$

**等式**

$$\oint_C\frac{1}{(z-a)^n}dz=
\left\{
\begin{aligned}
\pi i,n=1 \\
0,n \neq 1(整数)
\end{aligned}
\right.
$$

**柯西积分定理**

设函数$f(z)$在封闭曲线$C$上及其所包围的单连通区域$D$内解析，则

$$\oint_C f(z)dz=0$$

**柯西积分公式**

设函数$f(z)$在有界闭区域$D+C$上解析（$C$为单连通或多连通区域$D$的边界），则

$$f(z_0)=\frac{1}{2\pi i}\int_C \frac{f(z)}{z-z_0}dz \quad (z_0 \in D)$$

### 解析函数的无穷可微性

**高阶导数的柯西积分公式**

$$f^{(n)}(z_0)=\frac{n!}{2\pi i}\oint_C \frac{f(z)}{(z-z_0)^{n+1}}dz \quad(n=1,2,...)$$

**柯西不等式**

设函数$f(z)$在闭圆盘${z;|z-z_0| \le R}$上解析，则有

$$|f^{(n)}(z_0)|\le\frac{n!}{R^n}M$$

其中$M=\max_{n \in |z-z_0|=R}|f(z)|$

**刘维尔定理**

有界整函数$f(z)$必为常数

**代数学基本定理**

$n$次多项式必有$n$个零点
