# Chap11 级数

## 数项级数的基本概念

几何级数：

$$\sum_{n=1}^{\infty}aq^{n-1}(a\ne0)$$

当$|q|<1$时收敛，其和为$\frac{a}{1-q}$；当$|q|\ge1$时发散

p级数：

$$\sum_{n=1}^{\infty}\frac{1}{n^p}$$

当$p>1$时收敛；当$p\le1$时发散；$p=1$时，该级数又称为调和级数

## 正项级数敛散性的判别法

!!! info "判别法"
    - 积分判别法

    设$f(x)$在$[1,\infty)$上是非负且递减的连续函数，设$u_n=f(n),n=1,2,3,...$，则该级数$\sum_{n=1}^\infty u_n$与反常积分$\int_1^{+\infty}f(x)$的敛散性相同

## 一般级数收敛性的判别法

### 交错级数

交错级数：$\sum_{n=1}^\infty (-1)^{n-1}u_n(u_n>0)$

!!! theorem "莱布尼茨公式"
    若有交错级数$\sum_{n=1}^\infty (-1)^{n-1}u_n(u_n>0)$满足下列条件：

    - $u_1\ge u_2 \ge u_3\ge...$
    - $\lim_{n\rightarrow \infty}{u_n}=0$

    则$\sum_{n=1}^\infty (-1)^{n-1}u_n$收敛，且它的和$S<u_1$

### 绝对收敛级数与条件收敛级数

!!! theorem "定理"
    若$\sum_{n=1}^\infty |u_n|$收敛，则$\sum_{n=1}^\infty u_n$收敛

设$\sum_{n=1}^\infty u_n$为一般级数

- 若$\sum_{n=1}^\infty |u_n|$收敛，称$\sum_{n=1}^\infty$绝对收敛

- 若$\sum_{n=1}^\infty |u_n|$发散，称$\sum_{n=1}^\infty$条件收敛

## 幂级数及其和函数

!!! theorem "阿贝尔定理"
    - 若级数$\sum_{n=0}^\infty a_nx^n$在$x=x_0(x_0\ne 0)$处收敛，则满足$|x|<|x_0|$的一切$x$都使该幂级数绝对收敛
    - 若级数$\sum_{n=0}^{\infty}a_nx^n$在$x=x_0(x_0\ne 0)$处发散，则满足$|x|>|x_0|$处的一切$x$都使该幂级数发散

!!! theorem "定理：柯西-阿达玛公式"