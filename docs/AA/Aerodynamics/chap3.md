# Chap3 流体静力学

## 流体静力学基本概念

绝对静止：流体相对于惯性坐标系静止

相对静止：流体相对于非惯性参考坐标系静止

静止状态，流体不存在切应力，只存在压应力-压强

### 静压强的特性

!!! note "静压强的特性"
    流体静压力：流体单位面积上所受到的垂直于该表面的力，即物理学的压强，简称压力

    静压力沿着作用面的内法线方向，即垂直地指向作用面

    静止流体中任何一点上各个方向的静压力大小相等，与作用方向无关，只与空间位置有关

### 流体静力学方程

!!! formula "控制方程"
    积分形式

    $$\int_V (\rho \mathbf{f}-\nabla p)\mathrm{d}V=0$$

    微分形式

    $$\rho \mathbf{f}-\nabla p=0$$

!!! proof "欧拉静平衡方程推导"
    ![无法显示](figures/chap3/jph.png)

    考察一个正交六面体流体微团，由于微团处于平衡状态，其受到的合力为零

    左、右侧微元面上受到的压力分别为

    $$(p-\frac{\partial p}{\partial x}\frac{\mathrm{d}x}{2})\mathrm{d}y\mathrm{d}z,-(p+\frac{\partial p}{\partial x}\frac{\mathrm{d}x}{2})\mathrm{d}y\mathrm{d}z$$

    微团受到x方向的质量力为

    $$\rho f_x \mathrm{d}x\mathrm{d}y\mathrm{d}z$$

    即有

    $$\frac{\partial p}{\partial x}=\rho f_x$$

    写成矢量形式

    $$\nabla p=\rho \mathbf{f}$$  

<b>压力梯度</b>（不是压力）使得重力和（或）运动加速得到平衡

对静止流体，压力梯度和重力平衡

$$\boxed{\nabla p = \rho \vec{g}}$$

取z轴为垂直方向

$$\vec{g}=-g\vec{k}$$

压力梯度变为

$$\frac{\partial p}{\partial z}=-\rho g = -\gamma$$

其中，$\gamma=\rho g$称为比重，即有

$$\boxed{p_2-p_1=-\int_1^2 \gamma \mathrm{d}z}$$

### 匀加速运动容器中流体的相对平衡

!!! formula "静压力分布规律"
    $$p=p_0 -\rho (ax+gz)$$

!!! formula "等压面方程"
    $$ax+gz_s=0$$

### 等角速旋转容器中流体的相对平衡

![无法显示](figures/chap3/xuanzhuan.png)

!!! formula "静压力分布规律"
    $$\mathrm{d}p=\rho(\omega^2 x \mathrm{d}x+\omega^2y\mathrm{d}y -g\mathrm{d}z)$$

    积分得

    $$p=\rho (\frac{\omega^2x^2}{2}+\frac{\omega^2 y^2}{2}-gz)+c$$

    $$\boxed{p=p_0+\rho g(\frac{\omega^2 r^2}{2g}-z)}$$

!!! formula "等压面方程"
    $$\boxed{\frac{\omega^2 r^2}{2}-gz=C}$$

    说明等压面是一族绕z轴的旋转抛物面

## 作用于平面上的压力

压力中心（Center of Pressure, cp）：翼型上下表面气动力的作用点，又称压心。当参考点取压力中心时，力矩为零

考察在流体中浸没的一块任意形状平板

$$F=p_a A+\gamma h_{CG}A=(p_A+\gamma h_{CG})A=p_{CG}A$$

在均匀流体中，施加在平板一侧的静力学压力等于平板重心处的压力与平板面积的乘积，与其形状与朝向无关

压力中心$(x_{CP},y_{CP})$一般不在平板重心上

$$x_{CP}=-\gamma \sin \theta \frac{I_{xy}}{p_{CG} A}$$

$$y_{CP}=-\gamma \sin \theta \frac{I_{xy}}{p_{CG} A}$$

## 作用于曲面上的压力

水平分力$P_x$等于作用于该曲面的铅垂投影面上的静水总压力，方向水平指向受力面

垂直分力$P_z$等于该曲面上的压力体所包含的液重，其作用线通过压力体的形心，方向垂直指向受力面

## 浮力

!!! theorem "阿基米德定律"
    浮力的大小等于物体排开液体的重量，方向垂直向上；浮力的作用点称为浮心，位于排开液体的形心

## 标准大气模型

假设：大气为理想气体；大气满足流体静力学平衡方程