# Chap12 正激波

## 正激波的基本方程

!!! formula "基本方程"
    连续性方程

    $$\rho_1u_1=\rho_2u_2$$

    动量方程

    $$p_1+\rho_1 u_1^2=p_2+\rho_2u^2$$

    能量方程

    $$\frac{\gamma R}{\gamma-1}T_1+\frac{1}{2}u_1^2=\frac{\gamma R}{\gamma-1}T_2+\frac{1}{2}u_2^2$$

    状态方程

    $$p_2=\rho_2 RT_2$$

    $$a=\sqrt{\gamma RT}$$

    $$M=u/a$$

!!! formula "激波前后参数关系式"
    马赫数关系

    $$M_{2}^{2} = \frac{(\gamma-1)M_{1}^{2}+2}{2\gamma M_{1}^{2}-(\gamma-1)}$$

    密度关系

    $$\frac{\rho_2}{\rho_1} = \frac{(\gamma + 1) M_1^2}{(\gamma - 1) M_1^2 + 2}$$

    温度关系

    $$\frac{T_{2}}{T_{1}} = (2\gamma M_{1}^{2} - \gamma + 1) \frac{(\gamma - 1)M_{1}^{2} + 2}{(1 + \gamma)^{2} M_{1}^{2}}$$

    压力关系

    $$\frac{p_{2}}{p_{1}} = \frac{\rho_{2}}{\rho_{1}} \frac{T_{2}}{T_{1}} = 1 + \frac{2\gamma}{\gamma + 1}(M_{1}^{2} - 1)$$

    其中，温度、密度、压力的关系又称为<b>Rankine-Hugonio(兰金-雨贡涅)关系式</b>，简称<b>R-H关系式</b>

临界马赫数

$$Ma^{*2} = \frac{(\gamma + 1) Ma^{2}}{2 + Ma^{2} (\gamma - 1)}$$

!!! formula "普朗特关系式"
    $$\boxed{a^{*2}=u_1u_2}$$

    普朗特关系式直接描述了激波前后的速度关系，对于正激波，波后的气流永远是亚声速的

!!! note "正激波前后的滞止参数变化"
    总温关系

    $$T_{0,1}=T_{0,2}$$

    总压关系

    $$\frac{p_{0,2}}{p_{0,1}}=e^{-(s_2-s_1)/R}$$

## 正激波理论的应用

亚声速可压缩流

$$u_{1}^{2} = \frac{2a_{1}^{2}}{\gamma - 1} \left[ \left( \frac{p_{0,1}}{p_{1}} \right)^{(\gamma - 1)/\gamma} - 1 \right]$$

超声速可压缩流

$$\frac{p_{0,2}}{p_1} = \left( \frac{(\gamma + 1)^2 M_1^2}{4\gamma M_1^2 - 2(\gamma - 1)} \right)^{\gamma/(\gamma - 1)} \frac{1 - \gamma + 2\gamma M_1^2}{\gamma + 1}$$

雷利皮托管公式，将皮托管测得的总压$p_{0,2}$和自由来流静压$p_1$与自由来流马赫数$M_1$联系起来

