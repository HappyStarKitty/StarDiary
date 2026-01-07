# Chap9 拉普拉斯变换

## 拉普拉斯变换

!!! definition "拉普拉斯变换"
    信号x(t)的拉普拉斯变换定义为

    $$X(s)=\int_{-\infty}^\infty x(t)e^{-st} \mathrm{d}t$$

!!! note "拉氏变换和傅氏变换的关系"
    当$s=\mathrm{j}\omega $

    $$X(\mathrm{j}\omega)=\int_{-\infty}^\infty x(t)e^{-\mathrm{j} \omega t}\mathrm{d}t$$

    即为$x(t)$的傅里叶变换

    $$X(s)|_{s=\mathrm{j}\omega}=\mathcal{F}\{x(t)\}$$

    当$s$不为纯虚数时，将$s$记为$s=\sigma+\mathrm{j}\omega$

    $$X(\sigma +\mathrm{j}\omega)=\int_{-\infty}^{+\infty} x(t)e^{(\sigma+\mathrm{j}\omega)} \mathrm{d}t$$

    或者

    $$X(\sigma+\mathrm{j}\omega)=\int_{-\infty}^{+\infty} [x(t)e^{-\sigma t}]e^{-\mathrm{j}\omega t}\mathrm{d}t=\mathcal{F}\{ x(t)e^{-\sigma t}\}$$

## 拉普拉斯变换收敛域

!!! note "性质"
    1. X(s)的收敛域在s平面内由平行于jω轴的带状区域所组成
    2. 对有理拉普拉斯变换来说，收敛域内不包含任何极点
    3. 如果x(t)是有限持续期，并且是绝对可积的，那么收敛域就是整个s平面
    4. 如果x(t)是右边信号，并且$Re\{s\}=\sigma_0$这条线位于收敛域内，那么$Re\{s\}>\sigma_0$的全部s值都一定在收敛域内
    5. 如果x(t)是左边信号，并且$Re\{s\}=\sigma_0$的全部s值也一定在收敛域内
    6. 如果x(t)是双边信号，并且$Re{s}=\sigma_0$这条线位于收敛域内，那么收敛域就一定由s平面的一条带状区域组成，直线$Re{s}=\sigma_0$位于带中
    7. 如果X(t)的拉普拉斯变换X(s)是有理的，那么它的收敛域是被极点所界定的或延伸到无限远。另外，在收敛域内不包含X(s)的任何极点
    8. 如果x(t)的拉普拉斯变换X(s)是有理的，那么若x(t)是右边信号，则其收敛域在s平面上位于最右边极点的左边；若x(t)是左边信号，则其收敛域在s平面上位于最左边极点的左边

## 拉普拉斯逆变换

!!! formula "拉普拉斯逆变换"
    $$\boxed{x(t)=\frac{1}{2\pi \mathrm{j}}\int_{\sigma-\mathrm{j}\infty}^{\sigma+\mathrm{j} \infty} X(s)e^{st} \mathrm{d}t}$$

## 由零-极点图对傅里叶变换进行几何求值

## 拉普拉斯变换的性质

## 常用拉普拉斯变换对

## 用拉普拉斯变换分析与表征线性时不变系统

## 系统函数的代数属性与方框图表示

## 单边拉普拉斯变换