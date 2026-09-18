# Chap2 可压缩流体力学基础

一维情况

$$p=\rho RT$$

$$\dot{m}=\rho uA$$

其中$u$为速度，$A$为内流道面积

能量守恒方程

$$q-w=(h+\frac{u^2}{2})_o-(h+\frac{u^2}{2})_i$$

量热完全气体

$$\mathrm{d}h=c_p\mathrm{d}T$$

$$h_2-h_1=c_p(T_2-T_1)$$

给定气体常数，有

$$h=c_pT+(h_{\text{ref}}-c_pT_{ref})$$

当考虑能量变化时

滞止温度（总温）

$$T_t=T+\frac{u^2}{2c_p}$$

定义滞止焓（总焓）

$$h_t=h+\frac{u^2}{2}$$

$$h_t=c_pT_t$$

滞止压力（总压）：绝热、不作功、可逆（等熵）过程中，流速减小到零时的压力

定义质量流动参数$MFP$（$\frac{kg/s}{m^2}\frac{\sqrt{K}}{Pa}$）

$$MFP=\frac{\dot{m}}{A}\frac{\sqrt{R_t}}{p_t}=f(Ma)$$

$$\frac{A}{A^*}=\frac{\rho^*/RT^*u^*}{\rho/RTu}$$

定义冲量函数

$$I=\rho A+\dot{m}u$$

稳态动量方程

$$\boxed{\sum F=\dot{m}u_2-\dot{m}u_1}$$

$$p_1A_1-p_2A_2+F^\prime=\dot{m}u_2-\dot{m}u_1$$

$F^\prime$管道对流体的作用力