# 电磁学篇

!!! note 概要
    本篇是大学物理（甲）电磁学篇的 CheetSheet。

    电磁学部分概念众多、关系复杂，需要认真理解。同时需要大量运用微积分知识，需要一定的数学基础。

    笔者在大学物理补天基本依靠[SAVIA前辈的大学物理讲义](https://savia7582.github.io/Exterior/)，在此特别感谢作者SAVIA。

## Chap9 真空中的静电场

### 电荷 库伦定律

**库伦定律**

$$
\bm{F}_{21}=k\frac{q_1 q_2}{r_{12}^2}\bm{e}_{12}
=\frac{1}{4\pi\varepsilon_{0}}\frac{q_1 q_2}{r_{12}^2}\bf{e}_{12}
$$

$$k=\frac{1}{4\pi\varepsilon_0}=9×10^9N·m^2/C^2$$

**真空中的介电常量**

$$\varepsilon_0=8.85×10^{-12}C^2/(N·m^2/C^2)$$

**电力叠加原理**

$$\bm{F}_1=\bm{F}_{12}+\bm{F}_{13}+...+\bm{F}_{1n}=\sum_{i=2}^{n}\bm{F}_{1i}=\sum_{i=2}^{N}\frac{1}{4\pi\varepsilon_{0}}\frac{q_1 q_i}{r_{1i}^{2}}\bm{e}_{1i}$$

### 电场 电场强度

**场强定义**

$$\bm{E}=\frac{\bm{F}}{q_0}$$

**场强叠加原理**

$$\bm{E}_1=\bm{E}_{12}+\bm{E}_{13}+...+\bm{E}_{1n}=\sum_{i=2}^{n}\bm{E}_{1i}=\sum_{i=2}^{N}\frac{1}{4\pi\varepsilon_{0}}\frac{q_i}{r_{1i}^{2}}\bm{e}_{1i}$$

$$\bm{E}=\int d\bm{E}=\frac{1}{4\pi\varepsilon_{0}}\int_V \frac{dq}{r^2}\bm{e}_r$$

!!! hint 电偶极子
    一对等量异号点电荷$+q$和$-q$，相距为$l$。当从观察点到两电荷连线的距离$x \gg l$时，则这一对点电荷称  **电偶极子** 。
    定义 **电偶极矩** $\bm{p}_e=q\bm{l}$，$\bm{l}$的方向由负电荷指向正电荷。则电偶极子中垂线上一点$P$的场强$\bm{E}=-\frac{1}{4\pi\varepsilon_{0}}\frac{\bm{p}_e}{x^3}$。

**均匀带电圆环**

$$E=\frac{q}{4\pi\varepsilon_0z^2}$$ 

$z$为圆环轴线上一点$P$与环心的距离。

**均匀带电薄圆盘**

若$z \ll R$，圆盘可视为无限大均匀带电平面

$$E=\frac{\sigma}{2\varepsilon_0}$$

若$z\gg R$，近似等于点电荷的电场

$$E=\frac{\sigma R^2}{4\varepsilon_0z^2}=\frac{q}{4\pi\varepsilon_0z^2}$$

**均匀带电细直线**

$$E_x=\frac{\lambda}{4\pi\varepsilon_0a}(sin\theta_2-sin\theta_1)$$

$$E_y=\frac{\lambda}{4\pi\varepsilon_0a}(cos\theta_1-cos\theta_2)$$

$a$为线外一点$P$到直线的垂直距离

若$L \gg a$，可视为无限长，则有

$$E_x=0, E_y=\frac{\lambda}{2\pi\varepsilon_0a}$$

### 电场线 电通量

**电通量**

$$\Phi_c=\int d\Phi_c=\int_sEcos\theta dS=\int_s \bm{E}\cdot d\bm{S}$$

### 高斯定理及其应用

**高斯定理**

$$\Phi_c=\oint\bm{E}\cdot d\bm{S}=\frac{1}{\varepsilon_0}\sum_iq_i$$

**均匀带电球面**

$r>R$

$$\bm{E}=\frac{Q}{4\pi\varepsilon_0 r^2}\bm{e}_r$$

$r<R$

$$E=0$$

**均匀带电球体**

$r>R$

$$E=\frac{Q}{4\pi\varepsilon_0 r^2}$$

$r>R$

$$E=\frac{Qr}{4\pi\epsilon_0 R^3}$$

### 静电场的环路定理

### 电势

### 电场强度与电势的关系

## Ghap10 静电场中的导体和电介质

### 静电场中的金属导体

**导体表面场强**

$$E=\frac{\sigma}{\varepsilon_0}$$

### 电容 电容器

**孤立导体电容**

$$C=\frac{Q}{U}$$

**孤立导体球电容**

$$C=4\pi\varepsilon_0 R$$

**电容器电容**

$$C=\frac{Q}{U_A-U_B}$$

**平行板电容器**

$$C=\varepsilon_0\frac{S}{d}$$

**圆柱形电容器**

$$C=\frac{2\pi\varepsilon_0 l}{ln\frac{R_B}{R_A}}$$

**球形电容器**

$$C=\frac{4\pi\varepsilon_0R_AR_B}{R_B-R_A}$$

### 静电场中的电介质

**极化强度**

$$\bm{P}=\varepsilon_0\chi_e\bm{E}$$

$\bm{P}$：极化强度 $\chi_e$：电极化率

### 电介质中静电场的基本定理

!!! abstract 解题步骤
    1. 利用介质中的高斯定理求出D
    2. 利用P、D、E的关系求出E
    3. 利用E求出U
    4. 求出C等其他物理量

**电介质场强**

$$\bm{E}=\bm{E_0}+\bm{E}^\prime$$

$\bm{E}_0$和$\bm{E}^\prime$方向相反

$$\sigma^\prime=\sigma_0(1-\frac{1}{\varepsilon_r})$$

$\sigma^\prime$：电介质表面极化电荷面密度 
$\sigma_0$：电容器极板自由电荷面密度

**电位移**

$$\bm{D}=\varepsilon_0\bm{E}+\bm{P}$$

**介质中的高斯定理**

$$\oint\bm{D}\cdot d\bm{S}=\sum q_0$$

**$\bm{P}$、$\bm{D}$、$\bm{E}$的关系**

$$\bm{D}=\varepsilon_0\bm{E}+\bm{P}=(1+\chi_e)\varepsilon_0\bm{E}=\varepsilon_r \varepsilon_e\bm{E}=\varepsilon \bm{E}$$

$\varepsilon$：介电常数/电容率

### 静电场的能量

**点电荷的相互作用能**

$$W=\frac{1}{2}\sum_{i=1}^{n}q_iU_i$$

**电容器的能量**

$$W=\frac{1}{2}\frac{Q^2}{C}=\frac{1}{2}Q(U_A-U_B)=\frac{1}{2}C(U_A-U_B)^2$$

**电场能量**

$$W=\frac{1}{2}C(U_A-U_B)^2=\frac{1}{2}\varepsilon E^2V$$

$$W=\int_V dW=\int\frac{1}{2}\varepsilon E^2dV$$

**电能密度**

$$w_e=\frac{W}{V}=\frac{1}{2}\varepsilon E^2=\frac{1}{2}DE$$


## Chap11 稳恒电流

### 稳恒电流

**电密度矢量**

$$j=\frac{dI}{dS}$$

**电流强度**

$$I=\int_S j\cdot dScos\theta=\int_S \bm{j}\cdot d\bm{S}$$

**电流连续性方程**

$$\oint_s \bm{j}\cdot d\bm{S}=-\frac{dq}{dt}$$


**电流稳恒条件**

$$\oint_s \bm{j}\cdot d\bm{S}=0$$

### 欧姆定律和焦耳定律的微分形式

**欧姆定律微分形式**

$$\bm{j}=\gamma\bm{E}$$

**焦耳定律微分形式**

$$\mathscr{w}=\frac{\Delta P}{\Delta V}=\gamma E^2$$

### 电动势

**电动势**

$$\mathscr{E}=\frac{A_k}{q}=\int_{-}^{+}\bm{E}_k\cdot d\bm{l}=\oint\bm{E}_k\cdot d\bm{l}$$

**电源内部电荷分布规律**

$$\bm{j}=\gamma(\bm{E}_0+\bm{E}_k)$$

**含源电路的欧姆定律**

$$U_B-U_A=\sum \mathscr{E}-\sum IR$$

## Chap12 稳恒磁场

### 磁场 磁感应强度

**洛伦兹力**

$$\bm{F}=\bm{qv}\times \bm{B}$$

**洛伦兹关系式**

$$\bm{F}=q\bm{E}+\bm{qv}\times \bm{B}$$

### 毕奥-萨伐尔定律

**毕奥-萨伐尔定律**

$$d\bm{B}=\frac{\mu_0}{4\pi}\frac{Id\bm{l}\times\bm{r}}{r^3}$$

$$\bm{B}=\int dB=\frac{\mu_0}{4\pi}\int \frac{Id\bm{l}\times \bm{r}}{r^3}$$

**长直载流导线**

$$B=\frac{\mu_0 I}{4\pi a}(cos\theta_1-cos\theta_2)$$

**无限长直导线**

$$B=\frac{\mu_0I}{2\pi a}$$

**半无限长直导线**

$$B=\frac{\mu_0 I}{4\pi a}$$

**载流圆线圈**

$$B=\frac{\mu_0 I R^2}{2(R^2+x^2)^{3/2}}$$

圆电流圆心处

$$B=\frac{\mu_0NI}{2R}$$

在轴线上且远离线圈各点

$$B=\frac{\mu_0IR^2}{2x^3}=\frac{\mu_0IS}{2\pi x^3}$$

!!! note 磁偶极子
    引入磁矩描述载流线圈。
    $$\bm{p}_m=NIS\bm{e}_n$$
    $$\bm{B}=\frac{\mu_0}{2\pi}\frac{\bm{p}_m}{x^3}$$

**载流螺线管**
螺线管无限长

$$B=\mu_0nI$$

长直螺线管端点

$$B=\frac{1}{2}\mu_0nI$$

**无限长均匀载流薄铜片**

$$B=\frac{\mu_0 I}{\pi a}arctan\frac{a}{2y}$$

若$P$点距薄铜片很远

$$B=\frac{\mu_0 I}{2\pi y}$$

**运动电荷磁场**

$$\bm{B}=\frac{dB}{dN}=\frac{\mu_0}{4\pi}\frac{\bm{v}\cdot \bm{r}}{r^3}$$

### 磁场的高斯定理 安培环路定律

**磁场的高斯定理**

$$\Phi_m=\oint_s\bm{B}\cdot d\bm{S}=0
$$

**无限长载流圆柱体**

$r>R$

$$B=\frac{\mu_0 I}{2\pi r}$$

$r<R$

$$B=\frac{\mu_0 I}{2\pi R^2}r$$

**载流螺绕环**

螺绕环内

$$B=\frac{\mu_0 NI}{2\pi R}=\mu_0nI$$

螺绕环外

$$B=0$$

**长直载流螺线管**

$$B=\mu_0nI$$

### 磁场对电流的作用

**安培公式**

$$d\bm{F}=Id\bm{l} \times \bm{B}$$

**磁力矩**

$$M=NBISsin\theta$$

$$\bm{M}=\bm{p}_m \times \bm{B}$$
$\bm{p}_m=NIS\bm{e}_n$：载流线圈的磁矩

**磁力所做功**

载流导线在磁场中运动

$$A=F aa\prime=IBlaa\prime=IB\Delta S=I\Delta\Phi$$

载流线圈在匀强磁场中转动

$$A=\int_{\Phi_1}^{\Phi_2}Id\Phi=I(\Phi_2-\Phi_1)=I\Delta\Phi$$

### 带电粒子在电场和磁场中的运动

**霍尔效应**

$$U_H=R_H\frac{BI}{d}$$

**霍尔系数**

$$R_H=\frac{1}{nq}$$

## Chap13 磁场中的磁介质
**磁场强度**

$$\bm{H}=\frac{\bm{B}}{\mu_0}-\bm{M}$$

$\bm{H}$：磁场强度 $\bm{B}$：磁感应强度 $\bm{M}$：磁化强度

**有磁介质时的安培环路定理**

$$\oint_L\bm{H}\cdot d\bm{l}=\sum I_0$$

**有磁场介质时的磁场高斯定理**

$$\oint_s\bm{B}\cdot d\bm{S}=\oint_s(\bm{B}_0+\bm{B}^{\prime})\cdot d\bm{S}$$

**$\bm{B}、\bm{M}、\bm{H}$之间的关系**

$$\bm{M}=\chi_m\bm{H}$$

$$\mu_r=1+\chi_m$$

$$\mu_0\mu_r=\mu$$

$$\bm{B}=\mu_0\mu_r=\mu\bm{H}$$

$\mu_0$：真空中的磁导率 $\mu_r$：相对磁导率 $\mu$：磁导率

## Chap14 电磁感应

### 电磁感应的基本定律

**法拉第电磁感应定律**

$$\mathscr{E}_i=-\frac{d \Phi}{dt}=-\frac{d}{dt}\int_s\bm{B}\cdot{d\bm{S}}$$

### 动生电动势

**动生电动势**

$$\mathscr{E}_i=\int d\mathscr{E}_i=\int_L(\bm{v}\times\bm{B})\cdot d\bm{l}$$

### 感生电动势 涡旋电场

**感生电动势**

$$\mathscr{E}_i=\oint_L \bm{E}_i\cdot d\bm{l}$$

**涡旋电场和变化磁场的关系**

$$\oint_L \bm{E}_i\cdot d\bm{l}=-\int_S\frac{\partial\bm{B}}{\partial t}\cdot d\bm{S}$$

### 自感和互感

**全磁通**

$$\Phi=LI$$

**自感电动势**

$$\mathscr{E}_L=-\frac{d\Psi}{dt}=-L\frac{dI}{dt}$$

**互感**

$$\Psi_{21}=MI_1$$ 

$$\Psi_{12}=MI_2$$

$$\mathscr{E}=-\frac{d\Psi}{dt}=-M\frac{dI}{dt}$$

### 磁场的能量

**自感磁能**

$$W_m=\frac{1}{2}LI_0^{2}$$

**磁能密度**

$$\omega_m=\frac{1}{2}\bm{B}\cdot \bm{H}$$

## Chap15 电磁场与电磁波

### 位移电流

**位移电流密度**

$$\bm{j}_{\bm{d}}=\frac{d\bm{D}}{dt}$$

**位移电流强度**

$$I_d=\frac{d\Phi_D}{dt}$$

**全电流强度**
$$I_{全}=\sum I+I_d$$

**全电流安培环路定理**

$$\oint_{L}\bm{H}\cdot{d\bm{l}}=\sum I+\frac{d\Phi_D}{dt}=\sum I+\int_s\frac{\partial D}{\partial t}\cdot d\bm{S}$$

### 电磁场 麦克斯韦方程组

**麦克斯韦方程组积分形式**

$$\oint_S \bm{D}\cdot d\bm{S}=\int_{V}\rho dV=\sum q$$

$$\oint_L\bm{E}\cdot d\bm{l}=-\frac{d\Phi_m}{dt}=-\int\frac{\partial \bm{B}}{\partial t}\cdot d\bm{S}$$

$$\oint_S\bm{B}\cdot d\bm{S}=0$$

$$\oint_L\bm{H}\cdot d\bm{l}=\sum I+\frac{d\Phi_D}{dt}=\int_S\bm{j}\cdot dS+\int_S \frac{\partial D}{\partial t}\cdot d\bm{S}$$

**麦克斯韦方程组微分形式**

$$\nabla\cdot\bm{D}=\rho$$

$$\nabla \times\bm{E}=-\frac{\partial \bm{B}}{\partial t}$$

$$\nabla \cdot \bm{B}=0$$

$$\nabla\times\bm{H}=\bm{j}+\frac{\partial \bm{D}}{\partial t}$$

### 电磁波

**能流密度**

$$\bm{S}=\bm{E}\times\bm{H}$$

$\bm{S}$：能流密度矢量/坡印亭矢量