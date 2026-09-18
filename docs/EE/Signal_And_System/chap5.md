# Chap5 离散时间傅里叶变换

## 离散时间傅里叶变换

!!! formula "离散时间傅里叶变换"
    综合公式

    $$x[n]=\frac{1}{2\pi} \int_{2\pi} X(e^{j\omega})e^{j\omega n} \mathrm{d}\omega$$

    分析公式

    $$X(e^{j\omega})=\sum_{n=-\infty}^{+\infty} x[n]e^{-j\omega n}$$

DFT矩阵

$$\begin{bmatrix}X_0 \\ X_1 \\ X_2 \\ ... \\ X_{N-1}\end{bmatrix}=\frac{1}{N} \begin{bmatrix} 1 & 1 & 1 & ... & 1 \\ 1 & \omega_N & \omega_{N}^2 & ... & \omega_N^{N-1}\\ ... \\ 1 & \omega_N^{N-1} & \omega_N^{2(N-1)} & ... & \omega_N^{(N-1)^2}\end{bmatrix}\begin{bmatrix}x_0 \\ x_1 \\ x_2 \\ ... \\ x_{N-1}\end{bmatrix}$$

## 周期信号的傅里叶变换

## 离散时间傅里叶变换性质

### 线性性质

## 卷积性质

## 相乘性质

## 对偶性