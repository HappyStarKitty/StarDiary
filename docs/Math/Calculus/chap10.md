# Chap10 第二类曲线积分与第二类曲面积分

## 第二类曲线积分

### 第二类曲线积分的概念

!!! definition "第二类曲线积分"
    设 $\Gamma$ 是以 $A$，$B$ 为端点的光滑曲线，并指定从 $A$ 到 $B$ 的方向为曲线方向，在 $\Gamma$ 上每一点 $M$ 处作曲线的单位切矢量

    $$
    \boldsymbol{e}_\tau(M) = \cos \alpha \, \boldsymbol{i} + \cos \beta \, \boldsymbol{j} + \cos \gamma \, \boldsymbol{k}
    $$

    （$\alpha, \beta, \gamma$ 分别是 $\boldsymbol{e}_\tau$ 与 $Ox$ 轴，$Oy$ 轴，$Oz$ 轴正向的夹角），其方向与指定的曲线方向一致，又设

    $$
    \boldsymbol{A}(M) = \boldsymbol{A}(x, y, z) = P(x, y, z) \, \boldsymbol{i} + Q(x, y, z) \, \boldsymbol{j} + R(x, y, z) \, \boldsymbol{k},
    $$

    其中 $P$，$Q$，$R$ 是定义在曲线 $\Gamma$ 上的有界函数，则函数

    $$
    \boldsymbol{A} \cdot \boldsymbol{e}_\tau = P \cos \alpha + Q \cos \beta + R \cos \gamma
    $$

    在曲线 $\Gamma$ 上的第一类曲线积分

    $$
    \int_{\Gamma} \boldsymbol{A} \cdot \boldsymbol{e}_\tau \, \mathrm{d}s = \int_{\Gamma} \left( P \cos \alpha + Q \cos \beta + R \cos \gamma \right) \mathrm{d}s
    $$

    称为函数 $\boldsymbol{A}(P) = \boldsymbol{A}(x, y, z)$ 沿曲线 $\Gamma$ 从 $A$ 到 $B$ 的第二类曲线积分

$$
\int_{\Gamma_{AB}} P(x, y) \, \mathrm{d}x + Q(x, y) \, \mathrm{d}y = \int_{t_A}^{t_B} \left[ P(x(t), y(t)) \, x'(t) + Q(x(t), y(t)) \, y'(t) \right] \mathrm{d}t.
$$

### 格林公式

!!! formula "格林公式"
    若函数 $P$，$Q$ 在有界闭区域 $D \subset \mathbf{R}^2$ 上连续且具有一阶连续偏导数，则

    $$
    \iint_{D} \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) \mathrm{d}x \mathrm{d}y = \oint_{\Gamma} P \, \mathrm{d}x + Q \, \mathrm{d}y
    $$

    这里 $\Gamma$ 为区域 $D$ 的边界曲线，并取正向

    格林公式的行列式表示法：

    $$
    \iint_{D} \begin{vmatrix} \dfrac{\partial}{\partial x} & \dfrac{\partial}{\partial y} \\[2ex] P & Q \end{vmatrix} \mathrm{d}x \mathrm{d}y = \oint_{\Gamma} P \, \mathrm{d}x + Q \, \mathrm{d}y
    $$

### 平面曲线积分与路径无关性

!!! theorem "定理"
    设 $D \subset \mathbf{R}^2$ 是平面单连通区域，若函数 $P$，$Q$ 在区域 $D$ 上连续，且有一阶连续偏导数，则以下四个条件等价：

    （1）沿 $D$ 中任一按段光滑的闭曲线 $L$，有 $\displaystyle \oint_{L} P \, \mathrm{d}x + Q \, \mathrm{d}y = 0$；

    （2）对 $D$ 中任一按段光滑曲线 $L$，曲线积分 $\displaystyle \int_{L} P \, \mathrm{d}x + Q \, \mathrm{d}y$ 与路径无关，只与 $L$ 的起点和终点有关；

    （3）$P \, \mathrm{d}x + Q \, \mathrm{d}y$ 是 $D$ 内某一函数 $u$ 的全微分，即在 $D$ 内存在一个二元函数 $u(x, y)$，使 $\mathrm{d}u = P \, \mathrm{d}x + Q \, \mathrm{d}y$，即 $\dfrac{\partial u}{\partial x} = P$，$\dfrac{\partial u}{\partial y} = Q$；

    （4）在 $D$ 内每一点处，有 $\dfrac{\partial P}{\partial y} = \dfrac{\partial Q}{\partial x}$

