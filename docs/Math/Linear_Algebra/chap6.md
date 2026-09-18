# Chap6 二次型

## 二次型的定义及标准形

## 二次型的矩阵形式与矩阵的合同

## 二次型的规范形

!!! theorem "惯性定理"
    实二次型的实的标准形中的正系数项的个数、负系数项的个数以及零系数项的个数与非退化的线性替换的选取无关

    通常，分别称实二次型的实的标准形中与非退化的线性替换选择无关的正系数项的个数 $p$、负系数项的个数 $r - p$ 以及 $2p - r$ 为该实二次型或其矩阵的<b>正惯性指数</b>、<b>负惯性指数</b>及<b>符号差</b>

## 二次型的正定性

!!! definition "正定性"
    设 $\boldsymbol{A}$ 为 $n$ 阶实对称矩阵，若

    $$
    \boldsymbol{X}^{\mathrm{T}}\boldsymbol{A}\boldsymbol{X} \geqslant 0\ (\leqslant 0), \quad \forall \boldsymbol{X} \neq \boldsymbol{O}, \boldsymbol{X} \in \mathbb{R}^n
    $$

    则称实二次型 $\boldsymbol{X}^{\mathrm{T}}\boldsymbol{A}\boldsymbol{X}$ 及矩阵 $\boldsymbol{A}$ 是<b>半正定</b>（<b>半负定</b>）的，若上式中的不等号严格成立，则称二次型及矩阵 $\boldsymbol{A}$ 是<b>正定</b>（<b>负定</b>）的

!!! theorem "定理"
    设 $\boldsymbol{A}$ 为 $n$ 阶实对称矩阵，则如下结论等价：

    1) 实二次型 $f(x_1, x_2, \cdots, x_n) = \boldsymbol{X}^{\mathrm{T}}\boldsymbol{A}\boldsymbol{X}$ 正定（或者说 $\boldsymbol{A}$ 正定）

    2) $f(x_1, x_2, \cdots, x_n)$ 的正惯性指数等于 $n$

    3) $\boldsymbol{A}$ 的所有特征值恒正

    4) $\boldsymbol{A}$ 与单位矩阵合同

    5) 存在 $n$ 阶可逆实矩阵 $\boldsymbol{B}$，使得 $\boldsymbol{A} = \boldsymbol{B}^{\mathrm{T}}\boldsymbol{B}$