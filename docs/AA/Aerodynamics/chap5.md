# Chap5 绕翼型不可压缩流动

## 翼型

### 几何参数

!!! definition "翼型几何参数"
    ![无法显示](figures/chap5/yixing.png)   

    翼型上下表面由一定形状的曲线连成
    
    - 前缘（Leading edge）：翼型的最前端点，可定义为，以后缘点为圆心画一圆弧，此弧和翼型的相切点
    - 后缘（Trailing edge）：翼型的最后端点
    - 弦线（Chord line）：翼型前后缘点的连线
    - 弦长（Chord length）：前后缘点之间的距离

    翼型的几何特点以弦线为基准线（x轴）来描述，上下翼面型线的方程可写为

    上表面：$y_u=y_u(x)$ 下表面：$y_l=y_l(x)$

    上下翼面y坐标之差的一般定义为翼型的厚度函数

    $$y_t(x)=\frac{1}{2} (y_u-y_l)$$

    翼型的弯度函数，即中弧线y坐标，为上下翼面y坐标之和的一半

    $$y_f(x)=\frac{1}{2}(y_u+y_l)$$

    - 厚度（Thickness）：$(y_u-y_l)$的最大值
    - 弯度（Camber）：中弧线上最高点的y向坐标
    - 中弧线（Mean chamber line）：上下翼面y向高度中点的连线

    相对厚度：$\bar{\tau}=\frac{t}{c}=\frac{2y_{t \max}}{c}$

    相对弯度：$\bar{f}=\frac{f}{c}=\frac{y_{f \max}}{c}$

### NACA翼型

!!! note "NACA翼型系列"
    NACA（美国国家航空咨询委员会，National Advisory Committee for Aeronautics）系列低速翼型

    - 四数字，NACA2412
        + 第一位：最大弯度相对弦长的百分数
        + 第二位：最大弯度沿弦线距前缘的距离相对弦长的十分数
        + 最后两位：最大弯度与相对弦长的百分数

    - 五数字，NACA23012
        + 第一位：乘以0.15为设计升力系数
        + 第二、三位：除以2为最大弯度沿弦线距前缘的距离相对弦长的百分数
        + 最后两位：最大厚度与相对弦长的百分数

### 气动特性

!!! note "气动特性"
    ![无法显示](figures/chap5/qdtx.png)

    - 升力：与重力方向相反的气动力分量
    - 升力系数：$c_l=\frac{F_1}{\frac{1}{2}\rho_\infty V_\infty^2 c}$
    - 阻力系数：$c_d=\frac{F_d}{\frac{1}{2}\rho_\infty V_\infty^2 c}$
    - 升力线斜率：$a$
    - 最大升力系数：$c_{l,\max}$
    - 攻角：$\alpha$
    - 零升力攻角：$\alpha_{L=0}$
    - 气动中心（焦点）：气动力矩不随迎角变化的点，称为翼型的气动中心
    
## 面涡理论

面涡由无限多的涡丝构成，涡丝与展向平行

穿过面涡的当地切向速度改变量等于当地面涡强度

!!! info "计算无粘不可压缩翼型绕流的一般步骤"
    1. 用强度为$\gamma(s)$的涡面替换翼型
    2. 找到合适$\gamma(s)$的分布使得流动满足边界条件以及对实际的物理现象相符
        - 翼型表面为流线，尾缘为驻点（库塔条件）
    3. 计算翼型的环量，并由茹科夫斯基定理求解升力
## 开尔文环量定理和起动涡

从尾缘脱落的涡称为起动涡
保持在翼型上的涡量称为附着涡
如果翼型立即停止，附着涡也随即脱落下去形成停止涡

## 库塔条件

具有尖锐后缘物体在粘性流体中运动时，会产生一个适当强度的绕物体环量，其环量大小刚好使得物体的后缘点为流动的驻点

若尾缘夹角为有限大小，则尾缘为后驻点

$$V_{\text{upper}}=V_{\text{lower}}=0$$

若尾缘夹角夹角为0，则流体沿上下表面流过后缘的速度为相等的有限值

$$V_{\text{upper}}=V_{\text{lower}}$$

库塔条件用面涡强度分布表述

