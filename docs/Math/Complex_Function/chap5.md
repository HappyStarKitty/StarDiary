# Chap5 留数

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