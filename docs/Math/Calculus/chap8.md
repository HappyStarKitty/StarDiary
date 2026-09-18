# Chap8 多元函数微分学

## 多元函数的极限与连续性

## 偏导数与全微分

### 偏导数

!!! definition "偏导数"
    设函数$z=f(x,y)$在点$P_0(x_0,y_0)$的某邻域内有定义，

    若极限

    $$\lim_{\Delta x\rightarrow0}\frac{\Delta_x z}{\Delta z}=\lim_{\Delta x\rightarrow0}\frac{f(x_0+\Delta x,y_0)-f(x_0,y_0)}{\Delta x}=\lim_{\Delta x\rightarrow x_0}\frac{f(x,y_0)-f(x_0,y_))}{x-x_0}$$

    存在，则称该极限值为$z=f(x,y)$在点$P_0$处关于$x$的偏导数，记为：

    $$f^\prime_x(x_0,y_0)\quad \text{or} \quad \frac{\partial z}{\partial x}|_{\begin{aligned}x=x_0 \\ y=y_0\end{aligned}}$$


### 全微分

若二元函数$z=f(x,y)$在点$(x,y)$处的全增量可以表示为：

$$\Delta z=A\Delta x+B\Delta y+o(\rho)(\rho=\sqrt{x^2+y^2}\rightarrow 0)$$

其中$A$，$B$与变量$x$，$y$的增量$\Delta x$，$\Delta y$无关，而仅与$x$，$y$有关，则称$f(x,y)$在点$(x,y)$处可微，其中$A\Delta x+B\Delta y$被称为$f(x,y)$在$(x,y)$处的全微分，记作$\mathrm{d}z$

!!! theorem "定理：可微的充分条件"
    函数的所有偏导数在某点处均连续$\rightarrow$在该点处可微

二元函数全微分可表示为：

$$\mathrm{d}u=\frac{\partial u}{\partial x}\mathrm{d}x+\frac{\partial u}{\partial y}\mathrm{d}y$$

## 复合函数微分法

若函数$u=\varphi(x,y)$，$v=\psi(x,y)$在点$(x,y)$处的偏导数都存在，$z=f(u,v)$在点$(u,v)$处可微，则复合函数$z=f[\varphi(x,y),\psi(x,y)]$在点$(x,y)$处的偏导数都存在：

$$\frac{\partial z}{\partial x}=\frac{\partial z}{\partial u}\cdot \frac{\partial u}{\partial x}+\frac{\partial z}{\partial v}\cdot \frac{\partial v}{\partial x}$$

$$\frac{\partial z}{\partial y}=\frac{\partial z}{\partial u}\cdot \frac{\partial u}{\partial y}+\frac{\partial z}{\partial v}\cdot \frac{\partial v}{\partial y}$$

特别地，若$z=f(u,v)$，$u=\varphi(x)$，$v=\psi(x)$，则

$$\frac{\mathrm{d}z}{\mathrm{d}x}=\frac{\mathrm{d}z}{\mathrm{d}u}\cdot\frac{\partial u}{\partial x}+\frac{\mathrm{d}z}{\mathrm{d}v}\cdot\frac{\mathrm{d}v}{\mathrm{d}x}$$

## 隐函数的偏导数

### 隐函数的偏导数

!!! theorem "隐函数存在定理"
    设$F(x,y,z)$在点$P_0(x_0,y_0,z_0)$的某一邻域内有连续的偏导数，且$F(x_0,y_0,z_0)=0$，$F^\prime_z(x_0,y_0,z_0)\ne0$，则方程$F(x,y,z)=0$在$P_0(x_0,y_0,z_0)$的某一邻域内恒能确定一个连续且具有连续偏导数的函数$z=f(x,y)$，满足$z_0=f(x_0,y_0)$，并有：

    $$\frac{\partial z}{\partial x}=-\frac{F_x^\prime}{F_z^\prime}, \frac{\partial z}{\partial y}=-\frac{F^\prime_y}{F^\prime_z}$$

## 场的方向导数与梯度

### 场的方向导数

!!! definition "方向导数"
    设数量场三元函数 $u$ 在点 $P_0(x_0, y_0, z_0)$ 的某邻域 $U(P_0) \subset \mathbf{R}^3$ 内有定义，$\boldsymbol{l}$ 为从点 $P_0$ 出发的射线，$P(x, y, z)$ 为 $\boldsymbol{l}$ 上且含于 $U(P_0)$ 内的任一点，以 $\rho$ 表示两点间距离，若极限

    $$
    \lim_{\rho \to 0} \frac{u(P) - u(P_0)}{\rho} = \lim_{\rho \to 0} \frac{\Delta_{\boldsymbol{l}} u}{\rho}
    $$

    存在，称此极限为 $u$ 在点 $P_0$ 沿方向 $\boldsymbol{l}$ 的方向导数，记作 $\left. \dfrac{\partial u}{\partial \boldsymbol{l}} \right|_{P_0}$

!!! theorem "定理"

    若函数 $u$ 在点 $P_0(x_0, y_0, z_0)$ 处可微，则 $u$ 在点 $P_0$ 处沿任一方向 $\boldsymbol{l}$ 的方向导数都存在，且：

    $$
    \left. \frac{\partial u}{\partial \boldsymbol{l}} \right|_{P_0} = \left. \frac{\partial u}{\partial x} \right|_{P_0} \cos \alpha + \left. \frac{\partial u}{\partial y} \right|_{P_0} \cos \beta + \left. \frac{\partial u}{\partial z} \right|_{P_0} \cos \gamma
    $$

    其中，方向 $\boldsymbol{l}$ 上的单位矢量 $\boldsymbol{e}_l = (\cos \alpha, \cos \beta, \cos \gamma)$

