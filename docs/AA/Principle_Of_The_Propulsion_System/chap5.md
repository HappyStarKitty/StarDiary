# Chap5 化学热力学基础 火箭推进技术基础

## 化学热力学基础

碳氢燃料的化学计量

$$C_xH_y+a(O_2+3.76N_2)\rightarrow bCO_2+cH_2O+3.76aN_2$$

选用基本元素在1atm，298K下其自然存在形式下的焓为参考点$\rightarrow$标准形成焓为零

## 火箭推进技术基础

!!! definition "比冲"
    比冲：单位推进剂重量所产生的总冲量

    $$I_s=\frac{I_t}{m_pg_0}\approx\frac{u_e}{g_0}$$

火箭推进系统的动力可以来自高压气体、电能、化学能、核能等其中高压气体、电能和化学能火箭系统已经在使用

高压气体推进利用储存的高压气体（He、N2、Ar等)通过喷管产生推力，主要用于小的稳定控制系统

电能火箭推进系统包括电热系统、离子推进系统、等离子体等，其推力较小，但比冲较大，可用于卫星、星际航行等

!!! note "化学能推进"
    化学反应产生高温气体，然后膨胀加速，产生推力

    通过推进剂分类：

    - 液体：
    - 固体：
    - 混合：一般是液体氧化剂、固体燃料

发动机推力

$$F=\dot{m}_pu_e+(p_e-p_a)A_e$$

最佳推力

$$p_e=p_a$$

火箭系统总质量

$$m_0=m_{pl}+m_p+m_{dw}$$

有效载荷质量比

$$\lambda=\frac{m_{pl}}{m_0}$$

火箭系统质量比

$$MR=\frac{m_0}{m_f}=\frac{1}{\lambda+\delta}$$

速度增量

$$\Delta u=C\ln MR$$

流量函数

$$\Gamma = \sqrt{\gamma \left( \frac{2}{\gamma+1} \right)^{\frac{\gamma+1}{\gamma-1}}}$$

实际排气速度

$$u_e = \sqrt{\frac{2\gamma}{\gamma-1} R T_c \left[ 1 - \left( \frac{p_e}{p_c} \right)^{\frac{\gamma-1}{\gamma}} \right]}$$

最佳推力（完全膨胀）

$$F_{opt} = p_c A_{th} \Gamma \sqrt{\frac{2\gamma}{\gamma-1} \left[ 1 - \left( \frac{p_a}{p_c} \right)^{\frac{\gamma-1}{\gamma}} \right]}$$


$$F_{max} = p_c A_{th} \Gamma \sqrt{\frac{2\gamma}{\gamma-1}}$$


$$C_i^* = \frac{\sqrt{R T_c}}{\Gamma}$$

$$C_x^* = \frac{p_c A_{th}}{\dot{m}_p}$$