!!! formula "曲线积分的牛顿-莱布尼茨公式"
    $$
    \int_{A(x_0,\, y_0)}^{B(x_1,\, y_1)} P \, \mathrm{d}x + Q \, \mathrm{d}y = u(x, y) \bigg|_{A(x_0,\, y_0)}^{B(x_1,\, y_1)} = u(x_1, y_1) - u(x_0, y_0)
    $$

!!! theorem "定理"
    设在复连通区域$D$内，$P$，$Q$具有连续的偏导数且$\frac{\partial P}{\partial y}\equiv \frac{\partial Q}{\partial x}$，则环绕同一些洞的任何两条闭曲线（取同一方向）上的曲线积分都相等

## 第二类曲面积分

### 第二类曲面积分的概念

!!! definition "第二类曲面积分"
    设 $S$ 是光滑有界的定侧曲面，记 $S$ 上每点 $M(x, y, z)$ 处沿曲面定侧的单位法矢量为

    $$
    \boldsymbol{e}_n(M) = \cos \alpha \, \boldsymbol{i} + \cos \beta \, \boldsymbol{j} + \cos \gamma \, \boldsymbol{k}.
    $$

    又设

    $$
    \boldsymbol{A}(M) = \boldsymbol{A}(x, y, z) = P(x, y, z) \, \boldsymbol{i} + Q(x, y, z) \, \boldsymbol{j} + R(x, y, z) \, \boldsymbol{k}, \quad M(x, y, z) \in S,
    $$

    其中 $P$，$Q$，$R$ 是定义在 $S$ 上的有界函数，则函数

    $$
    \boldsymbol{A} \cdot \boldsymbol{e}_n = P \cos \alpha + Q \cos \beta + R \cos \gamma
    $$

    在 $S$ 上的第一类曲面积分

    $$
    \iint_{S} \boldsymbol{A} \cdot \boldsymbol{e}_n \, \mathrm{d}S = \iint_{S} \left( P \cos \alpha + Q \cos \beta + R \cos \gamma \right) \mathrm{d}S 
    $$

    称为函数 $\boldsymbol{A}(P) = \boldsymbol{A}(x, y, z)$ 沿定侧曲面 $S$ 的第二类曲面积分

计算方法：

$$
\begin{aligned}
&\iint_{S} P(x, y, z) \, \mathrm{d}y \mathrm{d}z + Q(x, y, z) \, \mathrm{d}z \mathrm{d}x + R(x, y, z) \, \mathrm{d}x \mathrm{d}y \\
=\ &\iint_{S} P(x, y, z) \, \mathrm{d}y \mathrm{d}z + \iint_{S} Q(x, y, z) \, \mathrm{d}z \mathrm{d}x + \iint_{S} R(x, y, z) \, \mathrm{d}x \mathrm{d}y
\end{aligned}
$$

然后分别计算这 3 项：

- $\displaystyle \iint_{S} P(x, y, z) \, \mathrm{d}y \mathrm{d}z = \operatorname{sgn}\left( \frac{\pi}{2} - \alpha \right) \iint_{\sigma_{yz}} P(x(y, z), y, z) \, \mathrm{d}\sigma$
- $\displaystyle \iint_{S} Q(x, y, z) \, \mathrm{d}z \mathrm{d}x = \operatorname{sgn}\left( \frac{\pi}{2} - \beta \right) \iint_{\sigma_{zx}} Q(x, y(x, z), z) \, \mathrm{d}\sigma$
- $\displaystyle \iint_{S} R(x, y, z) \, \mathrm{d}x \mathrm{d}y = \operatorname{sgn}\left( \frac{\pi}{2} - \gamma \right) \iint_{\sigma_{xy}} R(x, y, z(x, y)) \, \mathrm{d}\sigma$

### 高斯公式

!!! formula "高斯公式"
    设空间区域 $V$ 由分片光滑的双侧封闭曲面 $S$ 构成，若函数 $P$，$Q$，$R$ 在 $V$ 上连续，且有一阶连续偏导数，则

    $$
    \iiint_{V} \left( \frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z} \right) \mathrm{d}x \mathrm{d}y \mathrm{d}z = \oiint_{S} P \, \mathrm{d}y \mathrm{d}z + Q \, \mathrm{d}z \mathrm{d}x + R \, \mathrm{d}x \mathrm{d}y
    $$

    其中 $S$ 取外侧

### 散度场

!!! definition "散度"
    设 $\boldsymbol{A}(x, y, z) = (P(x, y, z), Q(x, y, z), R(x, y, z))$ 为空间区域 $V$ 上的向量函数，对 $V$ 上的每一点 $(x, y, z)$，称函数 $\dfrac{\partial P}{\partial x} + \dfrac{\partial Q}{\partial y} + \dfrac{\partial R}{\partial z}$ 为向量函数 $\boldsymbol{A}$ 在点 $M(x, y, z)$ 处的**散度**，记作 $\operatorname{div} \boldsymbol{A}(x, y, z)$