$$\gamma_{\text{TE}}=V_{\text{upper}}-V_{\text{lower}}=0$$

## 薄翼理论

涡元仅分布在中弧线上，即上下涡面重合

中弧线应为一条流线

均匀来流与面涡诱导流场叠加

要求在尾缘满足库塔条件则$\gamma_{\text{TE}}=0$

速度关系：$V_{\infty,n}+w' (s)=0$

$V_{\infty,n}$：自由来流在中弧线的法向速度

$w'(s)$：涡面在中弧线上的法向诱导速度

!!! formula "薄翼理论基本公式"
    $$\frac{1}{2\pi}\int_{0}^c \frac{\gamma(\xi)\mathrm{d}\xi}{(x-\xi)}=V_{\infty}(\alpha-\frac{\mathrm{d}z}{\mathrm{d}x})$$

对称翼型

$$\boxed{\gamma(\theta)}=2\alpha V_{\infty} \frac{(1+\cos \theta)}{\sin \theta}$$

!!! proof "有弯度的翼型"
    1. 求解涡强分布

    2. 求解涡面环量

    3. 求解单位展长升力

    4. 求解单位展长升力力矩

    5. 求解压力中心

    $$x_{cp}=\frac{c}{4}[1+\frac{\pi}{c_l}]$$

!!! summary "薄翼气动特性"
    - 对称翼型
        + 升力系数与几何迎角成正比，升力线斜率为$2\pi$
        + 零升力迎角为0
        + 压力中心与气动中心都在1/4弦线处
    - 有弯度翼型
        + 升力系数

            $$c_l=2\pi (\alpha-\alpha_{L=0})$$
        + 零升力迎角
            $$\alpha_{L=0}=-\frac{1}{\pi}\int_0^\pi \frac{\mathrm{d}z}{\mathrm{d}x}(\cos \theta_0-1)\mathrm{d}\theta$$

## 涡面元法

涡面元法：求解任意形状翼型绕流的数值方法

![无法显示](figures/chap5/womianyuan.png)

1. 将涡面离散近似为一系列直板的涡面元

每段面元上的强度为常数分别为$\gamma_1、\gamma_2,...\gamma_n$，则第j段面元在P点诱导的速度势函数为

$$\Delta \phi_j =-\frac{1}{2\pi}\int_j \theta_{pj}\gamma_j \mathrm{d}s_j$$

$$\theta_{pj}=\tan^{-1}\frac{y-y_j}{x-x_j}$$

2. 求速度势函数

所有面元在P点诱导的速度势函数为

$$\phi(P)=\sum_{j=1}^n \Delta \phi_j=-\sum_{j=1}^{n} \frac{\gamma_j}{2\pi}\int_j \theta_{pj}\mathrm{d}s_j$$

所有面元在第i个面元控制点诱导的速度势函数为

$$\phi (x_i,y_i)=-\sum_{j=1}^{n} \frac{\gamma_j}{2\pi} \int_j \theta_{ij}\mathrm{d}s_j$$

$$\theta_{ij}=\tan^{-1}\frac{y_i-y_j}{x_i-x_j}$$

3. 应用边界条件

$$V_{\infty,n}+V_n=0$$

$$\boxed{V_\infty \cos \beta_i-\sum_{j=1}^n \frac{\gamma_j}{2\pi}J_{i,j}=0}$$

4. 在尾缘应用库塔条件

$$\gamma(TE)=0$$

$$\boxed{\gamma_i+\gamma_{i-1}=0}$$

为n个未知数，n+1个方程，为一个超定系统。

可选择3）中去掉一个方程，然后与4）的条件构成一个n个未知数，n个方程的线性系统

5. 求解线性方程组，得到

$$\gamma_1、\gamma_2,...\gamma_n$$

6. 翼型内部速度为0，则表面切向速度为

$$y_i=u_i^{\text{out}}-u_i^{\text{in}}=u_i^{\text{out}}$$

7. 由伯努利方程求解表面压力分布以及压力系数

8. 绕翼型的总环量

$$\Gamma=\sum_{i=1}^n \gamma_i s_i$$

单位展长的升力

$$L=\rho_{\infty}V_{\infty}\sum_{i=1}^n \gamma_i s_i$$