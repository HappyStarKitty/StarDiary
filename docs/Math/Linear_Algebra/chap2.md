# Chap2 行列式与矩阵的秩

## n-排列

!!! definition "逆序数"
    在一个 $n$-排列 $i_1 i_2 \cdots i_n$ 中，若存在 $1 \leqslant k < l \leqslant n$ 使得 $i_k > i_l$，则称 $i_k$ 与 $i_l$ 构成该 $n$-排列的一个<b>逆序</b>（或<b>逆序对</b>）
    
    $i_1 i_2 \cdots i_n$ 的逆序（或逆序对）的总数目称为该 $n$-排列的<b>逆序数</b>，记作 $\tau(i_1 i_2 \cdots i_n)$

    若以 $\tau(i_j)$ 表示 $n$-排列 $i_1 i_2 \cdots i_n$ 中排在 $i_j$ 之后但比 $i_j$ 小的数的个数（$1 \leqslant j \leqslant n$），则

    $$
    \tau(i_1 i_2 \cdots i_n) = \tau(i_1) + \tau(i_2) + \cdots + \tau(i_n) = \sum_{j=1}^{n} \tau(i_j).
    $$

    如 $\tau(123 \cdots n) = 0$，通常称 $123 \cdots n$ 为一个<b>标准排列</b>（或<b>自然序排列</b>）

    若 $\tau(i_1 i_2 \cdots i_n)$ 为奇数，则称 $n$-排列 $i_1 i_2 \cdots i_n$ 为一个<b>奇排列</b>，否则称之为<b>偶排列</b>

## 方阵的行列式

!!! definition "行列式"
    设 $\boldsymbol{A} = (a_{ij})_{n \times n}$ 是数域 $\mathbb{P}$ 上的一个 $n$ 阶方阵，$\boldsymbol{A}$ 的行列式定义为

    $$
    \begin{vmatrix}
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn}
    \end{vmatrix}
    = \sum_{j_1 j_2 \cdots j_n} (-1)^{\tau(j_1 j_2 \cdots j_n)} a_{1j_1} a_{2j_2} \cdots a_{nj_n}
    $$

    这里 $j_1 j_2 \cdots j_n$ 是 $n$-排列，$\displaystyle \sum_{j_1 j_2 \cdots j_n}$ 表示对所有的相应于 $n$-排列的项求和

    $n$ 阶矩阵 $\boldsymbol{A} = (a_{ij})_{n \times n}$ 的行列式常称作 $n$ 阶行列式，常记作 $|\boldsymbol{A}|$，$|a_{ij}|_n$，$D_n$ 或 $D$

## 行列式的性质

!!! note "行列式的性质"
    - 性质1：$|A|=|A^T|$，即转置不改变行列式的值
    - 性质2：若交换行列式中某两行（列）所有对应元素的位置，则行列式的值变号
    - 性质3（倍乘）：以常数 $c$ 乘行列式某一行（列）的每一个元素所形成的新行列式的值等于 $c$ 乘原行列式的值
    - 性质4：若行列式的某行（列）元素均是另一行（列）对应元素的 $c$ 倍，则行列式的值为零
    - 性质5（分拆）：
    - 性质6（倍加）：行列式某行（列）的每一个元素均乘常数 $c$ 后加到另一行（列）对应元素上所形成的新行列式与原行列式的值相同

## Laplace定理

!!! definition "代数余子式"
    对于任意的 $i, j = 1, 2, \cdots, n\ (n > 1)$，称行列式 $M_{ij} \stackrel{\text{def}}{=} |\boldsymbol{B}_{ij}|$ 为元素 $a_{ij}$ 的<b>余子式</b>，称 $A_{ij} \stackrel{\text{def}}{=} (-1)^{i+j} M_{ij}$ 为 $a_{ij}$ 的<b>代数余子式</b>

