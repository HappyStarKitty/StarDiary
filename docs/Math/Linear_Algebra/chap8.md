# Chap8 欧氏空间

## 欧氏空间的定义及其简单性质

## 标准正交基

!!! theorem "定理"
    任取 $n$ 维欧氏空间 $V$ 的一个基 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_n$，令

    $$
    \begin{cases}
    \boldsymbol{\beta}_1 = \boldsymbol{\alpha}_1, \\
    \boldsymbol{\beta}_k = \boldsymbol{\alpha}_k - \dfrac{(\boldsymbol{\alpha}_k, \boldsymbol{\beta}_1)}{(\boldsymbol{\beta}_1, \boldsymbol{\beta}_1)}\boldsymbol{\beta}_1 - \dfrac{(\boldsymbol{\alpha}_k, \boldsymbol{\beta}_2)}{(\boldsymbol{\beta}_2, \boldsymbol{\beta}_2)}\boldsymbol{\beta}_2 - \cdots - \dfrac{(\boldsymbol{\alpha}_k, \boldsymbol{\beta}_{k-1})}{(\boldsymbol{\beta}_{k-1}, \boldsymbol{\beta}_{k-1})}\boldsymbol{\beta}_{k-1}, \quad 2 \leqslant k \leqslant n,
    \end{cases} 
    $$

    则 $\boldsymbol{\beta}_1, \boldsymbol{\beta}_2, \cdots, \boldsymbol{\beta}_n$ 是 $V$ 的一个正交基，且

    $$
    L(\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_i) = L(\boldsymbol{\beta}_1, \boldsymbol{\beta}_2, \cdots, \boldsymbol{\beta}_i), \quad i = 1, 2, \cdots, n. 
    $$

    通常，称以上式所形成的构造正交基的过程为 **Schmidt** 正交化过程.