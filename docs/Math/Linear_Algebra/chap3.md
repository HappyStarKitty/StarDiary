# Chap3 矩阵的运算

## 矩阵的加减法、数乘、乘法和转置

### 矩阵的乘法

!!! definition "矩阵乘法"
    称 $\mathbb{P}^{m \times n}$ 中矩阵 $\boldsymbol{C} = (c_{ij})_{m \times n}$ 为 $\mathbb{P}^{m \times s}$ 中的矩阵 $\boldsymbol{A} = (a_{ij})_{m \times s}$ 与 $\mathbb{P}^{s \times n}$ 中的矩阵 $\boldsymbol{B} = (b_{ij})_{s \times n}$ 的**积**，并记作 $\boldsymbol{C} = \boldsymbol{A}\boldsymbol{B}$ 或 $\boldsymbol{C} = \boldsymbol{A} \cdot \boldsymbol{B}$，如果

    $$
    c_{ij} = a_{i1}b_{1j} + a_{i2}b_{2j} + \cdots + a_{is}b_{sj} = \sum_{k=1}^{s} a_{ik}b_{kj}
    $$

    $$
    i = 1, 2, \cdots, m,\ j = 1, 2, \cdots, n.
    $$

    上式表示 $c_{ij}$ 是矩阵 $\boldsymbol{A}$ 的第 $i$ 行与矩阵 $\boldsymbol{B}$ 的第 $j$ 列对应元素乘积之和

!!! theorem "定理"
    若 $A$ 和 $B$ 均为 $\mathbb{P}^{n\times n}$ 中的矩阵，则 $|AB|=|A||B|$

## 矩阵求逆

!!! definition "逆矩阵"
    设 $\boldsymbol{A}$ 是 $\mathbb{P}^{n \times n}$ 中的一个方阵，$\boldsymbol{E}$ 为 $\mathbb{P}^{n \times n}$ 中的单位矩阵，若存在 $\mathbb{P}^{n \times n}$ 中的方阵 $\boldsymbol{B}$ 使得

    $$
    \boldsymbol{A}\boldsymbol{B} = \boldsymbol{E} = \boldsymbol{B}\boldsymbol{A}, 
    $$

    则称 $\boldsymbol{A}$ 是<b>可逆的</b>，并称 $\boldsymbol{B}$ 为其<b>逆矩阵</b>；若对所有的 $\boldsymbol{B} \in \mathbb{P}^{n \times n}$ 均不成立，则称 $\boldsymbol{A}$ 是<b>不可逆的</b>

    当一个方阵可逆时，我们也称它是<b>非退化的</b>或<b>非奇异的</b>； 当一个方阵不可逆时，我们也称它是<b>退化的</b>或<b>奇异的</b>

!!! definition "伴随矩阵"
    $$
    \boldsymbol{A}^* = \begin{pmatrix}
    A_{11} & A_{21} & \cdots & A_{n1} \\
    A_{12} & A_{22} & \cdots & A_{n2} \\
    \vdots & \vdots & & \vdots \\
    A_{1n} & A_{2n} & \cdots & A_{nn}
    \end{pmatrix}
    $$

    这里 $A_{ij}$ 是 $\boldsymbol{A}$ 的第 $i$ 行和第 $j$ 列交叉位置上元素的代数余子式 $(i, j = 1, 2, \cdots, n)$，则

    $$
    \boldsymbol{A}\boldsymbol{A}^* = \boldsymbol{A}^*\boldsymbol{A} = |\boldsymbol{A}|\boldsymbol{E}
    $$

!!! note "矩阵求逆的性质"
    - $(\boldsymbol{A}^{-1})^{-1} = \boldsymbol{A}$

    - $(\boldsymbol{A}\boldsymbol{B})^{-1} = \boldsymbol{B}^{-1}\boldsymbol{A}^{-1}$

    - $(c\boldsymbol{A})^{-1} = \dfrac{1}{c}\boldsymbol{A}^{-1} \quad (c \in \mathbb{P},\ c \neq 0)$

    - $(\boldsymbol{A}^{\mathrm{T}})^{-1} = (\boldsymbol{A}^{-1})^{\mathrm{T}}$

    - $|\boldsymbol{A}^{-1}| = |\boldsymbol{A}|^{-1}$

## 分块矩阵的运算

## 矩阵的初等变换与矩阵乘法的联系

$$
\left( \begin{array}{c|c} \boldsymbol{A} & \boldsymbol{E} \end{array} \right) \xrightarrow{\text{仅有限次初等行变换}} \left( \begin{array}{c|c} \boldsymbol{E} & \boldsymbol{A}^{-1} \end{array} \right)
$$

## 矩阵运算对矩阵秩的影响

!!! formula "Sylvester 不等式"
    设 $\boldsymbol{A}$，$\boldsymbol{B}$ 是数域 $\mathbb{P}$ 上的 $n$ 阶方阵，则

    $$
    r(\boldsymbol{A}\boldsymbol{B}) \geqslant r(\boldsymbol{A}) + r(\boldsymbol{B}) - n.
    $$


!!! formula "Frobenius（弗罗贝尼乌斯）不等式）"

    设 $\boldsymbol{A}$，$\boldsymbol{B}$，$\boldsymbol{C}$ 是数域 $\mathbb{P}$ 上的 $n$ 阶方阵，则

    $$
    r(\boldsymbol{A}\boldsymbol{B}\boldsymbol{C}) \geqslant r(\boldsymbol{A}\boldsymbol{B}) + r(\boldsymbol{B}\boldsymbol{C}) - r(\boldsymbol{B})
    $$