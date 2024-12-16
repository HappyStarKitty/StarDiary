# 光学篇

!!! note 概要
    本篇是大学物理（甲）光学篇的CheetSheet。
    光学注重推导和应用，需要掌握基本模型。

## Chap16 光的干涉

### 相干光

相干光波的获得：
- 分波阵面法：杨氏双缝干涉
- 分振幅法：

### 双缝干涉

**明纹中心位置**

$$
x=\pm \frac{D}{d}k\lambda \quad k=0,1,2...
$$

**暗纹中心位置**

$$
x=\pm \frac{D}{d}(2k-1)\frac{\lambda}{2} \quad k=1,2...
$$

半波损失：光从光疏介质入射到光密介质的界面，反射光相位发生$\pi$的突变，即光程相差半个波长

### 薄膜干涉

!!! note 解题步骤
    1. 求出光程差
    2. 根据相干条件求解

$$
\Delta \varphi = \frac{2\pi}{\lambda}(n_2r_2-n_1r_1)=\frac{2\pi}{\lambda}\delta
$$

**等倾干涉**

**劈尖膜干涉**

$$
\delta=2ne+\frac{\lambda}{2}=
\left\{
\begin{aligned}
k\lambda \quad k=1,2,3... 明纹 \\
(2k+1)\frac{\lambda}{2} \quad k=0,1,2... 暗纹
\end{aligned}
\right.
$$

**牛顿环**

空气层厚度

$$
e\approx \frac{r^2}{2R}
$$

明环半径

$$
r=\sqrt{(k-\frac{1}{2})R\lambda}
$$

暗环半径

$$
r=\sqrt{k\lambda R}
$$

### 干涉现象的应用

增透膜：使反射光干涉后减弱
高反射膜：使反射光干涉后加强

### 迈克耳孙干涉仪

### 时间相干性 空间相干性

**相干长度**

$$
L_c=\frac{\lambda^2}{\Delta \lambda}
$$

**相干间隔**

$$
d=\frac{D^\prime}{a}\lambda
$$

## Chap17 光的衍射

### 衍射现象

菲涅尔衍射

夫琅禾费衍射

### 惠更斯——费涅耳原理

### 单缝夫琅禾费衍射

**中央明纹中心**

$$
\theta=0
$$

**暗纹中心**

$$
a\sin\theta=\pm2k\frac{\lambda}{2} \quad k=1,2,3...
$$

**明纹中心**

$$
a\sin\theta = \pm (2k+1)\frac{\lambda}{2} \quad k=1,2,3...
$$

**半角宽度**

$$
\Delta \theta_0 =\frac{\lambda}{a}
$$

当入射光和衍射光位于法线两侧，将$\sin \theta$换为$\sin\theta -\sin i$；位于法线同侧，将$\sin\theta$换为$\sin\theta + \sin i$

### 光栅衍射

**光栅方程**

$$
d\sin\theta =\pm k\lambda \quad k=0,1,2,...
$$

**暗纹方程**

$$
Nd\sin\theta=\pm k^\prime \lambda
$$

式中$k^\prime=0,1,2,...$且$k^\prime \ne kN$

**缺级**

$$
k_2=\frac{d}{a}k_1 \quad k_1=1,2,...
$$

**分辨本领**

$$
R=\frac{\lambda}{\Delta \lambda}=kN
$$

### 圆孔衍射 光学仪器的分辨本领

**圆孔夫琅禾费衍射**

$$
\theta_0=1.22\frac{\lambda}{D}
$$

**光学仪器的最小分辨角**

$$
\theta_{\min}=\theta_0=1.22\frac{\lambda}{D}
$$

$$
R=\frac{1}{\theta_{\min}}=\frac{D}{1.22\lambda}
$$

### X射线在晶体上的衍射

**布喇格公式**

$$
2d\sin\theta=k\lambda \quad k=1,2...
$$

### 全息照相

## Chap18 光的偏振

### 偏振光和自然光

横波具有偏振现象，纵波没有

### 起偏和检偏 马吕斯定理

**马吕斯定理**

$$
I=I_0 \cos^2 \alpha
$$

### 反射和折射时的偏振现象 布儒斯特定律

**布儒斯特定律**

$$
\tan i_0=\frac{n_2}{n_1}
$$

此时，反射光成为线偏振光，其振动方向垂直入射面，而折射光为具有最大偏振化程度的部分偏振光

### 光的双折射

o光：寻常光线，服从折射定律
e光：非常光线，不服从折射定律

**四分之一波片**

$$
d_{\frac{1}{4}}=\frac{\lambda}{4|n_o-n_e|}
$$

**二分之一波片**

$$
d_{(\frac{1}{2})}=\frac{\lambda}{2|n_o-n_e|}
$$

### 椭圆偏振光

### 偏振光的干涉及其应用

### 人工双折射

### 旋光现象

## Chap19 几何光学

### 几何光学基本定律

**费马原理**

$$
\delta \int_A^B ndr =0
$$

**斯涅耳定律**

$$
n_1 \sin i = n_2 \sin r
$$

### 全内反射

$$
\sin \theta_c = \frac{n_2}{n_1} \quad n_1>n_2
$$

### 反射成像

**平面镜反射成像**

$$
S = -S^\prime
$$

**球面镜反射成像**

$$
\frac{1}{S} + \frac{1}{S^\prime} = \frac{1}{f}
$$

$$
m=\frac{y^\prime}{y}
$$

m: 横向放大率

**符号法则**

- 物距
- 像距
- 球面曲率半径
- 垂直于轴的线段：

### 单球面折射成像

**单个折射球面成像的高斯公式**

$$
\frac{n_1}{S}+\frac{n_2}{S^\prime}=\frac{n_2-n_1}{R}
$$

折射界面凸向物体时R为正，反之为负

### 薄透镜

**薄透镜公式**

$$
\frac{1}{S}+\frac{1}{S^\prime}=\frac{1}{f}
$$

$$
m=-\frac{S^\prime}{S}
$$

**磨镜者公式**

$$
\frac{1}{f}=(n-1)(\frac{1}{R_1}-\frac{1}{R_2})
$$

### 光学器件

