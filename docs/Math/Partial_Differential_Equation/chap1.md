# Chap1 方程的导出和定解问题

### 方程的导出

**波动方程**

$$
u_{tt}=a^2 \Delta u 
$$

$$
u_{tt} = a^2 \Delta u +f(x,t)
$$

**热传导方程**

$$
u_t=a^2\Delta u
$$

$$
u_t=a^2 \Delta u + f(x,y,z,t)
$$

**调和方程**

Laplace方程

$$
\Delta u=0
$$

Poission方程

$$
\Delta u =f(x,y,z)
$$

### 定解条件和定解问题

**边界条件**

第Ⅰ类边界条件

$$
u|_{x=0} \equiv u(0,t)=f_1(t)
$$

$$
u|_{x=l} \equiv u(l,t)=f_2(t)
$$

第Ⅱ类边界条件

$$
\frac{\partial u}{\partial n}|_{x=l} = g(t)
$$

第Ⅲ类边界条件

$$
(\frac{\partial u}{\partial n}+ \mu u)|_{x=t}=f(t)
$$

**初始条件**

定解条件：初始条件，边界条件统称为定解条件

边值问题：边界条件和方程组成的边值问题

初值问题：初始条件和方程组成的定解问题

混合问题：既有初始条件又有边界条件的定解问题

定解问题的适定性：解的存在性、唯一性和连续依赖性

### 二阶线性方程的分类和叠加原理

**二阶线性方程**

$$
au_{xx}+2bu_{xy}+cu_{yy}+du_{x}+eu_{y}+fu=g
$$

**特征方程**

$$
a(\frac{dy}{dx})^2 -2b\frac{dy}{dx}+c=0
$$

相应的积分曲线称为特征线

$$\Delta=b^2-ac$$

**双曲型方程**

$\Delta>0$

$$
u_{ss}-u_{tt}=H_2(s,t,u,u_s,u_t)
$$

**抛物型方程**

$\Delta=0$

$$
u_{\eta\eta}=H_3(\xi,\eta,u,u_\xi,u_\eta)
$$

**椭圆型方程**

$\Delta<0$

$$
u_{ss}+u_{tt}=H_4(s,r,u,u_s,u_r)
$$

!!! note 二阶线性偏微分方程的化简
    1. 求特征方程
    2. 求特征线
    3. 作替换化简


**线性方程的叠加原理**
