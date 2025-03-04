# Chap4 积分变换法

## Fourier变换及其性质

### Fourier变换的形式导出及它的定义

**Fourier变换**

$$g(\lambda)=\int_{-\infty}^{\infty}f(t)e^{-i\lambda t}dt$$

**Fourier变换的逆变换**

$$F^{-1}[g]=\frac{1}{2\pi} g(\lambda)e^{i\lambda x}d\lambda$$

**反演公式**

$$F^{-1}[F[f]]=f(x)$$

#### Fourier变换的基本性质

1. 线性性质

$$F[\alpha_1 f_1 +\alpha_2 f_2]=\alpha_1 F[f_1$+\alpha_2 F[f_2$

2. 微分性质

若$\lim_{|x|\rightarrow +\infty}=0$，则

$$F[f^{\prime}(x)]=i\lambda F[f(x)]$$

若$\lim_{|x|\rightarrow +\infty} f^{(k)}(x)=0 \quad k=0,1,2...,n-1$，则

$$F[f^{n}(x)]=(i\lambda)^n F(f)$$

利用该性质以及线性性质，关于x作Flourier变换，可将常系数线性偏微分方程化为常微分方程

3. 卷积性质

$$f_1 * f_2(x)=\int_{-\infty}^{+\infty}f_1(x-t)f_2(t)dt$$

$$F[f_1 * f_2(x)]=F[f_1]\cdot F[f_2]$$

$$F[f_1 \cdot f_2]=\frac{1}{2\pi}F[f_1] * f[f_2]$$

4. 平移性质

$$F[f(x-a)] =e^{-i\lambda a}F[f]$$

$$F[e^{iax}f(x)]=F[f](\lambda-a)$$

5. 伸缩性质

$$F[f(kx)]=\frac{1}{|k|}F[f](\frac{\lambda}{k})$$

6. 乘子性质

$$F[x^mf(x)]=i^m \frac{d^m}{d \lambda^m}F[f](\lambda)$$

### $\delta$函数及它的Fourier变换

$$F[\delta(x)]=1$$

$$F[1]=2\pi\delta(\lambda)$$

## Fourier变换在求解偏微分方程初值问题中的应用

### 一维热传导方程的初值问题

### 一维波动方程的初值问题

### 应用Fourier变换求解边值问题

## Laplace变换及其性质

### Laplace变换的形式推导

1. 线性性质

2. 微分性质

3. 卷积性质

4. 伸缩性质

5. 平移性质

6. 乘子性质

### 存在定理

### Laplace变换的基本性质

## Laplace变换在求解偏微分方程定解问题中的应用