则高斯公式可以改写为：

$$\displaystyle \iiint_{V} \operatorname{div} \boldsymbol{A} \, \mathrm{d}V = \oiint_{S} \boldsymbol{A} \cdot \mathrm{d}\boldsymbol{S}$$

令 $V$ 收缩到点 $M_0$，得到：

$$\displaystyle \operatorname{div} \boldsymbol{A}(M_0) = \lim_{V \to M_0} \frac{\oiint_{S} \boldsymbol{A} \cdot \mathrm{d}\boldsymbol{S}}{\Delta V}$$

!!! definition "散度场"
    向量场 $\boldsymbol{A}$ 的散度 $\operatorname{div} \boldsymbol{A}$ 所构成的数量场

!!! note "物理意义"
    假设某一不可压缩流体的流速为向量函数 $\boldsymbol{A}$，经过封闭曲面 $S$ 的流量是 $\displaystyle \oiint_{S} \boldsymbol{A} \cdot \mathrm{d}\boldsymbol{S}$，则 $\operatorname{div} \boldsymbol{A}$ 表示流量对体积的变化率，称它为 $\boldsymbol{A}$ 在点 $M_0$ 的<b>流量密度</b>
    
    - $\operatorname{div} \boldsymbol{A}(M_0) > 0$：每一单位时间内有一定数量的流体流出这一点 $\Rightarrow$ <b>源</b>
    - $\operatorname{div} \boldsymbol{A}(M_0) < 0$：每一单位时间内有一定数量的流体被这一点吸收 $\Rightarrow$ <b>汇</b>
    - 若对每一点皆有 $\operatorname{div} \boldsymbol{A} = 0$，称 $\boldsymbol{A}$ 为 <b>无源场</b>

!!! note "推论"
    1. 若在封闭曲面 $S$ 所包围的区域 $V$ 中处处有 $\operatorname{div} \boldsymbol{A} = 0$，则 $\displaystyle \oiint_{S} \boldsymbol{A} \cdot \mathrm{d}\boldsymbol{S} = 0$

    2. 如果仅在区域 $V$ 中某些点（或子区域上）$\operatorname{div} \boldsymbol{A} \neq 0$ 或 $\operatorname{div} \boldsymbol{A}$ 不存在（下图阴影部分），其他点都有 $\operatorname{div} \boldsymbol{A} = 0$，则通过包围这些点或子区域（被称为“洞”）的 $V$ 内任一封闭曲面积分都是相等的，即是一个常数，有：

    $$
    \oiint_{S_1} \boldsymbol{A} \cdot \mathrm{d}\boldsymbol{S} = \oiint_{S_2} \boldsymbol{A} \cdot \mathrm{d}\boldsymbol{S}
    $$

    其中 $S_1, S_2$ 是包围散度不等于 $0$，或不存在的点（或区域）的任意两个封闭曲面，其法线单位矢量向外

## 斯托克斯公式、空间曲线积分与路径无关性

### 斯托克斯公式

设光滑曲面 $S$ 的边界 $L$ 是按段光滑的连续曲线，若函数 $P$，$Q$，$R$ 在 $S$（连同 $L$）上连续，且有一阶连续偏导数，则：

$$
\begin{aligned}
&\iint_{S} \left( \frac{\partial R}{\partial y} - \frac{\partial Q}{\partial z} \right) \mathrm{d}y \mathrm{d}z + \left( \frac{\partial P}{\partial z} - \frac{\partial R}{\partial x} \right) \mathrm{d}z \mathrm{d}x + \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) \mathrm{d}x \mathrm{d}y \\
=\ &\oint_{L} P \, \mathrm{d}x + Q \, \mathrm{d}y + R \, \mathrm{d}z
\end{aligned}
$$

其中 $S$ 的侧面与 $L$ 的方向按右手法则确定

斯托克斯公式的行列式表示法：

$$
\iint_{S} \begin{vmatrix} \mathrm{d}y \mathrm{d}z & \mathrm{d}z \mathrm{d}x & \mathrm{d}x \mathrm{d}y \\[1ex] \dfrac{\partial}{\partial x} & \dfrac{\partial}{\partial y} & \dfrac{\partial}{\partial z} \\[2ex] P & Q & R \end{vmatrix} = \iint_{S} \begin{vmatrix} \cos \alpha & \cos \beta & \cos \gamma \\[1ex] \dfrac{\partial}{\partial x} & \dfrac{\partial}{\partial y} & \dfrac{\partial}{\partial z} \\[2ex] P & Q & R \end{vmatrix} \mathrm{d}S = \oint_{L} P \, \mathrm{d}x + Q \, \mathrm{d}y + R \, \mathrm{d}z
$$

