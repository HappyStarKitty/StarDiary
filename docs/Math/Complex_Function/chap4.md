# Chap4 级数

## 级数

### 复数项级数与幂级数

**幂级数的收敛半径**

$$lim_{n \rightarrow \infty}\lvert\frac{C_n}{C_{n+1}}\rvert=R$$

$$lim_{n\rightarrow \infty}\frac{1}{\sqrt[n]{\lvert X_n \rvert}}=R$$

### 台劳级数

**台劳定理**

设$f(z)$在以$z_0$为中心、$R$为半径的圆域$D=\{z;\lvert z-z_0 \rvert<R\}$ 内解析，于是$f(z)$在此圆内可以展开为幂级数

$$f(z)=\sum_{n=0}^{\infty}C_n(z-z_0)^n \quad (\lvert z-z_0\rvert<R)$$

其中系数

$$C_n=\frac{f^{(n)}(z_0)}{n!}=\frac{1}{2\pi i}\int_{C_r}\frac{f(s)}{(s-z_0)^{n+1}}ds \quad(n=0,1,2...)$$

当取$z_0=0$时，亦称麦克劳林级数

$f(z)=\sum_{n=0}{\infty}\frac{f^{(n)}(0)}{n!}z^n=f(0)+\frac{f^{\prime(0)}}{1!}z+...\frac{f^{(n)}(0)}{n!}z^n+... \quad(\lvert z \rvert <R )$

### 解析函数零点的孤立性及唯一性定理

### 罗朗级数

**罗朗定理**

设函数在以$z_0$为中心的圆环${R_1<\lvert z-z_0 \rvert <R_2}$ 内解析，则在此圆环内，函数可以展开成级数

$$f(z)=\sum_{n=-\infty}^{+\infty}C_n(z-z_0)^n \quad (\lvert z-z_0\rvert<R)$$

其中系数

$$C_n=\frac{1}{2\pi i}\oint_{C_R}\frac{f(\xi)}{(\xi-z_0)^{n+1}}d\xi$$

负幂部分称为主部，正幂部分称为解析部分
