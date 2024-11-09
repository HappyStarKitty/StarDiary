## 预备知识

### 复数

**复数表示方法**

$$z=x+iy=r(\cos\theta+i\sin\theta)=re^{i\theta}$$

**欧拉公式**

$$e^{i\theta}=\cos\theta+i\sin\theta$$

## 复数的运算

**复数的乘幂**

$$z^n=r^n(\cos n\theta+i\sin n\theta)=r^n e^{in\theta}$$

**棣莫佛公式**

$$(\cos\theta+i\sin\theta)^n=\cos n\theta+i\sin n\theta$$

**复数的方根**

$$w_k=(\sqrt[n]{z})_k =\sqrt[n]{r}e^{i\frac{\theta_0+2k\pi}{n}} \quad (k=0,1,2,...n-1)$$
## 解析函数

**定义**

奇点：不解析的点
整函数：在整个复平面上解析的函数

**柯西-黎曼方程（C-R条件）**

$$
\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}$$

$$
\frac{\partial v}{\partial x}=-\frac{\partial u}{\partial y}$$

**拉普拉斯方程**

$$
\frac{\partial^2 U}{\partial x^2}+\frac{\partial^2 U}{\partial y^2}=0$$

**指数函数**

$$e^z=e^x(\cos y + i\sin y)$$

**对数函数**

$$\ln z=\ln |z|+i(\arg z+2k\pi) \quad(k=0,\pm 1,...)$$

$$Ln z=\ln z+i2k\pi$$

**幂函数**

**三角函数和双曲函数**

正弦函数 $\sin z=\frac{e^{iz}-e^{-iz}}{2i}$
余弦函数 $\cos z=\frac{e^{iz}+e^{-iz}}{2}$
双曲正弦函数 $\sh z=\frac{e^z-e^{-z}}{2}$
双曲余弦函数 $\ch z=\frac{e^z+e^{-z}}{2}$

满足以下重要性质：

$\cos(iz)=\ch z,\quad \sin(iz)=i \sh z$
$\ch (iz)=\cos z,\quad \sh(iz)=i \sin z$

## 复变函数的积分

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

## 级数

### 复数项级数与幂级数

**幂级数的收敛半径**

$$lim_{n \rightarrow \infty}\lvert\frac{C_n}{C_{n+1}}\rvert=R$$

$$lim_{n\rightarrow \infty}\frac{1}{\sqrt[n]{\lvert X_n \rvert}}=R$$

### 台劳级数

**台劳定理**

设$f(z)$在以$z_0$为中心、$R$为半径的圆域$D=\{z;\lvert z-z_0 \rvert<R\}$ 内解析，于是$f(z)$在此圆内可以展开为幂级数

$$f(z)=\sum_{n=0}^{\infty}C_n(z-z_0)^n \quad (\lvert z-z_0\rvert<R)$$

其中系数

$$C_n=\frac{f^{(n)}(z_0)}{n!}=\frac{1}{2\pi i}\int_{C_r}\frac{f(s)}{(s-z_0)^{n+1}}ds \quad(n=0,1,2...)$$

当取$z_0=0$时，亦称麦克劳林级数

$f(z)=\sum_{n=0}{\infty}\frac{f^{(n)}(0)}{n!}z^n=f(0)+\frac{f^{\prime(0)}}{1!}z+...\frac{f^{(n)}(0)}{n!}z^n+... \quad(\lvert z \rvert <R )$

### 解析函数零点的孤立性及唯一性定理

### 罗朗级数

**罗朗定理**

设函数在以$z_0$为中心的圆环${R_1<\lvert z-z_0 \rvert <R_2}$ 内解析，则在此圆环内，函数可以展开成级数

$$f(z)=\sum_{n=-\infty}^{+\infty}C_n(z-z_0)^n \quad (\lvert z-z_0\rvert<R)$$

其中系数

$$C_n=\frac{1}{2\pi i}\oint_{C_R}\frac{f(\xi)}{(\xi-z_0)^{n+1}}d\xi$$

负幂部分称为主部，正幂部分称为解析部分

## 留数

### 孤立奇点的分类及其性质

- 可去奇点：主部为零
- $m$级奇点：主部只有有限项
- 本性奇点：主部中有无穷多项

### 留数定理

**留数定义**

$$Res[f(z);z_0]=\frac{1}{2\pi i}\oint_{C_{\rho}
}f(z)dz=C_{-1}$$

**留数定理**

$$\oint_Cf(z)=\sum_{k=1}^n Res[f(z);z_k]$$

**留数计算**

$$Res[f(z);z_0]=\frac{1}{(m-1)!}lim_{z \rightarrow z_0}\frac{d^{m-1}}{dz^{m-1}}[(z-z_0)^mf(z)]$$

推论1：若$f(z)=\frac{\psi(z)}{(z-z_0)^m}$，其中$\psi(z)$在$z_0$点解析，且$\psi (z_0) \neq0$，$m \ge1$，则

$$Res[\frac{\psi(z)}{(z-z_0)^m};z_0]=\frac{\psi^{(m-1)}(z_0)}{(m-1)!}$$

推论2：若$f(z)=\frac{P(z)}{Q(z)}$，其中$P(z)$与$Q(z)$在$z_0$点解析，且$P(z_0) \neq0$，$Q(z_0)=0$，而$Q^{\prime}(z_)\neq0$（即$z_0$为$f(z)$的单极点），则