### 梯度

!!! definition "梯度"
    矢量 $\dfrac{\partial u}{\partial x}\boldsymbol{i} + \dfrac{\partial u}{\partial y}\boldsymbol{j} + \dfrac{\partial u}{\partial z}\boldsymbol{k} = \left( \dfrac{\partial u}{\partial x}, \dfrac{\partial u}{\partial y}, \dfrac{\partial u}{\partial z} \right)$ 被称为函数 $u(P)$ 在点 $P$ 处的<b>梯度</b>，即为 $\mathbf{grad}\ u$

    易知 $|\mathbf{grad}\ u(P_0)| = \sqrt{\left. \left( \dfrac{\partial u}{\partial x} \right)^2 + \left( \dfrac{\partial u}{\partial y} \right)^2 + \left( \dfrac{\partial u}{\partial z} \right)^2 \right|_{P_0}}$

    $\therefore \left. \dfrac{\partial u}{\partial \boldsymbol{l}} \right|_{P_0} = |\mathbf{grad}\ u(P_0)| \cos \theta$，其中 $\theta$ 是矢量 $\mathbf{grad}\ u(P_0)$ 与 $\boldsymbol{l}$ 的夹角

## 多元函数的极值及应用

### 多元函数的泰勒公式

!!! formula "泰勒定理"
    若函数 $f$ 在点 $P_0(x_0, y_0)$ 的某邻域 $U(P_0)$ 内有直到 $n + 1$ 阶的连续偏导数，则对 $U(P_0)$ 内任一点 $(x_0 + h, y_0 + k)$，存在 $\theta \in (0, 1)$，使得：

    $$
    \begin{aligned}
    f(x_0 + h, y_0 + k) = &\ f(x_0, y_0) + \left( h\frac{\partial}{\partial x} + k\frac{\partial}{\partial y} \right) + \\
    &\ \frac{1}{2!}\left( h\frac{\partial}{\partial x} + k\frac{\partial}{\partial y} \right)^2 f(x_0, y_0) + \cdots + \\
    &\ \frac{1}{n!}\left( h\frac{\partial}{\partial x} + k\frac{\partial}{\partial y} \right)^n f(x_0, y_0) + \\
    &\ \frac{1}{(n + 1)!}\left( h\frac{\partial}{\partial x} + k\frac{\partial}{\partial y} \right)^{n+1} f(x_0 + \theta h, y_0 + \theta k)
    \end{aligned}
    $$

    上式被称为 $f$ 在点 $P_0$ 处的 <b>n 阶泰勒公式</b>

    其中等式右侧最后一项被称为拉格朗日余项，记作 $R_n$

    特别地，当 $(x_0, y_0) = (0, 0)$ 时，称上式为<b>麦克劳林公式</b>

    二元函数的<b>拉格朗日中值公式</b>：

    $$
    f(x_0 + h, y_0 + k) - f(x_0, y_0) = h f'_x(x_0 + \theta h, y_0 + \theta k) + k f'_y(x_0 + \theta h, y_0 + \theta k)
    $$

### 多元函数的极值

!!! theorem "极值的必要条件"
    若函数$f$在点$P_0(x_0,y_0)$存在偏导数且在点$P_0$取极值，则有：

    $$f^\prime_x(x_0,y_0)=0,f^\prime_y(x_0,y_0)=0$$

    此时称$P_0$为$f$的<b>稳定点</b>或<b>驻点</b>

!!! theorem "极值的充分条件"
    设函数$z=f(x,y)$在点$P_0(x_0,y_0)$某邻域$U(P_0)$内连续，且有二阶连续偏导数，如果$f^\prime_x(x_0,y_0)=0$，$f^\prime_y(x_0,y_0)=0$，设$A=f^{\prime\prime}_{xx}(x_0,y_0)$，$B=f^{\prime\prime}_{xy}(x_0,y_0)$，$C=f^{\prime\prime}_{yy}(x_0,y_0)$，则：

    - $B^2-AC<0\rightarrow f(x_0,y_0)$一定是极值，且
        + $A>0$或$C>0\rightarrow$极小值
        + $A<0$或$C<0\rightarrow$极大值
    - $B^2-AC>0\rightarrow f(x_0,y_0)$不是极值
    - $B^2-AC=0\rightarrow$无法判断

!!! info "拉格朗日乘数法"
    在所给条件$G(x,y,z)=0$的条件下，求目标函数$u=f(x,y,z)$的极值

    引入拉格朗日函数$L(x,y,z,\lambda)=f(x,y,z)+\lambda G(x,y,z)$

    求极值点，即求下列方程组的解：

    $$\left\{\begin{aligned}f^\prime_x+\lambda G^{\prime}_{x}=0 \\ f^\prime_y+\lambda G^\prime_y=0 \\ f^\prime_z+\lambda G^\prime_z=0 \\ G(x,y,z)=0  \end{aligned}\right.$$

更一般的拉格朗日函数：

$$L(x_1,x_2,...,x_n,\lambda_1,\lambda_2,...,\lambda_m)\\=f(x_1,x_2,...,x_n)+\sum_{k=1}^m \lambda_k\psi_k(x_1,x_2,...,x_n) $$

其中$\lambda_1,\lambda_2,...,\lambda_m$被称为<b>拉格朗日乘数</b>

## 偏导数在几何上的应用