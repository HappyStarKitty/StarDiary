# Chap14 准一维流动理论

## 准一维流的控制方程

!!! formula "控制方程"
    连续方程
    
    $$\rho_1u_1A_1=\rho_2u_2A_2$$

    动量方程

    $$p_1A_1+\rho_1u_1^2A_1+\int_{A_1}^{A_2}p\mathrm{d}A=p_2A_2+\rho_2u_2^2A_2$$

    能量方程

    $$h_1+\frac{u_1^2}{2}=h_2+\frac{u_2^2}{2}$$

!!! formula "准一维流动控制方程微分形式"
    $$\mathrm{d}(\rho uA)=0$$

    $$\mathrm{d}p=-\rho u \mathrm{d}u$$

    $$\mathrm{d}h+u\mathrm{d}u=0$$

!!! caution "注意"
    准一维流动和真正一维流动的区别
    真正一维流动连续方程为：

    $$\mathrm{d}(\rho u)=0$$

!!! formula "面积速度关系式"
    $$\frac{\mathrm{d}A}{A}=(M^2-1)\frac{\mathrm{d}u}{u}$$

    - 要使亚音速流加速（减速），必须使流管面积减少（增加）
    - 要使超音速流加速（减速），必须使流管面积增加（减少）
    - 音速流动只能出现在喉道或最小流管面积处

!!! formula "等熵流动"
    过管道的完全气体等熵流动由下式决定

    $$(\frac{A}{A^*})^2=\frac{1}{M^2}[(\frac{2}{\gamma+1})(1+\frac{\gamma-1}{2}M^2)]^{(\gamma+1)/(\gamma-1)}$$

对于给定的收缩-扩张管道，只存在一种可能的等熵超音速流动；相反，存在无数多种亚音速等熵解，每一种解对应不同的入口出口压力比，

在超音速风洞中，第二喉道与第一喉道的比可由下式决定

$$\frac{A_{t,2}}{A_{t,1}}=\frac{p_{0,1}}{p_{0,2}}$$

如果$A_{t,2}$低于此值，扩压段将发生壅塞，风洞不能启动
## 准一维流动的面积-马赫数关系式

## 扩压器

## 超音速风洞

## Fanno流动，摩擦管流

考虑摩擦情况下的管道流动，假设：
1. 没有质量增加
2. 没有传质
3. 管道截面积不变

!!! formula "控制方程组"
    $$\frac{2 f}{D_{H}} dx + \frac{1}{\gamma Ma^{2}} \frac{dp}{p} + \frac{du}{u} = 0$$

    连续性方程

    $$\frac{d \rho}{\rho} + \frac{du}{u} = 0$$

    能量方程

    $$\frac{dT}{T} + (\gamma - 1) Ma^{2} \frac{du}{u} = 0$$

    状态方程

    $$\frac{dp}{p} = \frac{d\rho}{\rho} + \frac{dT}{T}$$

$$\left[ \frac{1 - Ma^2}{\gamma Ma^2} + \frac{\gamma + 1}{2 \gamma} \ln \frac{(\gamma + 1)Ma^2}{2 \left(1 + \frac{\gamma - 1}{2} Ma^2\right)} \right]_{Ma_e}^{Ma_i} = \frac{4 \bar{f} L_{\mathrm{max}}}{D_H}$$

$$M_{2}^{2} = \frac{(\gamma - 1) M_{1}^{2} + 2}{2 \gamma M_{1}^{2} - (\gamma - 1)}$$

方程化简为：

$$\frac{2\gamma}{\gamma + 1} \frac{4 \bar{f} L_{\mathrm{max}}}{D_H} = X(\lambda_i) - X(\lambda_e)$$

!!! summary "结论"
    - 对于亚声速流动：
        + 加速到临界截面，对应的管长Lmax，显然有X(1)=0，则：

            $$\frac{2\gamma}{\gamma + 1} \frac{4 \bar{f}L_{\mathrm{max}}}{D_{H}} = X(\lambda_{i})$$

        + 对应的管长Lmax，是气流顺利流动的最大长度。超过这个长度，气流无法顺利流出管道，此现象称为<b>摩擦壅塞</b>
        + 对亚声速流动，Lmax是入口马赫数的减函数。入口马赫数越高，最大管长越短
        + 出现壅塞时，扰动会传播到入口处，迫使气流发生溢流，减小流量，减小马赫数，从而使得最大管长等于实际管长
    - 对于超声速流动：
        + 当马赫数趋于无穷大时，出口为声速，则：

            $$\lim_{Ma \to \infty} \frac{4 \bar{f} L_{\max}}{D_H} = -\frac{1}{\gamma} + \frac{\gamma + 1}{2\gamma} \ln \frac{\gamma + 1}{\gamma - 1}$$

        + 对于超声速流动，发生壅塞时，扰动无法向上游传播，只有通过管内的激波调整流动，使得出口为声速，则：
## Rayleigh流动，增能管流

考虑加热情况下的管道流动，假设：

1. 没有摩擦
2. 加热不引起太大的温度变化，只考虑总温的变化
3. 管道截面积不变

!!! formula "控制方程组"
    连续性方程

    $$\frac{\mathrm{d}\rho}{\rho}+\frac{\mathrm{d}u}{u}=0$$

    状态方程

    $$\frac{\mathrm{d}p}{p}=\frac{\mathrm{d}\rho}{\rho}+\frac{\mathrm{d}T}{T}$$

$$\frac{dT_0}{T} = \frac{dT}{T} + (\gamma - 1)Ma^2 \frac{du}{u}$$

!!! summary "结论"
    1. 对于亚声速流动：加热量超过最大加热量，将出现壅塞时，扰动会传播到入口处，迫使气流发生溢流，减小流量，减小马赫数

    2. 对于超声速流动：加热量超过最大加热量，发生壅塞时，扰动无法向上游传播，会在管内出现激波，使得波后马赫数降低，激波下游允许的最大热量增加

    3. 于此类由热导致的壅塞现象，称为<b>热壅塞</b>

    

    