### 空间曲线积分与路径无关性

设 $\Omega \subset \mathbf{R}^3$ 为空间线单连通区域，若函数 $P$，$Q$，$R$ 在 $\Omega$ 上连续，且有一阶连续偏导数，则以下四个条件是等价的：

- 对于 $\Omega$ 内任一按段光滑的封闭曲线 $L$，有 $\displaystyle \oint_{L} P \, \mathrm{d}x + Q \, \mathrm{d}y + R \, \mathrm{d}z = 0$
- 对于 $\Omega$ 内任一按段光滑的曲线 $\Gamma$，曲线积分 $\displaystyle \int_{L} P \, \mathrm{d}x + Q \, \mathrm{d}y + R \, \mathrm{d}z$ 与路径无关，仅与起点、终点有关
- $P \, \mathrm{d}x + Q \, \mathrm{d}y + R \, \mathrm{d}z$ 是 $\Omega$ 内某一函数 $u(x, y, z)$ 的全微分，即存在 $\Omega$ 上的函数 $u(x, y, z)$，使

$$
\mathrm{d}u = P \, \mathrm{d}x + Q \, \mathrm{d}y + R \, \mathrm{d}z
$$

- $\dfrac{\partial P}{\partial y} = \dfrac{\partial Q}{\partial x}$，$\dfrac{\partial Q}{\partial z} = \dfrac{\partial R}{\partial y}$，$\dfrac{\partial R}{\partial x} = \dfrac{\partial P}{\partial z}$ 在 $\Omega$ 内处处成立

### 旋度场

**定义：**

设 $\boldsymbol{A}(x, y, z) = (P(x, y, z), Q(x, y, z), R(x, y, z))$ 为空间区域 $V$ 上的向量函数，对 $V$ 上一点 $M(x, y, z)$，定义向量函数 $\left( \dfrac{\partial R}{\partial y} - \dfrac{\partial Q}{\partial z}, \dfrac{\partial P}{\partial z} - \dfrac{\partial R}{\partial x}, \dfrac{\partial Q}{\partial x} - \dfrac{\partial P}{\partial y} \right)$，称它为向量函数 $\boldsymbol{A}$ 在点 $M(x, y, z)$ 处的**旋度**，记作 $\operatorname{\mathbf{rot}} \boldsymbol{A}$。

行列式表示法：

$$
\operatorname{\mathbf{rot}} \boldsymbol{A} = \begin{vmatrix} \boldsymbol{i} & \boldsymbol{j} & \boldsymbol{k} \\[1ex] \dfrac{\partial}{\partial x} & \dfrac{\partial}{\partial y} & \dfrac{\partial}{\partial z} \\[2ex] P & Q & R \end{vmatrix}
$$

设 $\boldsymbol{e}_\tau$ 是曲线 $L$ 在点 $M(x, y, z)$ 处于指定的方向一致的单位切向量，向量 $\mathrm{d}\boldsymbol{s} = \boldsymbol{e}_\tau \, \mathrm{d}s$ 被称为**弧长元素向量**。

$\therefore$ 斯托克斯公式的第 3 种表示法：

$$
\iint_{S} \operatorname{\mathbf{rot}} \boldsymbol{A} \cdot \mathrm{d}\boldsymbol{S} = \oint_{L} \boldsymbol{A} \cdot \mathrm{d}\boldsymbol{s}
$$

### 向量微分算子

**向量微分算子（Nabla 算子或哈密顿算子）：** $\nabla = \dfrac{\partial}{\partial x} \boldsymbol{i} + \dfrac{\partial}{\partial y} \boldsymbol{j} + \dfrac{\partial}{\partial z} \boldsymbol{k}$

二阶微分算子：$\nabla^2 = \dfrac{\partial^2 u}{\partial x^2} + \dfrac{\partial^2 u}{\partial y^2} + \dfrac{\partial^2 u}{\partial z^2}$

可以用向量微分算子改写上面的式子：

- 高斯公式：$\displaystyle \iiint_{V} \nabla \cdot \boldsymbol{A} \, \mathrm{d}V = \oiint_{S} \boldsymbol{A} \cdot \mathrm{d}\boldsymbol{S}$
- 斯托克斯公式：$\displaystyle \iint_{S} (\nabla \times \boldsymbol{A}) \cdot \mathrm{d}\boldsymbol{S} = \oint_{S} \boldsymbol{A} \cdot \mathrm{d}\boldsymbol{s}$