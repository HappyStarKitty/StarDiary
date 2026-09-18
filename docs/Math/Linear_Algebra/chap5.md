# Chap5 矩阵的特征值理论与相似对角化

## 特征值与特征向量的定义及计算

!!! definition "特征值与特征向量"
    对于给定的 $\boldsymbol{A} \in \mathbb{P}^{n \times n}$，若存在数 $\lambda_0 \in \mathbb{P}$ 及非零向量 $\boldsymbol{\xi} \in \mathbb{P}^n$ 使得

    $$
    \boldsymbol{A}\boldsymbol{\xi} = \lambda_0 \boldsymbol{\xi}
    $$

    则称 $\lambda_0$ 为 $\boldsymbol{A}$ 在 $\mathbb{P}$ 中的一个<b>特征值</b>，称非零向量 $\boldsymbol{\xi}$ 为 $\boldsymbol{A}$ 在 $\mathbb{P}^n$ 中属于 $\lambda_0$ 的<b>特征向量</b>

## 特征值与特征向量的基本性质

**性质1** 若 $n$ 阶方阵 $\boldsymbol{A}$ 在 $\mathbb{P}$ 中有 $n$ 个特征值 $\lambda_1, \lambda_2, \cdots, \lambda_n$（重特征值按重数计），则

$$
|\boldsymbol{A}| = \prod_{i=1}^{n} \lambda_i, \quad \operatorname{tr}(\boldsymbol{A}) = \sum_{i=1}^{n} \lambda_i
$$

**性质2** 方阵 $A$ 的属于不同特征值的特征向量线性无关

**性质 4** $\dim V_{\lambda_0} \leqslant \lambda_0$ 的重数，这里 $\lambda_0$ 的重数是指 $\lambda_0$ 作为特征多项式零点的重数.

通常，我们称 $V_{\lambda_0}$ 的维数 $\dim V_{\lambda_0}$ 为特征值 $\lambda_0$ 的**几何重数**，而称 $\lambda_0$ 的重数为特征值 $\lambda_0$ 的**代数重数**.

通过类似于待定系数法的方法，不难得到

**定理 1（Hamilton-Cayley（哈密顿-凯莱）定理）** 设 $\boldsymbol{A}$ 为数域 $\mathbb{P}$ 上的 $n$ 阶方阵，$f(\lambda) = |\lambda \boldsymbol{E} - \boldsymbol{A}|$ 为 $\boldsymbol{A}$ 的特征多项式，则 $f(\boldsymbol{A}) = \boldsymbol{O}$.

相应于矩阵的多项式、逆矩阵的特征值和特征向量问题，有

**定理 2** 设 $\boldsymbol{A}\boldsymbol{\xi} = \lambda \boldsymbol{\xi}$，这里 $\boldsymbol{A} \in \mathbb{P}^{n \times n}$，$\lambda \in \mathbb{P}$，$\boldsymbol{\xi} \in \mathbb{P}^n$ 且 $\boldsymbol{\xi} \neq \boldsymbol{\theta}$.

1) 若 $g(x)$ 是数域 $\mathbb{P}$ 上的一个多项式，则 $g(\boldsymbol{A})\boldsymbol{\xi} = g(\lambda)\boldsymbol{\xi}$

2) 若 $\boldsymbol{A}$ 可逆，则 $\lambda \neq 0$ 且 $\boldsymbol{A}^{-1}\boldsymbol{\xi} = \dfrac{1}{\lambda}\boldsymbol{\xi}$

**定理 3** 设 $\boldsymbol{A} \in \mathbb{C}^{n \times n}$，$g(x)$ 是复系数多项式，若 $\boldsymbol{A}$ 的所有特征值（含重数）为 $\lambda_1, \lambda_2, \cdots, \lambda_n$，则 $g(\boldsymbol{A})$ 的所有特征值（含重数）为 $g(\lambda_1), g(\lambda_2), \cdots, g(\lambda_n)$

## 矩阵的相似及其性质

!!! definition "矩阵相似"
    设 $\boldsymbol{A}, \boldsymbol{B}$ 为数域 $\mathbb{P}$ 上的两个同阶方阵，若存在数域 $\mathbb{P}$ 上的同阶可逆矩阵 $\boldsymbol{P}$ 使得

    $$
    \boldsymbol{B} = \boldsymbol{P}^{-1}\boldsymbol{A}\boldsymbol{P} \quad \text{或} \quad \boldsymbol{P}\boldsymbol{B} = \boldsymbol{A}\boldsymbol{P},
    $$

    则称 $\boldsymbol{A}$ 与 $\boldsymbol{B}$（在 $\mathbb{P}$ 上）<b>相似</b>
    
    当 $\boldsymbol{A}$ 与 $\boldsymbol{B}$ 相似时，记作 $\boldsymbol{A} \stackrel{S}{\sim} \boldsymbol{B}$

    依据定义，有

    相似矩阵的秩相同，相似矩阵是相抵的，相似矩阵的行列式相同

## 矩阵的相似对角化

!!! theorem "定理"
    设 $\boldsymbol{A}$ 是数域 $\mathbb{P}$ 上的一个 $n$ 阶方阵，则下列命题等价：

    1) $\boldsymbol{A}$ 与 $\mathbb{P}$ 上的某个对角矩阵相似

    2) $\boldsymbol{A}$ 在 $\mathbb{P}^n$ 中有 $n$ 个线性无关的特征向量

    3) $\mathbb{P}^n$ 中存在一个由 $\boldsymbol{A}$ 的特征向量所形成的基

    4) $\boldsymbol{A}$ 在 $\mathbb{P}^n$ 中的所有两两互异的特征子空间的维数之和等于 $n$

    5) $\boldsymbol{A}$ 在 $\mathbb{P}$ 上有 $n$ 个特征值（当特征多项式有重根时，按重数计），且对于每个特征值 $\lambda$，$\dim V_\lambda$ 等于 $\lambda$ 的重数

## 实对称矩阵的相似对角化