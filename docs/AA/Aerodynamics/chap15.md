# Chap15 绕翼型可压缩流动

## 控制方程

前提：二维、无旋、定常、等熵

!!! formula "速度势方程"
    $$\left[1 - \frac{1}{a^2} \left(\frac{\partial \phi}{\partial x}\right)^2\right] \frac{\partial^2 \phi}{\partial x^2} + \left[1 - \frac{1}{a^2} \left(\frac{\partial \phi}{\partial y}\right)^2\right] \frac{\partial^2 \phi}{\partial y^2} - \frac{2}{a^2} \left(\frac{\partial \phi}{\partial x}\right) \left(\frac{\partial \phi}{\partial y}\right) \frac{\partial^2 \phi}{\partial x \partial y} = 0$$

$$a^2 = a_0^2 - \frac{\gamma - 1}{2} \left[ \left( \frac{\partial \phi}{\partial x} \right)^2 + \left( \frac{\partial \phi}{\partial y} \right)^2 \right]$$

亚声速：椭圆型方程
超声速：双曲型方程
跨声速：混合型方程

## 线化速度势方程

!!! formula "超声速/亚声速小扰动速度方程"
    $$\left(1 - M_{\infty}^{2}\right) \frac{\partial \hat{u}}{\partial x} + \frac{\partial \hat{v}}{\partial y} = 0$$

!!! formula "跨声速小扰动速度方程"
    $$\left[ 1 - M_{\infty}^{2} \left( 1 + (\gamma + 1) \frac{\hat{u}}{V_{\infty}} \right) \right] \frac{\partial \hat{u}}{\partial x} + \frac{\partial \hat{v}}{\partial y} = 0$$

压力系数

$$C_{p} = \frac{2}{\gamma M_{\infty}^{2}} \left( \frac{p}{p_{\infty}} - 1 \right)$$

$$C_p=-\frac{2\hat{u}}{V_{\infty}}$$

$$\frac{\partial \hat{\phi}}{\partial y}=V_{\infty}\tan \theta$$

## 可压缩方程

在物理空间和变换空间，扰流的翼型形状是相同的

### 亚声速机翼的气动特性

## 临界马赫数

$$C_{p,cr} = \frac{2}{\gamma M_{cr}^2} \left[ \left( \frac{1 + [(\gamma - 1) / 2]M_{cr}^2}{1 + (\gamma - 1) / 2} \right)^{\gamma/(\gamma - 1)} - 1 \right]$$

## 超临界翼型

## 线性化超音速流动控制方程

$$x^2 \frac{\partial^2 \hat{\phi}}{\partial x^2} - \frac{\partial^2 \hat{\phi}}{\partial y^2} = 0$$

$$C_p=\frac{2\theta}{\sqrt{M^2_{\infty}-1}}$$

线化超音速压力系数与当地表面与来流倾角成正比

## 线性化超音速流动理论的应用

在线性小扰动条件下，翼型弯度在超音速流动下不产生升力

在超音速线化小扰动条件下，翼型厚度不会产生升力

厚度部分显然不会对前缘力矩有贡献