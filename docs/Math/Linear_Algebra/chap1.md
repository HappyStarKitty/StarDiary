# Chap1 线性方程组的求解

## 线性方程组的形式及相关概念

设 $\mathbb{P}$ 是一个数域，$m, n$ 为正整数，数域 $\mathbb{P}$ 上一个由 $m$ 个方程，$n$ 个未知量构成的 $n$ 元线性方程组通常写为如下形式：

$$
\begin{cases}
a_{11}x_1 + a_{12}x_2 + \cdots + a_{1n}x_n = b_1, \\
a_{21}x_1 + a_{22}x_2 + \cdots + a_{2n}x_n = b_2, \\
\quad \cdots \cdots \cdots \cdots \cdots \cdots \\
a_{m1}x_1 + a_{m2}x_2 + \cdots + a_{mn}x_n = b_m,
\end{cases} 
$$

可简单写作：

$$A x=b$$

若线性方程组中的常数项全为零，即$b_1=b_2=...n_m=0$，则称其为<b>齐次线性方程组</b>；反之，称为<b>非齐次线性方程组</b>

当一个线性方程组可解时，称其是<b>相容</b>的；反之，称为<b>不相容</b>的

## 同解变形与阶梯线性方程组

!!! note "线性方程组的初等变换"
    - <b>互换：</b>交换两个方程在线性方程组中的位置，用“$\xrightarrow{R_{ij}}$” 表示互换第 $i$ 个方程和第 $j$ 个方程位置的过程

    - <b>倍乘：</b>用一个非零常数乘某个方程，用“$\xrightarrow{cR_i}$”表示用非零常数 $c\in\mathbb{P}$ 乘第 $i$ 个方程的过程

    - <b>倍加：</b>将一个方程加到另一个方程上，用“$\xrightarrow{R_i+cR_{j}}$”表示第 $j$ 个方程倍乘后加到第 $i$ 个方程的过程

    初等变换前后的两个线性方程组是同解的

## Gauss消元法的一般结论

## 矩阵及其初等变换

## Gauss消元过程的矩阵形式

$$
\boldsymbol{A} = (a_{ij})_{m \times n} = \begin{pmatrix}
a_{11} & a_{12} & \cdots & a_{1n} \\
a_{21} & a_{22} & \cdots & a_{2n} \\
\vdots & \vdots & & \vdots \\
a_{m1} & a_{m2} & \cdots & a_{mn}
\end{pmatrix}
$$

称为线性方程组的<b>系数矩阵</b>

$$
\bar{\boldsymbol{A}} = \begin{pmatrix}
a_{11} & a_{12} & \cdots & a_{1n} & b_1 \\
a_{21} & a_{22} & \cdots & a_{2n} & b_2 \\
\vdots & \vdots & & \vdots & \vdots \\
a_{m1} & a_{m2} & \cdots & a_{mn} & b_m
\end{pmatrix}
\quad \left( \text{或记作} \quad \bar{\boldsymbol{A}} = \left( \begin{array}{c|c}
\boldsymbol{A} & \begin{matrix} b_1 \\ b_2 \\ \vdots \\ b_m \end{matrix}
\end{array} \right) \right)
$$

称为线性方程组的<b>增广矩阵</b>