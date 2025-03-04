# 常微分方程

## 一阶线性ODE


$$\frac{dy}{dx}+P(x)y=Q(x)$$

$Q(x)=0$时称为齐次线性方程，反之为非其次线性方程

!!! note 解答
    1. 求齐次线性方程的通解（分离变量法）

    $$\frac{dy}{dx}+P(x)y=0$$

    $$\frac{dy}{y}=-P(x)dx$$

    $$ln|y|=-\int P(x)dx+C$$

    $$y=Ce^{-\int P(x)dx}$$

    2. 求非齐次线性方程的通解（常数变易法）

    - 假设$y=u(x)e^{-\int P(x)dx}$是非齐次线性方程的通解

    - 代入原方程，得$u^{\prime}(x)e^{-\int  P(x)dx}= Q(x)$

    - 可得$u(x)=\int Q(x)e^{\int P(x)}dx+C$

    - 故通解为$y=e^{-\int P(x)dx}(\int Q(x)e^{\int P(x)dx}dx+C)$


## 二阶

$$
y^{\prime\prime}+py^{\prime}+qy=0
$$

$p^2-4q>0$，有两根$r_1 \ne r_2$

$$
y=C_1 e^{r_1 x}+C_2 e^{r_2 x}
$$

$p^2-4q=0$，有两根$r_1=r_2=r$

$$
y=(C_1+C_2 x)e^{rx}
$$

$p^2-4q<0$，有两复根$r_{1,2}=\alpha+i \beta$

$$
y=e^{\alpha x}(C_1 \cos \beta x+ C_2 \sin \beta x)
$$

## 欧拉方程


