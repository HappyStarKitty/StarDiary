# Note

!!! hint 雅可比行列式
      $$\frac{\partial (x,y)}{\partial (u,v)}=\left|\begin{array}{cccc}\frac{\partial x}{\partial u} & \frac{\partial x}{\partial v} \\ \frac{\partial y}{\partial u} & \frac{\partial y}{\partial v}
    \end{array}\right|$$

傅里叶级数

$$
\frac{a_0}{2}+\sum_{n=1}^{+\infty}(a_n \cos \frac{n\pi x}{l}+b_n \sin \frac{n\pi x}{l})
$$

$$
\left\{
\begin{aligned}
a_n=\frac{1}{l}\int_{-l}^{l} f(x)\cos\frac{n\pi x}{l}dx, \quad n=0,1,2... \\
b_n=\frac{1}{l}\int_{-l}^{l} f(x)\sin\frac{n\pi x}{l}dx, \quad n=1,2,3...
\end{aligned}
\right.
$$

高斯公式

$$\oiint_S F\cdot dS=\iiint_V \nabla \cdot F dV$$

梯度公式

$$\oiint_S p dS=\iiint_V \nabla pdV$$

散度

$$\nabla \cdot A=\frac{\partial A_x}{\partial x}+\frac{\partial A_y}{\partial y}+\frac{\partial A_z}{\partial z}, A=A_x i + A_y j + A_zk$$

梯度

$$\nabla p=\frac{\partial p}{\partial x}i+\frac{\partial p}{\partial y}j+\frac{\partial p}{\partial z}k, p=p(x,y,z)$$

旋度

$$\nabla \times A=\left|\begin{array}{cccc}i & j & k \\
\frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\
A_x & A_y & A_z\end{array}\right|$$

!!! note 速度散度
    $$\nabla\cdot V=\frac{1}{\partial V}\frac{D(\partial V)}{Dt}=\frac{\partial u}{\partial x}+\frac{\partial v}{\partial y}+\frac{\partial w}{\partial z}$$

    速度散度表示单位体积的运动流体微元的体积随时间的变化率
    
![无法显示](figures/tdsdxd.png)

环量

$$\Gamma=-\oint_C V \cdot \mathcal{d}s$$