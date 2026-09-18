# Chap7 线性空间

## 运算的刻画

!!! definition "笛卡尔积"
    设 $X, Y$ 是两个非空集合，任取 $x \in X$，$y \in Y$，称 $(x, y)$ 为一个有序元素对. 称集合 $\{(x, y) \mid \forall x \in X, \forall y \in Y\}$ 为 $X$ 与 $Y$ 的一个**直积**或 **Descartes**（笛卡儿）**积**，通常记作

    $$
    X \times Y = \{(x, y) \mid \forall x \in X, \forall y \in Y\}.
    $$

## 线性空间的定义

## 向量组的线性关系

!!! definition "线性组合"
    设 $c_1, c_2, \cdots, c_s$ 为 $\mathbb{P}$ 中的 $s\ (s < +\infty)$ 个数，$\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ 为数域 $\mathbb{P}$ 上的线性空间 $V$ 中的一个向量组，称 $c_1\boldsymbol{\alpha}_1 + c_2\boldsymbol{\alpha}_2 + \cdots + c_s\boldsymbol{\alpha}_s$ 为向量组 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ 的一个**线性组合**



!!! definition "线性表示" 
    设 $\boldsymbol{\beta}, \boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ 为数域 $\mathbb{P}$ 上的线性空间 $V$ 中的一个向量组，若存在 $\mathbb{P}$ 中的 $s$ 个数 $c_1, c_2, \cdots, c_s$，使得

    $$
    \boldsymbol{\beta} = c_1\boldsymbol{\alpha}_1 + c_2\boldsymbol{\alpha}_2 + \cdots + c_s\boldsymbol{\alpha}_s,
    $$

    则称 $\boldsymbol{\beta}$ 可经 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ **线性表示**或**线性表出**，称 $c_1, c_2, \cdots, c_s$ 分别为 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ 的系数

!!! definition "线性相关"
    设 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s\ (s < +\infty)$ 是数域 $\mathbb{P}$ 上的线性空间 $V$ 中的一个向量组，若存在 $\mathbb{P}$ 中不全为零的数 $c_1, c_2, \cdots, c_s$，使得

    $$
    c_1\boldsymbol{\alpha}_1 + c_2\boldsymbol{\alpha}_2 + \cdots + c_s\boldsymbol{\alpha}_s = \boldsymbol{\theta}
    $$

    则称向量组 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ **线性相关**，也称 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ 是 $V$ 中的一个线性相关的向量组

    若当且仅当 $c_1, c_2, \cdots, c_s$ 全为零时才成立，则称向量组 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ **线性无关**，也称 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ 是 $V$ 中的一个线性无关的向量组

## 向量组的线性表示及等价

## 极大线性无关组与向量组的秩

!!! definition "极大线性无关组"
    设 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s\ (s < +\infty)$ 是数域 $\mathbb{P}$ 上的线性空间 $V$ 中某向量组 $\mathcal{S}$ 的一个部分组. 如果 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ 线性无关，且向量组 $\mathcal{S}$ 可经 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ 线性表示，那么称 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_s$ 为向量组 $\mathcal{S}$ 的一个**极大线性无关组**

## 维数、基、坐标

!!! definition "基"
    若 $\dim V = n\ (1 \leqslant n < +\infty)$，$\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_n$ 为 $V$ 的一个极大线性无关组，则称 $\boldsymbol{\alpha}_1, \boldsymbol{\alpha}_2, \cdots, \boldsymbol{\alpha}_n$ 的任意一种排列为 $V$ 的一个（或一组）**基**

## 基之间的过渡矩阵 坐标变换

## 子空间