$$Res[\frac{P(z)}{Q(z)};z_0]=\lim_{z \rightarrow z_0}[(z-z_))\frac{P(z)}{Q(z)}]=\frac{P(z_0)}{Q^\prime (z_0)}$$

推论3：$z_0$是函数$g(z)$的$k$级（$k \ge1$）零点，是$h(z)$的$k+1$级零点，则$z_0$是$f(z)=\frac{g(z)}{h(z)}$的单极点，且

$$Res[\frac{g(z)}{h(z)};z_0]=(k+1)\frac{g^{(k)}(z_0)}{h^{(k+1)}(z_0)}$$

### 留数定理的应用

**$\int_0^{2\pi}R(\cos\theta,\sin\theta)d\theta$型积分** 

设$R(\cos\theta,\sin\theta)$是$\cos\theta$，$\sin\theta$的有理函数，且在$[0,2\pi]$上连续，则

$$\int_0^{2\pi}R(\cos\theta,\sin\theta)d\theta=2\pi i\sum{f(z)在单位圆内极点处的留数}$$

其中

$$f(z)=\frac{1}{iz}R(\frac{z^2+1}{2z},\frac{z^2-1}{2zi})$$

**$\int_{-\infty}^{+\infty}f(x)dx$型积分**

设$f(z)$在整个复平面$\mathscr{C}$上除有限个极点外均解析，且这些极点不在实轴上，如果存在一个常数$M$和一个正数$R$，使得对于一切$|z| \ge R$，有

$$|f(z)|\le\frac{M}{|z|^2}$$

成立，则有

$$\int_{-\infty}^{+\infty}f(x)dx=2\pi i\sum\{f(z)在上半面极点处的留数\}$$

对于有理函数$f(z)=\frac{P(z)}{Q(z)}=\frac{a_0+a_1z+...+a_nz^n}{b_0+b_1z+...+b_mz^m} \quad(m\ge n+2)$同样成立

**$\int_{-\infty}^{+\infty}e^{i\alpha x}f(x)dx$型积分 （$\alpha>0$）**

设$f(z)$在$\mathscr{C}$上除有限个极点外均解析
## 保角映射

### 保角映射的概念

### 若干初等函数所确定的映射

**相似映射**

$$w=kz \quad(k>0)$$

**旋转映射**

$$w=e^{i\alpha}z$$

**平移映射**

$$w=z+b$$

**倒数映射**

$$w=\frac{1}{z}$$

**幂函数映射**

$$w=z^n \quad(n \ge 2自然数)$$

**指数映射**

$$w=e^z$$

水平带域映射为角域

**对数映射**

$$$$

角域映射为水平带域

### 分式线性映射

**定理**

$$\frac{w-w_1}{w-w_2}\cdot \frac{w_3-w_2}{w_3-w_1}=\frac{z-z_1}{z-z_2}\frac{z_3-z_2}{z_3-z_1}$$

**将上半平面映射成单位圆内部的分式线性映射**

$$w=e^{i\theta}\frac{z-z_0}{z-\overline{z_0}}$$

**将单位圆内部映射成单位圆内部的分式线性映射**

$$w=e^{i\theta}\frac{z-z_0}{1-\overline{z_0}z}$$

## 拉普拉斯变换

### 拉氏变换的基本概念

**拉氏变换的定义**

$$F(s)=\int_0^{\infty}f(t)e^{-st}dt=L[f(t)]$$

### 拉氏变换的基本性质

**等式**

$$L(t^a)=\frac{\Gamma (a+1)}{-s^{a+1}}$$
$$L[e^{kt}u(t)]=\frac{1}{s-k}$$
$$L[\sin \omega t]=\frac{\omega}{s^2+\omega^2},\quad Re(s)> 0$$
$$L[\cos \omega t]=\frac{s}{s^2+\omega^2},\quad Re(s)>0$$
$$L[\sh \omega t]=\frac{\omega}{s^2-\omega^2}, \quad Re(s)>|\omega|$$
$$L[\sh \omega t]=\frac{s}{s^2-\omega^2} \quad Res(s)>|\omega|$$
$$L[t\sin\omega t]=\frac{2\omega s}{(s^2+\omega^2)^2}$$
$$L[t\cos \omega t]=\frac{s^2-\omega^2}{(s^2+\omega^2)^2}$$
$$L[t^n]=\frac{n!}{s^{n+1}},\quad(n=0,1,2,...),Re(s)>0$$

**平移性质**

时移性质

$$L(f(t-t_0))=e^{-st_0}F(s)$$

$$L^{-1}[e^{-st_0}F(s)]=f(t-t_0) \quad(t_0>0)$$

$$L^{-1}[e^{-st_0}]F(s)=f(t-t_0)u(t-t_0) \quad(t_0<0)$$

频移性质

$$L[e^{s_0 t f(t)}]=F(s-s_0)$$

**微分性质**

象原函数的微分性质

若$L[f(t)]=F(s)$，且$f^{\prime}(t)$也是原函数，则

$$L[f'(t)]=sF(s)-f(0^{+})$$

象函数的微分性质

$$L[(-t)^n f(t)]=F^{(n)}(s), \quad n=0,1,1,...$$

**积分性质**

象原函数的积分性质

$$L[\int_0^t f(\tou)]$$

**极限性质**

**卷积性质**

### 拉式逆变换

**反演公式**

$$f(t)=\frac{1}{2\pi i}\int_{\sigma-i\infty}^{\sigma+i\infty}F(s)e^{st}ds$$

### 拉氏变换的应用