!!! theorem "定理"
    对每一个满足 $1 \leqslant i \leqslant n\ (n > 1)$ 的整数 $i$，

    $$
    \begin{aligned}
    |\boldsymbol{A}| &= a_{i1}A_{i1} + a_{i2}A_{i2} + \cdots + a_{in}A_{in} \\
    &= \sum_{k=1}^{n} a_{ik}A_{ik} \quad (\text{称为 } |\boldsymbol{A}| \text{ 按第 } i \text{ 行展开})  \\
    &= a_{1i}A_{1i} + a_{2i}A_{2i} + \cdots + a_{ni}A_{ni} \\
    &= \sum_{k=1}^{n} a_{ki}A_{ki} \quad (\text{称为 } |\boldsymbol{A}| \text{ 按第 } i \text{ 列展开})
    \end{aligned}
    $$

    进一步，有如下重要公式：

    $$
    \boxed{\ \sum_{k=1}^{n} a_{ik}A_{jk} = \begin{cases} |\boldsymbol{A}|, & i = j, \\ 0, & i \neq j, \end{cases} \quad 1 \leqslant i, j \leqslant n\ (n > 1).\ } 
    $$

!!! note "Vandermonde(范德蒙德)行列式"
    若 $n \geqslant 2$，则

    $$
    D_n = \begin{vmatrix}
    1 & 1 & \cdots & 1 \\
    x_1 & x_2 & \cdots & x_n \\
    x_1^2 & x_2^2 & \cdots & x_n^2 \\
    \vdots & \vdots & & \vdots \\
    x_1^{n-1} & x_2^{n-1} & \cdots & x_n^{n-1}
    \end{vmatrix} = \prod_{1 \leqslant i < j \leqslant n} (x_j - x_i).
    $$

!!! theorem "Cramer法则"
    线性方程组当其系数行列式 $D \neq 0$ 时有且仅有唯一解

    $$
    x_j = \frac{D_j}{D}, \quad j = 1, 2, \cdots, n
    $$

    其中 $D_j\ (j = 1, 2, \cdots, n)$ 是将系数行列式 $D$ 中第 $j$ 列元素 $a_{1j}, a_{2j}, \cdots, a_{nj}$ 对应地换为方程组的常数项 $b_1, b_2, \cdots, b_n$ 后所得到的行列式

$$
\begin{vmatrix}
\boldsymbol{O}_{s \times t} & \boldsymbol{A}_{s \times s} \\
\boldsymbol{B}_{t \times t} & \boldsymbol{C}_{t \times s}
\end{vmatrix}
= (-1)^{st} |\boldsymbol{A}| |\boldsymbol{B}|.
$$

## 矩阵的秩

!!! definition "秩"
    称 $\mathbb{P}^{m \times n}$ 中的矩阵 $\boldsymbol{A}$ 的非零子式的最高阶数 $r$ 为 $\boldsymbol{A}$ 的<b>秩</b>，记作 $r(\boldsymbol{A}) = r$
    
    若矩阵 $\boldsymbol{A}$ 的所有子式均为零，则称该矩阵的秩为零，记作 $r(\boldsymbol{A}) = 0$

    我们有 $0 \leqslant r(\boldsymbol{A}) \leqslant \min\{m, n\}$，显然 $r(\boldsymbol{A}) = 0 \iff \boldsymbol{A}$ 为零矩阵

!!! theorem "定理"
    矩阵的秩是矩阵初等变换的不变量

## Gauss消元过程中的不变量

## 矩阵的相抵

!!! definition "矩阵相抵"
    设 $\mathbb{P}$ 为数域，$\boldsymbol{A} \in \mathbb{P}^{m \times n}$，$\boldsymbol{B} \in \mathbb{P}^{m \times n}$，若 $r(\boldsymbol{A}) = r(\boldsymbol{B})$，则称 $\boldsymbol{A}$ 与 $\boldsymbol{B}$ <b>相抵</b>（或<b>等价</b>），记作 $\boldsymbol{A} \stackrel{R}{\sim} \boldsymbol{B}$
